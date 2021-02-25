import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_app/controllers/shopping_controller.dart';

class ShoppingPage extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: GetX<ShoppingController>(

                  builder: (controller) {
                    return ListView.builder(
                        itemCount: controller.products.length,
                        itemBuilder: (context, index){
                      return Card(
                        margin: EdgeInsets.all(12),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${controller.products[index].productName}',
                                        style: TextStyle(fontSize: 24),
                                      ),
                                      Text('${controller.products[index].productDescription}'),
                                    ],
                                  ),
                                  Text(
                                    '\$${controller.products[index].price}',
                                    style: TextStyle(fontSize: 24),

                                  ),
                                ],
                              ),
                              RaisedButton(onPressed: (){


                              },
                                color: Colors.blue,
                                textColor: Colors.white,
                                child: Text('Add To Cart'),

                              ),

                            ],
                          ),
                        ),
                      );
                    });
                  }
                ),


              ),
              Text('Total amount: '),
              SizedBox(height: 100,),
            ],
          ),
        ));
  }
}
