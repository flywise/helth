import 'dart:convert';

import 'package:heath/all_screens/home_page/edit_profiles/save_profiles/save_profile_model.dart';
import 'package:heath/all_screens/home_page/home_page_details/banner/home_page_detail_model.dart';
import 'package:heath/all_screens/home_page/home_page_details/disease/get_disease_model.dart';
import 'package:heath/all_screens/home_page/home_page_details/profile/get_profile_model.dart';
import 'package:heath/all_screens/home_page/home_page_details/top_package/top_packages_model.dart';
import 'package:heath/all_screens/home_page/profile_pages/rating_review_pages/rating_rev_model/rating_review_model.dart';
import 'package:heath/all_screens/home_page/profile_pages/support_brand/support_brand_model.dart';
import 'package:heath/all_screens/home_page/user_comments/user_comment_model.dart';
import 'package:heath/drawer_screen/book_appointment_screens/book_appoit_all_cat_controller/review_screens/model/pakages_model.dart';
import 'package:heath/drawer_screen/book_appointment_screens/model/bookapt_all_cat_model.dart';
import 'package:heath/drawer_screen/my_prescriptions/prescriptions_model.dart';
import 'package:heath/drawer_screen/my_receipt/my_receipt_model.dart';
import 'package:heath/drawer_screen/my_report/my_reports_model.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class ApiProvider{
  static var baseUrl = 'https://health-12.herokuapp.com/';
  static String token = '';

  //from here login mobile with otp

  static loginMobileOtp(var mobile) async{
    var url = baseUrl+'api/sendotp';
    var body = {
      'number' : mobile,
    };
    http.Response r = await http.post(Uri.parse(url),body: body);
    print(r.body);
    if(r.statusCode == 201){

      return r;
    }
    else{
      //show error message
      Get.snackbar('Error', 'Login Failed');
      return null;
    }
  }


  // from here verify otp.........................................

  static verifyOTP(var mobile,var otp) async {
    var url = baseUrl+'api/verifyOtp';
    var body = {
      'number' : mobile,
      'otp' :otp,
    };
    http.Response r = await http.post(Uri.parse(url),body: body);
    print(r.body);
    if(r.statusCode == 200) {
      var data = json.decode(r.body)['message'];
      var prefs = GetStorage();
      prefs.write ("token",json.decode(r.body)['token']);
      token = prefs.read("token");
      return r;
    }
    else {
      Get.snackbar('Error', 'Wrong Otp');
      return null;
    }
  }

  //add user Api..........................................................

  static addUser(var name,var email, var age, var gender) async {
    var url = baseUrl + 'api/adduser';
    var headers = {
      'Authorization': 'Bearer $token'
    };
    var body = {
      'name' : name,
      'email' : email,
      'age' : age,
      "gender":gender,
    };

    http.Response r = await http.post(Uri.parse(url),body: body,headers: headers);
    print(r.body);
    if(r.statusCode == 200) {
      return r;
    }
    else {
      Get.snackbar('Error', 'Details');
      return null;
    }
  }

  //put edit profile........................................................


  static editProfileApi( var name, var email,var number,var path) async {
    var url = baseUrl + 'api/updateuser';
    print(token);
    try{
      var headers = {
        'Authorization': 'Bearer $token'
      };
      var request = http.MultipartRequest('PUT', Uri.parse(url));
      request.fields.addAll({
        'name': name,
        'age': '21',
        'gender': 'male',
        'email': email,
      });
      request.files.add(await http.MultipartFile.fromPath('image', path));
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();
      http.Response r = await http.Response.fromStream(response);
      print(r.reasonPhrase);
      return r;

    }

    catch(err){
      print(err);
    }



  }

  //add rating Review page.................................................................

  static addRatingReviewApi(var rating, var package, var review) async {

    var url = baseUrl + 'api/addrating';
    var headers = {
      'Authorization': 'Bearer $token'
    };
    var body = {
      'rating' : rating,
      'package' : package,
      'review' : review,

    };

    http.Response r = await http.post(Uri.parse(url),body: body,headers: headers);
    print(r.body);
    if(r.statusCode == 200) {
      return r;
    }
    else {
      Get.snackbar('Error', 'Details');
      return null;
    }

  }


  //add member........................

  static addMemberApi(var bookingdate,var bookingTime,var patient,var name,var patientNumber,var package,var relation,var DOB,var gender,var number,var email) async {

    var url = baseUrl + 'api/addbooking';
    var headers = {
      'Authorization': 'Bearer $token'
    };
    var body = {
      "bookingdate": "$bookingdate",
      "bookingtime": "$bookingTime",
      "patientname":"$patient",
      "patientnumber":"$patientNumber",
      "package":"$package",
      'name' : "$name",
      'relation' : "$relation",
      'DOB' : "$DOB",
      'gender' :"$gender",
      'number' : "$number",
      'email' : "$email",

    };
    http.Response r = await http.post(Uri.parse(url),body: body,headers: headers);
    print(r.body);
    if(r.statusCode == 200) {
      return r;
    }
    else {
      Get.snackbar('Error', 'Details');
      return null;
    }
  }



  //get all categary  in book appintment.................................

  static  getallcategory() async{
    var url = baseUrl + 'api/getallcategory';
    var headers = {
      'Authorization': 'Bearer $token'
    };
    try{
      http.Response r =await http.get(Uri.parse(url),headers: headers);
      print(r.body.toString());
      if(r.statusCode==200){
        GetAllcategory getAllcategory = getAllcategoryFromJson(r.body);
        return getAllcategory.getallcategory;
      }
    }
    catch(err){
      return;
    }
  }


  //get all user Api.............................

  static  getalluserApi()
  async {
    var headers = {
      'Authorization': 'Bearer $token'
    };

    var url = baseUrl + 'api/getuser';
    http.Response r = await http.get(Uri.parse(url),headers: headers);
    print(r.body.toString());
    return r;
  }
  // async{
  //   var url = baseUrl + 'api/getuser';
  //   var headers = {
  //     'Authorization': 'Bearer $token'
  //   };
  //   try{
  //     http.Response r =await http.get(Uri.parse(url),headers: headers);
  //     //print(r.body.toString());
  //     if(r.statusCode==200){
  //       return getUserModelFromJson(r.body).getuser;
  //     }
  //   }
  //   catch(err){
  //     print(err);
  //     return [];
  //   }
  //
  // }

  //Get rating review Api........................

  static getrattintreview() async {
    var url = baseUrl + 'api/getrating';
    try{
      var headers = {
        'Authorization': 'Bearer $token'
      };
      var request = http.Request('GET', Uri.parse('https://health-12.herokuapp.com/api/getrating'));

      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();
      http.Response r = await http.Response.fromStream(response);
      print(r.body.toString());
      if(r.statusCode == 200) {
        RatingReviewModel getRatingreviewModel = ratingReviewModelFromJson(r.body);
        return getRatingreviewModel.viewrating;
      }
    }
    catch(err){
    }

  }



  //from here get all reports......................................................

  static  getreports() async{
    var url = baseUrl + 'api/getreport';
    var headers = {
      'Authorization': 'Bearer $token'
    };
    try{
      http.Response r =await http.get(Uri.parse(url),headers: headers);
      print(r.body.toString());
      if(r.statusCode==200){
        //if it is a list then it will  be set on list  please mind it................
        List<GetReports> getReports = getReportsFromJson(r.body) ;
        return getReports;
      }
    }
    catch(error){
      return;
    }
  }


  //getsupport Brand Api.....................................................................

  static getsupportbrandApi() async {
    var url = baseUrl + 'api/getBrand';
    var headers = {
      'Authorization': 'Bearer $token'
    };
    try{
      http.Response r =await http.get(Uri.parse(url),headers: headers);
      print(r.body.toString());
      if(r.statusCode==200){
        //if it is a list then it will  be set on list  please mind it................
        List<GetSupportBrandModel> getSupport = getSupportBrandModelFromJson(r.body) ;
        return getSupport;
      }
    }
    catch(error){
      return;
    }

  }


//get all user commentsApi.....................................................

  static getusercommentApi() async{
    var url = baseUrl + 'api/getcomment';
    var headers = {
      'Authorization': 'Bearer $token'
    };
    try{
      http.Response r =await http.get(Uri.parse(url),headers: headers);
      print(r.body.toString());
      if(r.statusCode==200){
        //if it is not not  a list then it will  be set on list  please mind it................
        GetUserCommentsModel getUsercomment = getUserCommentsModelFromJson(r.body);
        return r;
      }
    }
    catch(error){
      return;
    }


  }




  //get receipt.....................................

  static getreceipt() async {
    var url = baseUrl + 'api/getreceipt';
    var headers = {
      'Authorization': 'Bearer $token'
    };
    try{
      http.Response r =await http.get(Uri.parse(url),headers: headers);
      print(r.body.toString());
      if(r.statusCode==200){
        //if it is a list then it will  be set on list  please mind it................
        List<GetReceiptModel> getreceipt =  getReceiptModelFromJson(r.body);
        return getreceipt;
      }
    }
    catch(error){
      return;
    }
  }

  //get Banner API.......................................................
  static getbannerApi() async{
    var url = baseUrl + 'api/getbanner';
    // var headers = {
    //   'Authorization': 'Bearer $token'
    // };

    try{
      http.Response r = await http.get(Uri.parse(url));
      print(r.body.toString());
      if(r.statusCode == 200) {
        //list is here
        List<HomepageDetailsModel> getbanner = homepageDetailsModelFromJson(r.body);
        return getbanner;
      }
    }
    catch(error) {
      return;
    }
  }

  //get my profile api in home page details page...........
  //here if we don't have token apply this method.....

  static getmyprofileApi() async {
    var url = baseUrl + 'api/getprofile';

    try{
      http.Response r = await http.get(Uri.parse(url));
      print(r.body.toString());
      if(r.statusCode == 200) {

        List<GetProfileModel> getprofile = getProfileModelFromJson(r.body);
        return getprofile;
      }
    }
    catch (error) {
      return;
    }
  }

  //get disease method.........................................
  static getdiseaseApi() async {
    var url = baseUrl + 'api/getdisease';

    try {
      http.Response r = await http.get(Uri.parse(url));
      print(r.body.toString());
      if(r.statusCode ==200) {

        List<GetDiseaseModel> getdisease = getDiseaseModelFromJson(r.body);
        return getdisease;
      }
    }
    catch (error) {
      return;
    }
  }

  //get top packages...............................................
  static gettoppackagesApi() async{
    var url = baseUrl + 'api/getpackage';

    try {
      http.Response r = await http.get(Uri.parse(url));
      print(r.body.toString());
      if(r.statusCode == 200) {

        List<GetTopPackagesModel> gettoppackages = getTopPackagesModelFromJson(r.body);
        return gettoppackages;
      }
    }
    catch (error) {
      return;
    }
  }


  //get prescriptions......................................

  static getprescription() async {
    var url = baseUrl  + 'api/getpriscription';
    var headers = {
      'Authorization': 'Bearer $token'
    };
    try{
      http.Response r =await http.get(Uri.parse(url),headers: headers);
      print(r.body.toString());
      if(r.statusCode==200){
        //if it is a list then it will  be set on list  please mind it................
        List<GetprescriptionModel> getprescription =  getprescriptionModelFromJson(r.body);
        return getprescription;
      }
    }
    catch(error){
      return;
    }
  }

  //get all packages...................

  static getAllpackage() async {
    var url = baseUrl + 'api/getpackage/61fa2001c4752f63923982a8';


    try {
      http.Response r = await http.get(Uri.parse(url));
      print(r.body.toString());
      if(r.statusCode==200) {
        GetPackages getPackages = getPackagesFromJson(r.body);
        return getPackages;
      }
    }
    catch(err) {
      return;
    }
  }




}