import 'package:flutter/material.dart';
import 'package:flutter_1/shared/theme.dart';
import 'package:flutter_1/ui/widget/destination_card.dart';
import 'package:flutter_1/ui/widget/destination_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  Widget AppBar(){
    return Container(

      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 30,),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Viko Aldi Putra',
                style: blackColor.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
                ),
                SizedBox(height: 6, ),
                Text('Where to fly today?',
                style: greyColor.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                ),
             )
              ],
            ),
          ),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage(
                'image_profile.png',
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }



  Widget popularDestination(){
    return Container(
      margin: EdgeInsets.only(top:30 ),
      child: SingleChildScrollView(
        scrollDirection:Axis.horizontal,
        child: Row(
          children: [
            DestinationCard(
              title: 'Lake Ciliwong',
              city: 'ponorogo',
              imageUrl: 'image_destination1.png',
              rating: 4.8,
            ),
            DestinationCard(
              title: 'White House',
              city: 'ponorogo',
              imageUrl: 'image_destination2.png',
              rating: 4.8,
            ),
            DestinationCard(
              title: 'Lake Ciliwong',
              city: 'ponorogo',
              imageUrl: 'image_destination3.png',
              rating: 4.8,
            ),
            DestinationCard(
              title: 'Lake Ciliwong',
              city: 'ponorogo',
              imageUrl: 'image_destination4.png',
              rating: 4.8,
            ),
            DestinationCard(
              title: 'Lake Ciliwong',
              city: 'ponorogo',
              imageUrl: 'image_destination5.png',
              rating: 4.8,
            ),
          //       Container(
          //         width: 200,
          //         height: 323,
          //         margin: EdgeInsets.only(
          //           left: defaultMargin,
          //         ),
          //         padding: EdgeInsets.all(10),
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(18),
          //           color: kWhiteColor,
          //         ),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Container(
          //               width: 180,
          //               height: 220,
          //               margin: EdgeInsets.only(bottom: 20),
          //               decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(18),
          //                 image: DecorationImage(image: AssetImage(
          //                   'image_destination1.png'
          //                 ))
          //               ),
          //             child: Align(
          //               alignment: Alignment.topRight,
          //               child: Container(
          //                 width: 55,
          //                 height: 30,
          //                 decoration: BoxDecoration(
          //                   color: kWhiteColor,
          //                   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(18))
          //                 ),
          //                child: Row(
          //                  mainAxisAlignment: MainAxisAlignment.center,
          //                  crossAxisAlignment: CrossAxisAlignment.start,
          //                  children: [
          //                    Container(
          //                      width: 20,
          //                      height: 20,
          //                      margin: EdgeInsets.only(right: 2),
          //                      decoration: BoxDecoration(
          //                       image: DecorationImage
          //                       (image: AssetImage
          //                       ('icon_star.png')
          //                       ) 
          //                      ),
          //                    ),
          //                    Text('4.8',
          //                    style: blackColor.copyWith(
          //                      fontWeight: medium,
          //                    ),)
          //                  ],
          //                ), 
          //               ),
          //             ),
          //             ),
          //             Container(
          //               margin: EdgeInsets.only(left: 10),
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Text('Lake Ciliwong',
          //                   style: blackColor.copyWith(
          //                     fontSize: 18,
          //                     fontWeight:medium,
          //                   ),),
          //                   SizedBox(height: 5,),
          //                   Text('ponorogo',
          //                   style: greyColor.copyWith(
          //                     fontWeight: light,
          //                   ),)
          //                 ],
          //               ),
          //             )
          //           ]
          // ),
          //       )
          ],
        ),
      ),
    );
  }

  Widget newDestination(){
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        left: defaultMargin,
        right: defaultMargin,
        bottom : 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text('New This Year',
        style: blackColor.copyWith(
          fontSize: 18,
          fontWeight: semiBold,
        ),),
        DestinationTile(
         title: 'Telaga Ngebel',
         city: 'Ponorogo',
          imageUrl: 'image_destination6.png',
          rating: 4.8,
        ),
         DestinationTile(
         title: 'Telaga Ngebel',
         city: 'Ponorogo',
          imageUrl: 'image_destination7.png',
          rating: 4.3,
        ),
         DestinationTile(
         title: 'Telaga Ngebel',
         city: 'Ponorogo',
          imageUrl: 'image_destination8.png',
          rating: 4.9,
        ),
         DestinationTile(
         title: 'Telaga Ngebel',
         city: 'Ponorogo',
          imageUrl: 'image_destination9.png',
          rating: 4.2,
        ),
         DestinationTile(
         title: 'Telaga Ngebel',
         city: 'Ponorogo',
          imageUrl: 'image_destination6.png',
          rating: 4.5,
        ),
      ]),
    );
  }

    return ListView(
      children: [
       AppBar(),
       popularDestination(),
       newDestination(),
      ],

    );
  }
}