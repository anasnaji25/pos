import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/src/const/app_colors.dart';
import 'package:pos/src/const/app_fonts.dart';
import 'package:pos/src/widgets/customer_widgets/customer_details_fields.dart';
import 'package:pos/src/widgets/item_details_widgets/item_row_text_field.dart';

class ItemDetailsView extends StatefulWidget {
  String title;
  ItemDetailsView({super.key, required this.title});

  @override
  State<ItemDetailsView> createState() => _ItemDetailsViewState();
}

class _ItemDetailsViewState extends State<ItemDetailsView> {
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
            titile: "Item",
          ),
          const SizedBox(
            height: 10,
          ),
          CustomerDetailsField(
            titile: "Description",
          ),
          const SizedBox(
            height: 10,
          ),
          CustomerDetailsField(
            titile: "IVA",
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Sale Pr.in the AKZ currency",
              style: primaryFont.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ItemRowTextField(
            title: "RSP 1:",
          ),
          const SizedBox(
            height: 10,
          ),
          ItemRowTextField(
            title: "RSP 2:",
          ),
          const SizedBox(
            height: 10,
          ),
          ItemRowTextField(
            title: "RSP 3:",
          ),
          const SizedBox(
            height: 10,
          ),
          ItemRowTextField(
            title: "RSP 4:",
          ),
          const SizedBox(
            height: 10,
          ),
          ItemRowTextField(
            title: "RSP 5:",
          ),
          const SizedBox(
            height: 10,
          ),
          CustomerDetailsField(
            titile: "Farmula",
          ),
          const SizedBox(
            height: 10,
          ),
          CustomerDetailsField(
            titile: "Subfarmula",
          ),
          const SizedBox(
            height: 10,
          ),
          CustomerDetailsField(
            titile: "Marca",
          ),
          const SizedBox(
            height: 10,
          ),
          CustomerDetailsField(
            titile: "Modelo",
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Moving Units",
              style: primaryFont.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ItemRowTextField(
            title: "Base :",
          ),
          const SizedBox(
            height: 10,
          ),
          ItemRowTextField(
            title: "Compra :",
          ),
          const SizedBox(
            height: 10,
          ),
          ItemRowTextField(
            title: "Venda :",
          ),
          const SizedBox(
            height: 10,
          ),
          ItemRowTextField(
            title: "Entrada :",
          ),
          const SizedBox(
            height: 10,
          ),
          ItemRowTextField(
            title: "Saida :",
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
