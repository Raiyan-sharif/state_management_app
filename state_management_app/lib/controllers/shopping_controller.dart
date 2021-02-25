import 'package:get/get.dart';
import 'package:state_management_app/models/product.dart';
import 'package:flutter/material.dart';

class ShoppingController extends GetxController {
  var products = List<Product>().obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }


  void fetchProducts() async{
     await Future.delayed(Duration(seconds: 1));
     var productResponse = [
       Product(
         id: 1,
         price: 30,
         productDescription: "Some Description about the product",
         productImage: "abc",
         productName: "FirstProd"
       ),
       Product(
           id: 2,
           price: 50,
           productDescription: "Some Description about the product",
           productImage: "abc",
           productName: "SecondProd"
       ),
       Product(
           id: 3,
           price: 30,
           productDescription: "Some Description about the product",
           productImage: "abc",
           productName: "FirstProd"
       ),
       Product(
           id: 4,
           price: 40,
           productDescription: "Some Description about the product",
           productImage: "abc",
           productName: "SecondProd"
       ),
       Product(
           id: 5,
           price: 120,
           productDescription: "Some Description about the product",
           productImage: "abc",
           productName: "FirstProd"
       ),
       Product(
           id: 6,
           price: 190,
           productDescription: "Some Description about the product",
           productImage: "abc",
           productName: "SecondProd"
       ),
     ];

     products.value = productResponse;
  }

}