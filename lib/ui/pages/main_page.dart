import 'package:flutter/material.dart';
import 'package:flutter_1/shared/theme.dart';
import 'package:flutter_1/ui/pages/home_page.dart';
import 'package:flutter_1/ui/widget/custom_bottom_navigation.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget BuildContext(){
      return HomePage();
    }

    Widget customBottomNavigation(){
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          height: 60,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItem(imageUrl:  'icon_home.png',),
               CustomBottomNavigationItem(imageUrl:  'icon_booking.png',),
                CustomBottomNavigationItem(imageUrl:  'icon_card.png',),
                CustomBottomNavigationItem(imageUrl:  'icon_settings.png',),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     SizedBox(),
              //     Container(
              //       width: 24,
              //       height: 24,
              //       decoration: BoxDecoration(
              //         image: DecorationImage(
              //           image: AssetImage(
              //             'icon_home.png'
              //           )
              //         )
              //       ),
              //     ),
              //     Container(
              //       width: 30,
              //       height: 2,
              //       decoration: BoxDecoration(
              //         color: kPrimaryColor,
              //         borderRadius: BorderRadius.circular(18),
              //       ),
              //     )
              //   ],
              // ),
              //  Column(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     SizedBox(),
              //     Container(
              //       width: 24,
              //       height: 24,
              //       decoration: BoxDecoration(
              //         image: DecorationImage(
              //           image: AssetImage(
              //             'icon_booking.png'
              //           )
              //         )
              //       ),
              //     ),
              //     Container(
              //       width: 30,
              //       height: 2,
              //       decoration: BoxDecoration(
              //         color: kTransparentColor,
              //         borderRadius: BorderRadius.circular(18),
              //       ),
              //     )
              //   ],
              // ),
              //  Column(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     SizedBox(),
              //     Container(
              //       width: 24,
              //       height: 24,
              //       decoration: BoxDecoration(
              //         image: DecorationImage(
              //           image: AssetImage(
              //             'icon_card.png'
              //           )
              //         )
              //       ),
              //     ),
              //     Container(
              //       width: 30,
              //       height: 2,
              //       decoration: BoxDecoration(
              //         color: kTransparentColor,
              //         borderRadius: BorderRadius.circular(18),
              //       ),
              //     )
              //   ],
              // ),
              //  Column(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     SizedBox(),
              //     Container(
              //       width: 24,
              //       height: 24,
              //       decoration: BoxDecoration(
              //         image: DecorationImage(
              //           image: AssetImage(
              //             'icon_settings.png'
              //           )
              //         )
              //       ),
              //     ),
              //     Container(
              //       width: 30,
              //       height: 2,
              //       decoration: BoxDecoration(
              //         color: kTransparentColor,
              //         borderRadius: BorderRadius.circular(18),
              //       ),
              //     )
              //   ],
              // )
            ],
          ),
        ),
        );
    }


    return Scaffold(
      body: Stack(
        children: [
          BuildContext(),
          customBottomNavigation(),
        ],
      ),
    );
  }
}