import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_app/src/dashboardSection/screens/walletSettings.dart';
import 'package:pay_app/src/helperFucntions/navigator_helper.dart';
import 'package:pay_app/src/onboardingSection/type_of_wallet.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../res.dart';
import '../../checkoutSection/sceens/checkoutScreen.dart';
import '../../commonWidgets/button_widget.dart';
import '../../transactionSection/screens/transaction_details.dart';
import '../../transactionSection/screens/view_all_transactions.dart';
import '../../utils/appcolors.dart';
import '../../utils/text_Utils.dart';
import '../../utils/themes.dart';
import '../widgets/transactionTileWidget.dart';

class DashBoardScreen extends StatefulWidget {
  DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int activeindex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whitecolor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(Res.payapp),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        TextUtils.payApp,
                        style: fontW4S12(context)!.copyWith(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: AppColors.blackcolor),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            toNext(
                                context: context, widget: TypeOfWalletScreen());
                          },
                          icon: const Icon(
                            Icons.add,
                            color: AppColors.appcolor,
                          )),
                      // const Icon(
                      //   Icons.add,
                      //   color: AppColors.appcolor,
                      // ),
                      const SizedBox(
                        width: 2,
                      ),
                      InkWell(
                        onTap: () {
                          toNext(
                              context: context, widget: TypeOfWalletScreen());
                        },
                        child: Text(
                          TextUtils.addWallet,
                          style: fontW4S12(context)!.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColors.appcolor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              // CarouselSlider(
              //   items: imagesList.map(
              //       (e) => Container(
              //             height: 200,
              //             decoration: const BoxDecoration(
              //                 borderRadius: BorderRadius.only(
              //                     topLeft: Radius.circular(16),
              //                     bottomLeft: Radius.circular(16)),
              //                 image: DecorationImage(
              //                   image: AssetImage(Res.dashboardcard),
              //                   fit: BoxFit.cover,
              //                 )),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 Padding(
              //                   padding: const EdgeInsets.only(
              //                       left: 12, right: 25, top: 20),
              //                   child: Row(
              //                     mainAxisAlignment:
              //                         MainAxisAlignment.spaceBetween,
              //                     children: [
              //                       Row(
              //                         children: [
              //                           const CircleAvatar(
              //                             backgroundColor: AppColors.whitecolor,
              //                             child: Icon(
              //                               Icons.person,
              //                               color: AppColors.whiteskincolor,
              //                             ),
              //                           ),
              //                           const SizedBox(
              //                             width: 15,
              //                           ),
              //                           Text(
              //                             TextUtils.nameofwallet,
              //                             style: fontW4S12(context)!.copyWith(
              //                                 fontSize: 14,
              //                                 fontWeight: FontWeight.w500,
              //                                 color: AppColors.blackcolor),
              //                           ),
              //                         ],
              //                       ),
              //                       SvgPicture.asset(Res.settingsicon)
              //                     ],
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding:
              //                       const EdgeInsets.symmetric(horizontal: 15),
              //                   child: Column(
              //                     crossAxisAlignment: CrossAxisAlignment.start,
              //                     children: [
              //                       Text(
              //                         TextUtils.balance,
              //                         style: fontW4S12(context)!.copyWith(
              //                             fontSize: 14,
              //                             fontWeight: FontWeight.w500,
              //                             color: AppColors.darktextcolor),
              //                       ),
              //                       const SizedBox(
              //                         height: 9,
              //                       ),
              //                       Text(
              //                         "\$56,587,00.0",
              //                         style: fontW4S12(context)!.copyWith(
              //                             fontSize: 22,
              //                             fontWeight: FontWeight.bold,
              //                             color: AppColors.blackcolor),
              //                       ),
              //                       const SizedBox(
              //                         height: 15,
              //                       )
              //                     ],
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //       options: CarouselOptions(
              //         height: 260,
              //         aspectRatio: 1,
              //         viewportFraction: 1,
              //         initialPage: 0,
              //         enableInfiniteScroll: true,
              //         reverse: false,
              //         autoPlay: true,
              //         autoPlayInterval: const Duration(seconds: 3),
              //         autoPlayAnimationDuration:
              //             const Duration(milliseconds: 800),
              //         autoPlayCurve: Curves.fastOutSlowIn,
              //         enlargeCenterPage: true,
              //         scrollDirection: Axis.horizontal,
              //       )),
              // ),

              CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  aspectRatio: 1,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) =>
                      setState(() => activeindex = index),
                  scrollDirection: Axis.horizontal,
                ),
                items: [1, 2, 3].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        height: 200,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(16)),
                            image: DecorationImage(
                              image: AssetImage(Res.dashboardcard),
                              fit: BoxFit.cover,
                            )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 25, top: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          toNext(
                                              context: context,
                                              widget: const WalletSettings());
                                        },
                                        child: const CircleAvatar(
                                          backgroundColor: AppColors.whitecolor,
                                          child: Icon(
                                            Icons.person,
                                            color: AppColors.whiteskincolor,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        TextUtils.nameofwallet,
                                        style: fontW4S12(context)!.copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.blackcolor),
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                      onTap: () {
                                        toNext(
                                            context: context,
                                            widget: const WalletSettings());
                                      },
                                      child: SvgPicture.asset(Res.settingsicon))
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    TextUtils.balance,
                                    style: fontW4S12(context)!.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.darktextcolor),
                                  ),
                                  const SizedBox(
                                    height: 9,
                                  ),
                                  Text(
                                    "\$56,587,00.0",
                                    style: fontW4S12(context)!.copyWith(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.blackcolor),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 10,
              ),
              buildIndicator(),
              const SizedBox(
                height: 15,
              ),

              CommonButtonWidget(
                  //  buttonwidth: 100,
                  horizontalPadding: 6,
                  radius: 27,
                  text: TextUtils.checkout,
                  onTap: () {
                    toNext(context: context, widget: const CheckOutScreen());
                  }),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    TextUtils.transactions,
                    style: fontW4S12(context)!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.blackcolor),
                  ),
                  InkWell(
                    onTap: () {
                      toNext(context: context, widget: viewAllTransactions());
                    },
                    child: Text(
                      TextUtils.viewAll,
                      style: fontW4S12(context)!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.appcolor),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Today",
                  style: fontW4S12(context)!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: AppColors.darktextcolor),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 2,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                          onTap: () {
                            toNext(
                                context: context, widget: TransactionDetails());
                          },
                          child: TransactionTileWidget());
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeindex,
        count: 3,
        effect: const WormEffect(
            dotHeight: 9, dotWidth: 9, activeDotColor: AppColors.appcolor),
      );
}
