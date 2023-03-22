import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shipment_app/app/modules/new_order/controllers/newOrder_controller.dart';
import 'package:shipment_app/app/utils/validators.dart';
import 'package:shipment_app/app/widgets/custom_text_field.dart';


class NewOrderForm extends GetView<NewOrderController> {
  const NewOrderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.newOrderFormKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            controller: controller.fullNameController,
            title: 'Full Name',
            titleHeight: 4.5.h,
            maxLines: 1,
            validator: Validators.userName,
          ),
          CustomTextField(
            controller: controller.addressController,
            title: 'Address',
            titleHeight: 4.5.h,
            maxLines: 1,
            validator: Validators.address,
          ),
          CustomTextField(
            controller: controller.productNameController,
            title: 'Product Name',
            titleHeight: 4.5.h,
            maxLines: 1,
            validator: Validators.userName,
          ),
          CustomTextField(
            controller: controller.descriptionController,
            title: 'Description',
            titleHeight: 4.5.h,
            maxLines: 7,
            minLines: 7,
          ),
          SizedBox(
            height: 150.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextField(
                  width: 90.w,
                  controller: controller.productCountController,
                  title: 'Count',
                  titleHeight: 4.5.h,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  textInputType: TextInputType.phone,
                  validator: Validators.count,
                ),
                CustomTextField(
                  width: 90.w,
                  controller: controller.productColorController,
                  title: 'Color',
                  titleHeight: 4.5.h,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                ),
                CustomTextField(
                  width: 90.w,
                  controller: controller.productSizeController,
                  title: 'Size',
                  titleHeight: 4.5.h,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          CustomTextField(
            controller: controller.locationController,
            title: 'Location',
            titleHeight: 4.5.h,
            maxLines: 1,
            validator: Validators.address,
          ),
          CustomTextField(
            controller: controller.linksController,
            title: 'Links',
            titleHeight: 4.5.h,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
