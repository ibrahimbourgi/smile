import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smile/controller/product_controller.dart';
import 'package:smile/core/constant/theme.dart';
import 'package:smile/data/model/products_api_model.dart';
import 'package:smile/view/screen/auth/main_screen/profile_screen.dart';

class CardItems extends StatelessWidget {
  CardItems({Key? key}) : super(key: key);

  ///Binding m3 istaz wael lezem 8ayira aw b5aliha 7assab lchare7 w kif bade ifhama
  final controller = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (controller.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return GridView.builder(
              itemCount: controller.productList.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  childAspectRatio: 0.7,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 0.0,
                  maxCrossAxisExtent: 200),
              itemBuilder: (context, index) {
                return buildCardItems(
                    images: controller.productList[index].image,
                    rate: controller.productList[index].rating.rate,
                    price: controller.productList[index].price,
                    title: controller.productList[index].title,
                    onTap: () {});
              });
        }
      },
    );
  }

  Widget buildCardItems({
    required String images,
    required double rate,
    required double price,
    required String title,
    required Function() onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, bottom: 5),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: mainColor),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          // color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    // border: Border.all(color: mainColor),
                    color: mainColor,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(images),
                      fit: BoxFit.fill,
                    ),
                    boxShadow: const [
                      BoxShadow(
                          spreadRadius: 0,
                          blurRadius: 0,
                          color: Color.fromARGB(0, 219, 7, 7)),
                    ],
                  ),
                ),
                //////Favoeits********************
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin:
                            const EdgeInsets.only(top: 6, right: 6, left: 6),
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color.fromARGB(135, 46, 45, 45)),
                        child: const Icon(
                          Icons.shopping_cart_outlined,
                          size: 20,
                          color: mainColor,
                        )),
                    Container(
                        margin: const EdgeInsets.only(top: 6, right: 6),
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color.fromARGB(135, 46, 45, 45)),
                        child: const Icon(
                          Icons.favorite_border_outlined,
                          size: 20,
                          color: mainColor,
                        )),
                  ],
                ),
              ]),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 5,
                    left: 10,
                    right: 10,
                  ),
                  color: Colors.transparent,
                  alignment: Alignment.topLeft,
                  child: Text(
                    title,
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.only(top: 0, left: 10, right: 10),
                  color: Colors.transparent,
                  alignment: Alignment.topLeft,
                  child: Text(
                    title,
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis, //lwade3 siye lil5at

                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      color: Colors.transparent,
                      alignment: Alignment.topLeft,
                      child: Text(
                        '$price \$',
                        style: const TextStyle(
                            color: mainColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        right: 5,
                        left: 5,
                      ),
                      margin: const EdgeInsets.only(right: 10, bottom: 12),
                      decoration: BoxDecoration(
                        border: Border.all(color: mainColor),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                              right: 5,
                              left: 5,
                            ),
                            color: Colors.transparent,
                            alignment: Alignment.topLeft,
                            child: Text(
                              '$rate',
                              style: const TextStyle(
                                color: mainColor,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Container(
                              padding: const EdgeInsets.only(top: 3),
                              color: Colors.transparent,
                              alignment: Alignment.topLeft,
                              child: const Icon(
                                Icons.star,
                                size: 18,
                                color: mainColor,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
