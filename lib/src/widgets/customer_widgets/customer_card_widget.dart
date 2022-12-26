import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/src/const/app_fonts.dart';
import 'package:pos/src/views/customers_view/customer_details_view.dart';
import 'package:pos/src/views/customers_view/invoice_view.dart';

class CustomerCardWidget extends StatelessWidget {
  String name;
  CustomerCardWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: InkWell(
        onTap: () {
          Get.to(() => InvoiceView());
        },
        child: Container(
          height: 70,
          width: size.width,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(blurRadius: 3, color: Colors.grey.withOpacity(0.5))
          ], borderRadius: BorderRadius.circular(15), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      CupertinoIcons.person_circle_fill,
                      size: 48,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: primaryFont.copyWith(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          Text(
                            "90*******87",
                            style: primaryFont.copyWith(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => CustomerDetailsView(
                          title: "Customer Details",
                        ));
                  },
                  child: Image.asset(
                    "assets/icons/edit_icon.png",
                    height: 17,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
