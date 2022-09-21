import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_app/src/dashboardSection/providers/dashboardProvder.dart';
import 'package:provider/provider.dart';
import '../../../res.dart';
import '../../commonWidgets/button_widget.dart';
import '../../commonWidgets/textfield_widget.dart';
import '../../utils/appcolors.dart';
import '../../utils/text_Utils.dart';
import '../../utils/themes.dart';

class WalletSettings extends StatelessWidget {
  const WalletSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer<DashBoardProvider>(
          builder: (context, dashBoardProvider, __) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: AppColors.appcolor,
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: dashBoardProvider.bannerImage == null
                        ? AssetImage(Res.nameofwalletpng)
                        : FileImage(dashBoardProvider.bannerImage!)
                            as ImageProvider)),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: InkWell(
                      onTap: () {
                        Navigator.maybePop(context);
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(33),
                          color: AppColors.whiteskincolor,
                        ),
                        child: SvgPicture.asset(Res.arrowback),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: () {
                        dashBoardProvider.pickBannerImage(context);
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(33),
                          color: AppColors.whiteskincolor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: SvgPicture.asset(Res.editicon),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Stack(
                    clipBehavior: Clip.none,
                    // fit: StackFit.loose,

                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(33),
                              topRight: Radius.circular(33)),
                          color: AppColors.whitecolor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  TextUtils.walletAddress,
                                  style: fontW4S12(context)!.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.darktextcolor),
                                ),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              const TextFieldWidget(
                                  textFieldHeight: 50,
                                  maxlines: 1,
                                  hintText:
                                      "Paste or enter your wallet adress here",
                                  textInputType: TextInputType.text),
                              const SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  TextUtils.walletName,
                                  style: fontW4S12(context)!.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.darktextcolor),
                                ),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              const TextFieldWidget(
                                  textFieldHeight: 50,
                                  maxlines: 1,
                                  hintText: "Enter Name of Wallet",
                                  textInputType: TextInputType.text),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  TextUtils.walletNameNotDisplayed,
                                  style: fontW4S12(context)!.copyWith(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.darktextcolor
                                          .withOpacity(0.8)),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  TextUtils.merchantName,
                                  style: fontW4S12(context)!.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.darktextcolor),
                                ),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              const TextFieldWidget(
                                  textFieldHeight: 50,
                                  maxlines: 1,
                                  hintText: "Enter your merchant name",
                                  textInputType: TextInputType.text),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  TextUtils.merchantNameNotDisplayed,
                                  style: fontW4S12(context)!.copyWith(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.darktextcolor
                                          .withOpacity(0.8)),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CommonButtonWidget(
                                  //  buttonwidth: 100,
                                  horizontalPadding: 7,
                                  radius: 27,
                                  backgroundcolor: AppColors.whiteskincolor,
                                  bordercolor: AppColors.whiteskincolor,
                                  textcolor: AppColors.darktextcolor,
                                  text: TextUtils.saveChanges,
                                  onTap: () {
                                    // toNext(context: context, widget: const WeFoundItScreen());
                                  }),
                              const SizedBox(
                                height: 20,
                              ),
                              CommonButtonWidget(
                                  //  buttonwidth: 100,
                                  horizontalPadding: 7,
                                  radius: 27,
                                  backgroundcolor: AppColors.whitecolor,
                                  bordercolor: AppColors.whitecolor,
                                  textcolor: AppColors.darktextcolor,
                                  text: TextUtils.removeWallet,
                                  onTap: () {
                                    showGeneralDialog(
                                        context: context,
                                        barrierDismissible: true,
                                        barrierLabel:
                                            MaterialLocalizations.of(context)
                                                .modalBarrierDismissLabel,
                                        barrierColor: Colors.black45,
                                        transitionDuration:
                                            const Duration(milliseconds: 200),
                                        pageBuilder: (BuildContext buildContext,
                                            Animation animation,
                                            Animation secondaryAnimation) {
                                          return Center(
                                            child: Container(
                                              height: 250,
                                              width: 300,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          23)),
                                              padding: const EdgeInsets.all(20),
                                              child: Column(
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: SvgPicture.asset(
                                                            Res.crossicon),
                                                      )),
                                                  const SizedBox(
                                                    height: 15,
                                                  ),
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      TextUtils.removeWallet,
                                                      style: fontW4S12(context)!
                                                          .copyWith(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: AppColors
                                                                  .blackcolor
                                                                  .withOpacity(
                                                                      0.8)),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      "Are you sure you want to",
                                                      style: fontW4S12(context)!
                                                          .copyWith(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: AppColors
                                                                  .blackcolor
                                                                  .withOpacity(
                                                                      0.8)),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      "remove the wallet?",
                                                      style: fontW4S12(context)!
                                                          .copyWith(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: AppColors
                                                                  .blackcolor
                                                                  .withOpacity(
                                                                      0.8)),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 15,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                      showGeneralDialog(
                                                          context: context,
                                                          barrierDismissible:
                                                              true,
                                                          barrierLabel:
                                                              MaterialLocalizations
                                                                      .of(
                                                                          context)
                                                                  .modalBarrierDismissLabel,
                                                          barrierColor: Colors
                                                              .black45,
                                                          transitionDuration:
                                                              const Duration(
                                                                  milliseconds:
                                                                      200),
                                                          pageBuilder: (BuildContext
                                                                  buildContext,
                                                              Animation
                                                                  animation,
                                                              Animation
                                                                  secondaryAnimation) {
                                                            return Center(
                                                              child: Container(
                                                                height: 230,
                                                                width: 300,
                                                                decoration: BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            23)),
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(20),
                                                                child: Column(
                                                                  children: [
                                                                    const SizedBox(
                                                                      height:
                                                                          15,
                                                                    ),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            Navigator.pop(context);
                                                                          },
                                                                          child:
                                                                              Image.asset(
                                                                            Res.simpletickpng,
                                                                            height:
                                                                                40,
                                                                            width:
                                                                                40,
                                                                          ),
                                                                        )),

                                                                    const SizedBox(
                                                                      height:
                                                                          20,
                                                                    ),

                                                                    Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child:
                                                                          Text(
                                                                        "Your wallet has been",
                                                                        style: fontW4S12(context)!.copyWith(
                                                                            fontSize:
                                                                                14,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            color: AppColors.blackcolor.withOpacity(0.8)),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child:
                                                                          Text(
                                                                        "sucessfully removed",
                                                                        style: fontW4S12(context)!.copyWith(
                                                                            fontSize:
                                                                                14,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            color: AppColors.blackcolor.withOpacity(0.8)),
                                                                      ),
                                                                    ),

                                                                    const SizedBox(
                                                                      height:
                                                                          20,
                                                                    ),

                                                                    GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        Navigator.pop(
                                                                            context);
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            45,
                                                                        width:
                                                                            230,
                                                                        decoration: BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(13),
                                                                            color: AppColors.appcolor),
                                                                        child:
                                                                            Center(
                                                                          child:
                                                                              Text(
                                                                            "OK",
                                                                            style: fontW4S12(context)!.copyWith(
                                                                                fontSize: 17,
                                                                                fontWeight: FontWeight.w500,
                                                                                color: AppColors.whitecolor),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    const SizedBox(
                                                                        height:
                                                                            10),

                                                                    // CommonButtonWidget(
                                                                    //     //  buttonwidth: 100,
                                                                    //   //  horizontalPadding: 30,
                                                                    //     buttonHeight: 50,
                                                                    //     buttonwidth: 150,
                                                                    //     radius: 27,
                                                                    //     text: TextUtils.done,
                                                                    //     onTap: () {
                                                                    //       // toNext(context: context, widget: DashBoardScreen());
                                                                    //     }),
                                                                    // RaisedButton(
                                                                    //   onPressed: () {
                                                                    //     Navigator.of(context)
                                                                    //         .pop();
                                                                    //   },
                                                                    //   child:   Text(
                                                                    //     "Save",
                                                                    //     style: TextStyle(
                                                                    //         color: Colors.white),
                                                                    //   ),
                                                                    //   color:
                                                                    //       const Color(0xFF1BC0C5),
                                                                    // )
                                                                  ],
                                                                ),
                                                              ),
                                                            );
                                                          });
                                                    },
                                                    child: Container(
                                                      height: 45,
                                                      width: 230,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(13),
                                                          color: AppColors
                                                              .appcolor),
                                                      child: Center(
                                                        child: Text(
                                                          "Remove",
                                                          style: fontW4S12(
                                                                  context)!
                                                              .copyWith(
                                                                  fontSize: 17,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: AppColors
                                                                      .whitecolor),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  GestureDetector(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      height: 40,
                                                      width: 230,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(13),
                                                          color: AppColors
                                                              .whitecolor),
                                                      child: Center(
                                                        child: Text(
                                                          "Cancel",
                                                          style: fontW4S12(
                                                                  context)!
                                                              .copyWith(
                                                                  fontSize: 17,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: AppColors
                                                                      .darktextcolor),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          );
                                        });

                                    //showDialog(context);
                                    // toNext(context: context, widget: const WeFoundItScreen());
                                  }),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          left: 130,
                          top: -50,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteskincolor,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: dashBoardProvider.profileImage ==
                                                null
                                            ? const AssetImage(Res.personImage)
                                            : FileImage(dashBoardProvider
                                                    .profileImage!)
                                                as ImageProvider),
                                    borderRadius: BorderRadius.circular(54),
                                  ),

                                  // child: const Icon(
                                  //   Icons.person,
                                  //   color: AppColors.darktextcolor,
                                  // ),
                                ),
                                Positioned(
                                  top: 60,
                                  left: 65,
                                  child: InkWell(
                                    onTap: () {
                                      dashBoardProvider
                                          .pickProfileImage(context);
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: AppColors.whitecolor,
                                        borderRadius: BorderRadius.circular(54),
                                      ),
                                      child: const Icon(
                                        Icons.camera_alt,
                                        color: AppColors.darktextcolor,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }

  void showDialog(context) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text("Delete File"),
          content: const Text("Are you sure you want to delete the file?"),
          actions: [
            CupertinoDialogAction(
                child: Text("YES"),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
            CupertinoDialogAction(
              child: Text("NO"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}
