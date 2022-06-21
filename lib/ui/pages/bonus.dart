import 'package:flutter/material.dart';
import 'package:flutter_1/shared/theme.dart';
import 'package:flutter_1/ui/widget/custom_bottom.dart';

class bonusPage extends StatelessWidget {
  const bonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    Widget bonusCard(){
      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'image_card.png'
            )
          ),
          boxShadow: [
            BoxShadow(
              color:kPrimaryColor.withOpacity(0.5),
              blurRadius: 50,
              offset: Offset(0, 10),
            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name',
                      style: whiteColor.copyWith(
                        fontWeight: light,
                      ),
                      ),
                      Text('Viko Aldi',style:whiteColor.copyWith(
                        fontSize: 20,
                        fontWeight: medium,
                      ),
                      overflow: TextOverflow.ellipsis,
                
                      )
                    ],
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:AssetImage(
                        'icon_plane.png'
                      )
                    )

                  ),
                ),
                Text('pay',
                style: whiteColor.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
                ),
              ],
            ),
            SizedBox(height: 41,),
            Text('Balance',
            style: whiteColor.copyWith(
              fontWeight: light,
            ),
            ),
            Text('IDR 150.000,00',
            style: whiteColor.copyWith(
              fontSize: 26,
              fontWeight: medium,
            ),
            )
          ],
        ),
      );
    }


    Widget title(){
      return Container(
        margin: EdgeInsets.only(top:80),
        child: Text(
          'Big Bonus',
          style: blackColor.copyWith(
            fontSize: 32,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget subtitle(){
      return Container(
        margin: EdgeInsets.only(top:80),
        child: Text(
          'We give you earli credit so that\nyou can buy a flight ticket',
          style: blackColor.copyWith(
            fontSize: 16,
            fontWeight: light,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget startButton(){
      return CustomBottom(title: 'Start Fly Now',
      width: 220,
      margin: EdgeInsets.only(top: 50),
       onPressed: (){
         Navigator.pushNamed(context, '/main');
       });
      // Container(
      //   width: 220,
      //   height: 55,
      //   margin: EdgeInsets.only(top: 50),
      //   child: TextButton(
      //     onPressed: () {
      //       Navigator.pushNamed(context, '/main');
            
      //     },
      //     style: TextButton.styleFrom(
      //       backgroundColor: kPrimaryColor,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(defaultRadius)
      //       )
      //     ),
      //     child: Text('Start Fly now',
      //     style: whiteColor.copyWith(
      //       fontSize:18,
      //       fontWeight: medium,
      //     ),
            
      //     )
      //   ),
      // );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            title(),
            subtitle(),
            startButton(),
          ],
        ),
      ),
    );
  }
}