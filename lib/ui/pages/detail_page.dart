import 'package:flutter/material.dart';
import 'package:flutter_1/shared/theme.dart';
import 'package:flutter_1/ui/pages/ChooseSeatPage.dart';
import 'package:flutter_1/ui/widget/custom_bottom.dart';
import 'package:flutter_1/ui/widget/interest_item.dart';
import 'package:flutter_1/ui/widget/photo_item.dart';


class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget backgroundImage(){
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
            'image_destination1.png'),
          ),
        ),
      );
    }
  Widget CustomShadow(){
    return Container(
      width: double.infinity,
      height: 214,
      margin: EdgeInsets.only(top:236),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            kWhiteColor.withOpacity(0),
            Colors.black.withOpacity(0.95)
          ],
        ),
      ),
    );

  }

  Widget content(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: defaultMargin,
        
      ),
      child: Column(
        children:[
          //note EMBLEM
          Container(
            width: 108,
            height: 24,
            margin: EdgeInsets.only
            (top: 30,
            ),
            decoration: BoxDecoration(
              image: DecorationImage
              (image: AssetImage(
                'icon_emblem.png'
              ))
            ),
          ),
          //NOTE : TITLE
          Container(
            margin: EdgeInsets.only(top : 256),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Telaga Ngebel',
                      style: whiteColor.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),),
                      Text(
                        'Ponorogo', 
                        style: whiteColor.copyWith(
                          fontSize: 16,
                          fontWeight: light,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Container(
                           width: 20,
                           height: 20,
                           margin: EdgeInsets.only(right: 2),
                           decoration: BoxDecoration(
                            image: DecorationImage
                            (image: AssetImage
                            ('icon_star.png')
                            ) 
                           ),
                         ),
                         Text('4.8',
                         style: whiteColor.copyWith(
                           fontWeight: medium,
                         ),)
                       ],
                     ), 
              ],
            ),

          ),
        //NOTE : Deskripsi
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),

          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //about
              Text('About', style: blackColor.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),),
              SizedBox(height: 6,),
              Text(' simply dummy text of the printing and typesetting industry. Lor1500s, when an unknown p',
              style: blackColor.copyWith(
                height: 2,
              ),
              ),
              //foto
              SizedBox(
                height:20,
              ),
              Text('Photo', style: blackColor.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
              ),
              SizedBox(height: 6,),
              Row(
                children: [
                  PhotoItem(
                    imageUrl: 'image_photo1.png',
                  ),
                  PhotoItem(
                     imageUrl: 'image_photo2.png',
                  ),
                  PhotoItem(
                     imageUrl: 'image_photo3.png',
                  ),

                  // Container(
                  //   width: 70,
                  //   height: 70,
                  //   margin: EdgeInsets.only(right: 16),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(18),
                  //     image: DecorationImage(
                  //       fit: BoxFit.cover,
                  //       image: AssetImage(
                  //       'image_photo1.png'
                  //     ),
                  //     ),
                  //   ),
                  // )
                ],
              ),
              // NOTE : Interes
               SizedBox(
                height:20,
              ),
              Text('Interest',
               style: blackColor.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
              ),
              SizedBox(
                height:6,
              ),
              // Row(
              //   children: [
              //     Container(
              //       width: 16,
              //       height:16,
              //       margin: EdgeInsets.only(right: 6),
              //       decoration: BoxDecoration(
              //         image: DecorationImage(
              //           fit: BoxFit.cover,
              //           image: AssetImage(
              //           'icon_check.png'
              //         ))
              //       ),
              //     ), 
              //     Text(
              //       'Kids Park',
              //       style: blackColor,
              //     )
              //   ],
              // ),
              Row(
                children: [
                  InterestItem(
                    title:'Kids Park'
                  ),
                    InterestItem(
                      title: 'Akses Disabilitas',
                    ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  InterestItem(
                    title: 'Api Unggun',
                  ),
                    InterestItem(
                      title: 'Becak Cinta',
                    ),
                ],
              ),
            ],
          ),
        ),

        //NOTE PRICE
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 30),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('IDR 2.500,00',
                    style: blackColor.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Per Orang',
                    style: greyColor.copyWith(
                      fontWeight: light,
                    ),)
                  ],
                ),
              ),
              //NOTE BOTTOM
              CustomBottom(title: 'Book Now', 
              onPressed: () { Navigator.push(context, MaterialPageRoute(builder: 
              (context) => ChooseSeatPage(), ),);
              },
              width: 170,
              )
            ],
          ),

        )

        ],
      ),
    );
  }
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            CustomShadow(),
            content(),
          ],
        ),
      ),

    );
  }
}