import 'package:flutter/material.dart';
import 'package:flutter_1/shared/theme.dart';
import 'package:flutter_1/ui/pages/checkout_page.dart';
import 'package:flutter_1/ui/pages/seat_item.dart';
import 'package:flutter_1/ui/widget/custom_bottom.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget title(){
      return Container(
      margin: EdgeInsets.only(top: 50),
      child: Text(
        'Select Your\nFavorite Seat', style: blackColor.copyWith(
          fontSize: 24,
          fontWeight: semiBold,
        ),
      ),
      );
    }

    Widget seatStatus(){
      return Container(
       margin: EdgeInsets.only(top: 30),
       child: Row(
         children: [
           //NOTE AVAILABLE
           Container(
             width: 16,
             height: 16,
             margin: EdgeInsets.only(right: 6, left: 10),
             decoration: BoxDecoration(
               image: DecorationImage(image:AssetImage(
                 'icon_available.png'
               ),
                ),
             ),
           ),
           Text('Available', style: blackColor,),
           //NOTE SELECTED
           Container(
             width: 16,
             height: 16,
             margin: EdgeInsets.only(right: 6, left: 10),
             decoration: BoxDecoration(
               image: DecorationImage(image:AssetImage(
                 'icon_selected.png'
               ),
                ),
             ),
           ),
           Text('Selected', style: blackColor,),
           //NOTE UNAVAILABLE
           Container(
             width: 16,
             height: 16,
             margin: EdgeInsets.only(right: 6, left: 10),
             decoration: BoxDecoration(
               image: DecorationImage(image:AssetImage(
                 'icon_unavailable.png'
               ),
                ),
             ),
           ),
           Text('Unvailable', style: blackColor,),
         ],
       ), 
      );
    }

  Widget SelectedSeat (){
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 22,
        vertical: 30,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: kWhiteColor,
      ),
      child: Column(
        children: [
          // NOTE : A
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 48,
                height: 48,
                child: Center(
                child: Text(
                  'A', style: greyColor.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              ),
              Container(
                width: 48,
                height: 48,
                child: Center(
                child: Text(
                  'B', style: greyColor.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              ),
              Container(
                width: 48,
                height: 48,
                child: Center(
                child: Text(
                  '', style: greyColor.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              ),
              Container(
                width: 48,
                height: 48,
                child: Center(
                child: Text(
                  'C', style: greyColor.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              ),
              Container(
                width: 48,
                height: 48,
                child: Center(
                child: Text(
                  'D', style: greyColor.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              ),
                
            ],
          ),
        // NOTE : SEAT 1
        Container(
          margin: EdgeInsets.only(top: 16),
          child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              SeatItem(status: 2,),
              SeatItem(status: 0,),
              Container(
                width: 48,
                height: 48,
                child: Center(
                child: Text(
                  '1', style: greyColor.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              ),
              
              SeatItem(status: 0,),
              SeatItem(status: 0,),
            ],
          ),
        ),
        // NOTE : SEAT 2
        Container(
          margin: EdgeInsets.only(top: 16),
          child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              SeatItem(status: 2,),
              SeatItem(status: 2,),
              Container(
                width: 48,
                height: 48,
                child: Center(
                child: Text(
                  '2', style: greyColor.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              ),
              
              SeatItem(status: 0,),
              SeatItem(status: 0,),
            ],
          ),
        ),

        // NOTE : SEAT 3
        Container(
          margin: EdgeInsets.only(top: 16),
          child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              SeatItem(status: 2,),
              SeatItem(status: 2,),
              Container(
                width: 48,
                height: 48,
                child: Center(
                child: Text(
                  '3', style: greyColor.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              ),
              
              SeatItem(status: 0,),
              SeatItem(status: 0,),
            ],
          ),
        ),

        // NOTE : SEAT 4
        Container(
          margin: EdgeInsets.only(top: 16),
          child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              SeatItem(status: 0,),
              SeatItem(status: 1,),
              Container(
                width: 48,
                height: 48,
                child: Center(
                child: Text(
                  '4', style: greyColor.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              ),
              
              SeatItem(status: 0,),
              SeatItem(status: 0,),
            ],
          ),
        ),
        // NOTE : SEAT 5
        Container(
          margin: EdgeInsets.only(top: 16),
          child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              SeatItem(status: 0,),
              SeatItem(status: 2,),
              Container(
                width: 48,
                height: 48,
                child: Center(
                child: Text(
                  '5', style: greyColor.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              ),
              
              SeatItem(status: 0,),
              SeatItem(status: 0,),
            ],
          ),
        ),

        // NOTE : YOUR SEAT
        Container(
          margin:EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Your Seat',
                style: greyColor.copyWith(
                  fontWeight: light,
                ),
              ),
              Text(
                'A4',
                style: blackColor.copyWith(
                  fontSize: 16,
                  fontWeight :medium,
                ),
              )
            ],
          )
        ),
        // NOTE : TOTAL
        Container(
          margin:EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: greyColor.copyWith(
                  fontWeight: light,
                ),
              ),
              Text(
                'IDR 250.000,00',
                style: primarykColor.copyWith(
                  fontSize: 16,
                  fontWeight :semiBold,
                ),
              )
            ],
          )
        ),
        ],
      ),
    );
  }

  Widget checkoutButton(){
    return CustomBottom(
      title: 'Continue to Checkout', 
      onPressed: (){
        Navigator.push(context, 
        MaterialPageRoute(builder: 
        (context) => CheckoutPage(),),
        );
      },
      margin: EdgeInsets.only(
        top: 30,
        bottom: 46,
      ),
    );
  }  


    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          title(),
          seatStatus(),
          SelectedSeat(),
          checkoutButton(),
        ],
      ),
    );
  }
}