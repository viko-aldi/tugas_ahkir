import 'package:flutter/material.dart';
import 'package:flutter_1/shared/theme.dart';
import 'package:flutter_1/ui/widget/custom_bottom.dart';
import 'package:flutter_1/ui/widget/custom_text_form_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(         
          'Join us and get\nyour next journey',
          style: blackColor.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }
    
    Widget inputSection(){

    Widget nameInput(){
      return CustomTextFormField(title: 'Full Name', hintText: 'Your Full Name');
      // Container(
      //   margin: EdgeInsets.only(bottom: 20),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text('Full Name',
      //       ),

      //       SizedBox(height: 6,),
      //       TextField(
      //         cursorColor: kBlackColor,
      //         decoration: InputDecoration(
      //          hintText: 'Your full name',
      //          border: OutlineInputBorder(
      //            borderRadius: BorderRadius.circular(
      //              defaultRadius,
      //            ),
      //          ),
      //          focusedBorder: OutlineInputBorder(
      //            borderRadius:BorderRadius.circular(
      //              defaultRadius),
      //              borderSide: BorderSide(color: kPrimaryColor)
      //          ),
      //         ),
      //       )
      //     ],
      //     ),
      // );
    }

    Widget emailInput(){
      return CustomTextFormField(
        title: 'email addres', hintText: 'email addres',
      );
      //  Container(
      //   margin: EdgeInsets.only(bottom: 20),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text('Email Address',
      //       ),

      //       SizedBox(height: 6,),
      //       TextField(
      //         cursorColor: kBlackColor,
      //         decoration: InputDecoration(
      //          hintText: 'Your email Addres',
      //          border: OutlineInputBorder(
      //            borderRadius: BorderRadius.circular(
      //              defaultRadius,
      //            ),
      //          ),
      //          focusedBorder: OutlineInputBorder(
      //            borderRadius:BorderRadius.circular(
      //              defaultRadius),
      //              borderSide: BorderSide(color: kPrimaryColor)
      //          ),
      //         ),
      //       )
      //     ],
      //     ),
      // );
    }

    Widget passwordInput(){
      return CustomTextFormField(title: 'Password', hintText: 'Your Password', obscureText: true,);
      // Container(
      //   margin: EdgeInsets.only(bottom: 20),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text('Password',
      //       ),

      //       SizedBox(height: 6,),
      //       TextField(
      //         obscureText: true,
      //         cursorColor: kBlackColor,
      //         decoration: InputDecoration(
      //          hintText: 'Your pasword',
      //          border: OutlineInputBorder(
      //            borderRadius: BorderRadius.circular(
      //              defaultRadius,
      //            ),
      //          ),
      //          focusedBorder: OutlineInputBorder(
      //            borderRadius:BorderRadius.circular(
      //              defaultRadius),
      //              borderSide: BorderSide(color: kPrimaryColor)
      //          ),
      //         ),
      //       )
      //     ],
      //     ),
      // );
    }

    Widget ageInput(){
      return CustomTextFormField(title: 'Age', hintText: 'Your Age');
      // Container(
      //   margin: EdgeInsets.only(bottom: 20),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text('Age',
      //       ),

      //       SizedBox(height: 6,),
      //       TextField(
      //         cursorColor: kBlackColor,
      //         decoration: InputDecoration(
      //          hintText: 'Your age',
      //          border: OutlineInputBorder(
      //            borderRadius: BorderRadius.circular(
      //              defaultRadius,
      //            ),
      //          ),
      //          focusedBorder: OutlineInputBorder(
      //            borderRadius:BorderRadius.circular(
      //              defaultRadius),
      //              borderSide: BorderSide(color: kPrimaryColor)
      //          ),
      //         ),
      //       )
      //     ],
      //     ),
      // );
    }

    Widget submitButton(){
      return
       CustomBottom(title: 'Log In', onPressed: (){
        Navigator.pushNamed(context, '/bonus');
      });
      // Container(
      //   width: double.infinity,
      //   height: 55,
      //   child: TextButton(
      //     onPressed: () {
      //       Navigator.pushNamed(context, '/bonus');
      //     },
      //     style: TextButton.styleFrom(
      //       backgroundColor: kPrimaryColor,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(defaultRadius,)
      //       )
      //     ),
      //   child: Text('Log In',
      //   style: whiteColor.copyWith(
      //     fontSize: 18,
      //     fontWeight: medium,
      //   ),),
      //   ),
      // );
    }

      return Container(
        margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius : BorderRadius.circular(
          defaultRadius
        )
      ),
      child: Column(
        children: [
          nameInput(),
          emailInput(),
          passwordInput(),
          ageInput(),
          submitButton()
        ],
      ),
      );
    }

    Widget tacButton(){
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 50,
          bottom: 73,
        ),
        child: Text(
          'Terms and Conditions',
          style: greyColor.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}