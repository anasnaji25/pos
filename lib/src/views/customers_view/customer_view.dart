import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/src/const/app_colors.dart';
import 'package:pos/src/const/app_fonts.dart';
import 'package:pos/src/views/customers_view/customer_details_view.dart';

import '../../widgets/customer_widgets/customer_card_widget.dart';

class CustomerSView extends StatefulWidget {
  const CustomerSView({super.key});

  @override
  State<CustomerSView> createState() => _CustomerSViewState();
}

class _CustomerSViewState extends State<CustomerSView> {
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
                  "Customers",
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
                          onTap: (){
                            Get.to(()=> CustomerDetailsView(title: "New Customer"));
                          },
                          child: Image.asset("assets/icons/profileadd.png",height: 25,fit: BoxFit.fitHeight,)),
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
                              hintText: "Search Customers",
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
            height: 20,
          ),
          CustomerCardWidget(
            name: "Zavir",
          ),
          const SizedBox(
            height: 15,
          ),
          CustomerCardWidget(
            name: "Mr.x",
          ),
          const SizedBox(
            height: 15,
          ),
          CustomerCardWidget(
            name: "Mr.Y",
          ),
          const SizedBox(
            height: 15,
          ),
          CustomerCardWidget(
            name: "Mr.xy",
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
