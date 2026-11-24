import 'package:e_commerce/feature/Auth/presentation/views/widgets/auth_toggel.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/custom_auth_app_bar.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/login_form.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/login_text.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/register_form.dart';
import 'package:e_commerce/feature/Auth/presentation/views/widgets/register_text.dart';
import 'package:flutter/material.dart';

class AuthViewBody extends StatefulWidget {
  const AuthViewBody({super.key});

  @override
  State<AuthViewBody> createState() => _AuthViewBodyState();
}

class _AuthViewBodyState extends State<AuthViewBody> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final String title = selectedIndex == 0 ? 'Login' : 'Register';
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 25),

          CustomAuthAppBar(title: title),
           SizedBox(height: 16,),
           if (selectedIndex == 0)
          LoginTxet()
        
        else 
        RegisterText(),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: AuthToggle(
              selectedIndex: selectedIndex,
              onChanged: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          ),

          const SizedBox(height: 25),

          // Display the selected form
          if (selectedIndex == 0)
            const LoginForm()
            
          else
            const RegisterForm(),
        ],
      ),
    );
  }
}

