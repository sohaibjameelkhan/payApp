import 'package:flutter/material.dart';

import '../../utils/appcolors.dart';
import '../../utils/themes.dart';

class TransactionTileWidget extends StatelessWidget {
  const TransactionTileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.whiteskincolor
                      .withOpacity(0.5),
                  child: const Icon(Icons.arrow_back),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      "0xffhgkdossosldfsmsiefmf",
                      style: fontW4S12(context)!.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackcolor),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Aug 23   |",
                          style: fontW4S12(context)!.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: AppColors.darktextcolor
                                  .withOpacity(0.7)),
                        ),
                        Text(
                          "   12 :45 AM",
                          style: fontW4S12(context)!.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: AppColors.darktextcolor
                                  .withOpacity(0.7)),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Text(
              "1,878,00",
              style: fontW4S12(context)!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackcolor),
            ),
          ],
        ),
      ),
    );
  }
}
