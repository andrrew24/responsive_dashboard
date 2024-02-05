import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/custom_elevated_button.dart';
import 'package:responsive_dashboard/views/widgets/title_textfield.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
              child: TitleTextFieldWidget(
                  labelText: "Customer Name", hintText: "Type customer name"),
            ),
            Gap(16),
            Expanded(
              child: TitleTextFieldWidget(
                  labelText: "Customer Email", hintText: "Type customer email"),
            ),
          ],
        ),
        const Gap(10),
        Row(
          children: [
            const Expanded(
              child: TitleTextFieldWidget(
                  labelText: "Item Name", hintText: "Type item name"),
            ),
            const Gap(16),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Item mount",
                  style: AppStyles.styleMedium16(context),
                ),
                const Gap(5),
                Container(
                  padding: const EdgeInsets.only(left: 20, top: 18, bottom: 18),
                  decoration: ShapeDecoration(
                      color: Colors.grey.shade100,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: Row(
                    children: [
                      Text(
                        "USD",
                        style: AppStyles.styleRegular16(context)
                            .copyWith(color: Colors.grey),
                      ),
                      const Gap(10),
                      Transform.rotate(
                        angle: -1.57079633,
                        child: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ))
          ],
        ),
        const Gap(15),
        const Row(
          children: [
            Expanded(
              child: CustomElevatedButton(
                text: "Add Details",
                backgroundColor: Colors.white,
                textColor: Color(0xff4eb7f2),
              ),
            ),
            Gap(24),
            Expanded(child: CustomElevatedButton(text: "Send Monney")),
          ],
        )
      ],
    );
  }
}
