import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pay_app/src/checkoutSection/sceens/qrCode.dart';
import '../../../res.dart';
import '../../addMerchantWalletSection/screens/we_found_it.dart';
import '../../commonWidgets/button_widget.dart';
import '../../commonWidgets/textfield_widget.dart';
import '../../helperFucntions/navigator_helper.dart';
import '../../utils/appcolors.dart';
import '../../utils/text_Utils.dart';
import '../../utils/themes.dart';
import '../widgets/numpad.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  final TextEditingController _myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // bottomNavigationBar: Column(
        //   mainAxisSize: MainAxisSize.min,
        //   children: [
        //     // CommonButtonWidget(
        //     //     //  buttonwidth: 100,
        //     //     horizontalPadding: 12,
        //     //     radius: 27,
        //     //     text: TextUtils.checkout,
        //     //     onTap: () {
        //     //       toNext(context: context, widget: const QrCodeScreen());
        //     //     }),
        //     const SizedBox(
        //       height: 40,
        //     )
        //   ],
        // ),
        backgroundColor: AppColors.whitecolor,
        body: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
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
                    TextUtils.checkout,
                    style: fontW4S12(context)!.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackcolor),
                  ),
                  const Text("     "),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  TextUtils.walletToRecieve,
                  style: fontW4S12(context)!.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackcolor.withOpacity(0.6)),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                height: 85,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: AppColors.lightcolor),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 32,
                        backgroundColor: AppColors.whitecolor,
                        child: Icon(
                          Icons.person,
                          color: AppColors.whiteskincolor,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        TextUtils.nameofwallet,
                        style: fontW4S12(context)!.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: AppColors.blackcolor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                //width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(23),
                        topRight: Radius.circular(23)),
                    color: AppColors.appcolor),
                child: Column(
                  children: [
                    // const SizedBox(
                    //   height: 12,
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: SizedBox(
                        height: 60,
                        width: 200,
                        child: Center(
                            child: TextFormField(
                          readOnly: true,

                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(),
                            // prefixIcon: Padding(
                            //   padding: EdgeInsets.only(top: 15),
                            //   child: Text(
                            //     "\$",
                            //     style: TextStyle(
                            //         fontWeight: FontWeight.bold,
                            //         color: AppColors.whitecolor,
                            //         fontSize: 23),
                            //   ),
                            // )),)
                          ),
                          controller: _myController,

                          textAlign: TextAlign.center,
                          showCursor: false,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 32,
                              color: AppColors.whitecolor),
                          // Disable the default soft keybaord
                          keyboardType: TextInputType.none,
                        )),
                      ),
                    ),
                    // // implement the custom NumPad
                    NumPad(
                      buttonSize: 40,
                      buttonColor: AppColors.appcolor,
                      iconColor: Colors.white,
                      controller: _myController,
                      delete: () {
                        _myController.text = _myController.text.substring(
                            0,
                            _myController.text.isNotEmpty
                                ? _myController.text.length - 1
                                : _myController.text.length);
                      },
                      // do something with the input numbers
                      onSubmit: () {
                        debugPrint('Your code: ${_myController.text}');
                        // showDialog(
                        //     context: context,
                        //     builder: (_) => AlertDialog(
                        //           content: Text(
                        //             "You code is ${_myController.text}",
                        //             style: const TextStyle(fontSize: 30),
                        //           ),
                        //         ));
                      },
                    ),
                    Spacer(),
                    // const SizedBox(
                    //   height: 25,
                    // ),

                    CommonButtonWidget(
                        //  buttonwidth: 100,
                        horizontalPadding: 12,
                        radius: 27,
                        textcolor: AppColors.appcolor,
                        backgroundcolor: AppColors.whitecolor,
                        text: TextUtils.checkout,
                        onTap: () {
                          toNext(
                              context: context, widget: const QrCodeScreen());
                        }),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            )

            // // implement the custom NumPad
            // NumPad(
            //   buttonSize: 45,
            //   buttonColor: Colors.purple,
            //   iconColor: Colors.deepOrange,
            //   controller: _myController,
            //   delete: () {
            //     _myController.text = _myController.text
            //         .substring(0, _myController.text.length - 1);
            //   },
            //   // do something with the input numbers
            //   onSubmit: () {
            //     debugPrint('Your code: ${_myController.text}');
            //     showDialog(
            //         context: context,
            //         builder: (_) => AlertDialog(
            //               content: Text(
            //                 "You code is ${_myController.text}",
            //                 style: const TextStyle(fontSize: 30),
            //               ),
            //             ));
            //   },
            // ),
            // const SizedBox(
            //   height: 100,
            // ),
            // Align(
            //   alignment: Alignment.centerLeft,
            //   child: Text(
            //     TextUtils.enterAmount,
            //     style: fontW4S12(context)!.copyWith(
            //         fontSize: 14,
            //         fontWeight: FontWeight.w500,
            //         color: AppColors.darktextcolor),
            //   ),
            // ),
            // const SizedBox(
            //   height: 7,
            // ),
            // const TextFieldWidget(
            //     textFieldHeight: 50,
            //     maxlines: 1,
            //     hintText: "Enter Amount",
            //     textInputType: TextInputType.number),
          ],
        ),
      ),
    );
  }
}
