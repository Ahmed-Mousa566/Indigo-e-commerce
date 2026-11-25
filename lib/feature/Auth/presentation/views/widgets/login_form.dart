
import 'package:e_commerce/feature/Auth/presentation/views/widgets/custom_botttom.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/emali_labal.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/or_divider.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/password_lable.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/remmeber_me.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/social_button.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/social_buttons_row.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/text_form_failed.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
         
          color: Colors.white,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EmailLable(),
              SizedBox(height: 6),
              TextFormFailed(
                prefixIcon: Icon(Icons.email_outlined, color: Color(0xff8D7168)),
                hint: "Email@example.com",
                 obscureText: false),
              SizedBox(height: 16),
              PasswordLable(),
              SizedBox(height: 6),
              TextFormFailed(
                prefixIcon: Icon(Icons.lock_outlined, color: Color(0xff8D7168)),
                hint: "••••••••••••",
                obscureText: true),
      
                SizedBox(height: 24),
                
      
               RememberMeRow(),
               SizedBox(height: 16,),
      
                Custombutton(text: "Login", ontap: null),
      
                SizedBox(height: 16,),
      
               OrDivider(),
      
                SizedBox(height: 16,),
      
                SocialButtonsRow(),
      
      
      
      
                 
      
      
      
      
            ],
          ),
        ),
      ),
    );
  }
}

