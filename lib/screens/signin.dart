import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import '/screens/register.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        colorFilter:
            ColorFilter.mode(Colors.black45.withOpacity(0.9), BlendMode.darken),
        image: const AssetImage('assets/images/MyHome.png'),
        fit: BoxFit.fitHeight,
      )),
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              const Text(
                'Signin with phone number',
                style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 40,
              ),
              IntlPhoneField(
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  isDense: true,
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                initialCountryCode: 'IN',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
              RawMaterialButton(
                fillColor: const Color.fromARGB(255, 38, 10, 224),
                constraints: const BoxConstraints.expand(
                  width: double.infinity,
                  height: 40,
                ),
                shape: RoundedRectangleBorder(
                    // side: const BorderSide(
                    //   width: 2,
                    // ),
                    borderRadius: BorderRadius.circular(3)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Register()),
                  );
                },
                child: const Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              const Divider(
                color: Colors.transparent,
              ),
              const Text(
                "We'll send OTP for verification",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 15),
              ),
              const Divider(
                color: Colors.transparent,
              ),
              Row(
                children: [
                  Expanded(
                    child: SignInButton(
                      Buttons.FacebookNew,
                      onPressed: () {
                        // _showButtonPressDialog(context, 'Google');
                      },
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.transparent,
              ),
              Row(
                children: [
                  Expanded(
                    child: SignInButton(
                      Buttons.Google,
                      onPressed: () {
                        // _showButtonPressDialog(context, 'Google');
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
