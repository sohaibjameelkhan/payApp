import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pay_app/src/helperFucntions/navigator_helper.dart';
import 'package:pay_app/src/transactionSection/screens/transaction_details.dart';

import '../../../res.dart';
import '../../dashboardSection/widgets/transactionTileWidget.dart';
import '../../utils/appcolors.dart';
import '../../utils/text_Utils.dart';
import '../../utils/themes.dart';

class viewAllTransactions extends StatelessWidget {
  const viewAllTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whitecolor.withOpacity(0.9),
        body: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.maybePop(context);
                  },
                  child: SvgPicture.asset(
                    Res.arrowback,
                  ),
                ),
                Text(
                  TextUtils.transactions,
                  style: fontW4S12(context)!.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackcolor),
                ),
                const Text("     "),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 2,
              child: ListView.builder(
                  itemCount: 30,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: InkWell(
                          onTap: () {
                            toNext(
                                context: context,
                                widget: const TransactionDetails());
                          },
                          child: const TransactionTileWidget()),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
