import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pos/src/const/app_colors.dart';
import 'package:pos/src/const/app_fonts.dart';
import 'package:pos/src/controllers/home_controllers.dart';
import 'package:pos/src/views/home_view/home_navigation_bar.dart';
import 'package:pos/src/views/item_details_view/item_details_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child: Container(
          decoration: BoxDecoration(
              color: primaryColor, borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: [
              AppBar(
                backgroundColor: primaryColor,
                elevation: 0,
                title: Text(
                  "Dashboard".toUpperCase(),
                  style: primaryFont.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                centerTitle: true,
                actions: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: InkWell(
                            onTap: () {
                              Get.to(
                                  () => ItemDetailsView(title: "Item Details"));
                            },
                            child: Image.asset(
                              "assets/icons/boxadd.png",
                              height: 25,
                              fit: BoxFit.fitHeight,
                            )),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: 50,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Icon(Icons.search),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration.collapsed(
                              hintText: "Search",
                              hintStyle: primaryFont.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Container(
              height: 180,
              width: size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color.fromARGB(255, 103, 66, 206),
                        Color(0xFF4000F6),
                      ])),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Sales",
                          style: primaryFont.copyWith(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "\$12,000",
                          style: primaryFont.copyWith(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "100,000",
                              style: primaryFont.copyWith(
                                  color: Colors.white, fontSize: 9),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "10,000",
                              style: primaryFont.copyWith(
                                  color: Colors.white, fontSize: 9),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "1000",
                              style: primaryFont.copyWith(
                                  color: Colors.white, fontSize: 9),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "100",
                              style: primaryFont.copyWith(
                                  color: Colors.white, fontSize: 9),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "10",
                              style: primaryFont.copyWith(
                                  color: Colors.white, fontSize: 9),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "0",
                              style: primaryFont.copyWith(
                                  color: Colors.white, fontSize: 9),
                            )
                          ],
                        ),
                        Image.asset(
                          "assets/icons/graph.png",
                          height: 135,
                          fit: BoxFit.fitHeight,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: InkWell(
              onTap: () {
                Get.offAll(() => HomePageWithNavigation(
                      index: 2,
                    ));
              },
              child: Container(
                height: 60,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 2, color: Colors.grey.withOpacity(0.2))
                    ],
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 8, top: 5, bottom: 5),
                          child: Container(
                            height: 60,
                            width: 55,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: primaryColor),
                            child: Image.asset("assets/icons/bag_igon.png"),
                          ),
                        ),
                        Text(
                          "Orders",
                          style: primaryFont.copyWith(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Obx(
            () => Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: InkWell(
                onTap: () {
                  homeController
                      .isRecentShown(!homeController.isRecentShown.value);
                },
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2, color: Colors.grey.withOpacity(0.2))
                      ],
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Recent Orders",
                                style: primaryFont.copyWith(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: homeController.isRecentShown.isTrue
                                  ? Icon(
                                      Icons.keyboard_arrow_up_rounded,
                                      size: 35,
                                    )
                                  : Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      size: 35,
                                    ),
                            )
                          ],
                        ),
                        if (homeController.isRecentShown.isTrue)
                          Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          CupertinoIcons.person_circle_fill,
                                          size: 33,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Zavir",
                                          style: primaryFont.copyWith(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "\$9150",
                                      style: primaryFont.copyWith(
                                          color: Colors.green,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          CupertinoIcons.person_circle_fill,
                                          size: 33,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Zavir",
                                          style: primaryFont.copyWith(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "\$9150",
                                      style: primaryFont.copyWith(
                                          color: Colors.green,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          CupertinoIcons.person_circle_fill,
                                          size: 33,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Zavir",
                                          style: primaryFont.copyWith(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "\$9150",
                                      style: primaryFont.copyWith(
                                          color: Colors.green,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          CupertinoIcons.person_circle_fill,
                                          size: 33,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Zavir",
                                          style: primaryFont.copyWith(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "\$9150",
                                      style: primaryFont.copyWith(
                                          color: Colors.green,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
