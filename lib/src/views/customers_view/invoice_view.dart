import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/src/const/app_colors.dart';
import 'package:pos/src/const/app_fonts.dart';
import 'package:pos/src/widgets/customer_widgets/invoice_row_widget.dart';
import 'package:pos/src/widgets/customer_widgets/invoice_total_row.dart';

class InvoiceView extends StatefulWidget {
  const InvoiceView({super.key});

  @override
  State<InvoiceView> createState() => _InvoiceViewState();
}

class _InvoiceViewState extends State<InvoiceView> {
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
                          // Get.back();
                        },
                        child: const Icon(
                          Icons.download,
                          color: Colors.white,
                        )),
                  )
                ],
                title: Text(
                  "Invoice",
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 45,
                width: size.width * 0.4,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.7),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                          )),
                      alignment: Alignment.center,
                      child: Text(
                        "TIPO:",
                        style:
                            primaryFont.copyWith(fontWeight: FontWeight.w600),
                      ),
                    )),
                    Expanded(
                        flex: 2,
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              )),
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "FA ",
                                style: primaryFont.copyWith(
                                    fontWeight: FontWeight.w600),
                              ),
                              const Icon(Icons.keyboard_arrow_down_rounded)
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              Container(
                height: 45,
                width: size.width * 0.4,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.7),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                          )),
                      alignment: Alignment.center,
                      child: Text(
                        "Number:".toUpperCase(),
                        style: primaryFont.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 11),
                      ),
                    )),
                    Expanded(
                        flex: 2,
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              )),
                          alignment: Alignment.center,
                          child: Text(
                            "0096".toUpperCase(),
                            style: primaryFont.copyWith(
                                fontWeight: FontWeight.w600, fontSize: 13),
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 45,
                width: size.width * 0.4,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.7),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                          )),
                      alignment: Alignment.center,
                      child: Text(
                        "Serie:".toUpperCase(),
                        style:
                            primaryFont.copyWith(fontWeight: FontWeight.w600),
                      ),
                    )),
                    Expanded(
                        flex: 2,
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              )),
                          alignment: Alignment.center,
                          child: Text(
                            "2022",
                            style: primaryFont.copyWith(
                                fontWeight: FontWeight.w600),
                          ),
                        ))
                  ],
                ),
              ),
              Container(
                height: 45,
                width: size.width * 0.4,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.7),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                          )),
                      alignment: Alignment.center,
                      child: Text(
                        "DATE:".toUpperCase(),
                        style: primaryFont.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 11),
                      ),
                    )),
                    Expanded(
                        flex: 2,
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              )),
                          alignment: Alignment.center,
                          child: Text(
                            "26-12-2022".toUpperCase(),
                            style: primaryFont.copyWith(
                                fontWeight: FontWeight.w600, fontSize: 13),
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 50,
            color: Colors.grey.withOpacity(0.2),
            child: Row(
              children: [
                Container(
                  width: 80,
                  alignment: Alignment.center,
                  child: Text(
                    "Item",
                    style: primaryFont.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  height: 50,
                  width: 1,
                  color: Colors.grey.withOpacity(0.7),
                ),
                Container(
                  width: 60,
                  alignment: Alignment.center,
                  child: Text(
                    "Qty",
                    style: primaryFont.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  height: 50,
                  width: 1,
                  color: Colors.grey.withOpacity(0.7),
                ),
                Container(
                  width: 90,
                  alignment: Alignment.center,
                  child: Text(
                    "Unit Price",
                    style: primaryFont.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  height: 50,
                  width: 1,
                  color: Colors.grey.withOpacity(0.7),
                ),
                Container(
                  width: 60,
                  alignment: Alignment.center,
                  child: Text(
                    "CVA",
                    style: primaryFont.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  height: 50,
                  width: 1,
                  color: Colors.grey.withOpacity(0.7),
                ),
                Container(
                  width: 90,
                  alignment: Alignment.center,
                  child: Text(
                    "Total Value",
                    style: primaryFont.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  width: 80,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "100011",
                        style: primaryFont.copyWith(
                            fontSize: 13, fontWeight: FontWeight.w600),
                      ),
                      Icon(Icons.keyboard_arrow_down_rounded)
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 1,
                  color: Colors.grey.withOpacity(0.7),
                ),
                Container(
                  width: 60,
                  alignment: Alignment.center,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    style: primaryFont.copyWith(
                        fontSize: 13, fontWeight: FontWeight.w600),
                    decoration: InputDecoration.collapsed(hintText: "5"),
                  ),
                ),
                Container(
                  height: 50,
                  width: 1,
                  color: Colors.grey.withOpacity(0.7),
                ),
                Container(
                  width: 90,
                  alignment: Alignment.center,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    style: primaryFont.copyWith(
                        fontSize: 13, fontWeight: FontWeight.w600),
                    decoration: InputDecoration.collapsed(hintText: "300"),
                  ),
                ),
                Container(
                  height: 50,
                  width: 1,
                  color: Colors.grey.withOpacity(0.7),
                ),
                Container(
                  width: 60,
                  alignment: Alignment.center,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    style: primaryFont.copyWith(
                        fontSize: 13, fontWeight: FontWeight.w600),
                    decoration: InputDecoration.collapsed(hintText: "7"),
                  ),
                ),
                Container(
                  height: 50,
                  width: 1,
                  color: Colors.grey.withOpacity(0.7),
                ),
                Container(
                  width: 90,
                  alignment: Alignment.center,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    style: primaryFont.copyWith(
                        fontSize: 13, fontWeight: FontWeight.w600),
                    decoration: InputDecoration.collapsed(hintText: "1710"),
                  ),
                ),
              ],
            ),
          ),
          InvoiceRow(
            color: Colors.grey.withOpacity(0.2),
          ),
           InvoiceRow(
            color: Colors.white,
          ),
          InvoiceRow(
            color: Colors.grey.withOpacity(0.2),
          ),
          InvoiceRow(
            color: Colors.white,
          ),
          InvoiceRow(
            color: Colors.grey.withOpacity(0.2),
          ),
          InvoiceRow(
            color: Colors.white,
          ),
          InvoiceTotalRow(
            color: Colors.grey.withOpacity(0.2),
          ),
          
        ],
      ),
    );
  }
}
