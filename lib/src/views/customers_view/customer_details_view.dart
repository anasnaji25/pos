import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/src/const/app_colors.dart';
import 'package:pos/src/const/app_fonts.dart';
import 'package:pos/src/widgets/customer_widgets/customer_details_fields.dart';

class CustomerDetailsView extends StatefulWidget {
  String title;
  CustomerDetailsView({super.key, required this.title});

  @override
  State<CustomerDetailsView> createState() => _CustomerDetailsViewState();
}

class _CustomerDetailsViewState extends State<CustomerDetailsView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Container(
          decoration: BoxDecoration(
              color: primaryColor, borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: [
              AppBar(
                backgroundColor: primaryColor,
                elevation: 0,
                leading: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(Icons.arrow_back_ios_sharp)),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(
                          Icons.save,
                          color: Colors.white,
                        )),
                  )
                ],
                title: Text(
                  widget.title,
                  style: primaryFont.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                centerTitle: true,
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          CustomerDetailsField(
            titile: "Address",
          ),
          const SizedBox(
            height: 10,
          ),
          CustomerDetailsField(
            titile: "Location",
          ),
          const SizedBox(
            height: 10,
          ),
          CustomerDetailsField(
            titile: "Postal Code",
          ),
          const SizedBox(
            height: 10,
          ),
          CustomerDetailsField(
            titile: "Telephone",
          ),
          const SizedBox(
            height: 10,
          ),
          CustomerDetailsField(
            titile: "Phone Number",
          ),
          const SizedBox(
            height: 10,
          ),
          CustomerDetailsField(
            titile: "Fax",
          ),
          const SizedBox(
            height: 10,
          ),
          CustomerDetailsField(
            titile: "Web Address",
          ),
          const SizedBox(
            height: 10,
          ),
          CustomerDetailsField(
            titile: "District",
          ),
          const SizedBox(
            height: 10,
          ),
          CustomerDetailsField(
            titile: "Tax ID",
          ),
          const SizedBox(
            height: 10,
          ),
          CustomerDetailsField(
            titile: "Price List",
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
