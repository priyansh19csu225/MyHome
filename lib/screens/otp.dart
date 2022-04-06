import 'package:flutter/material.dart';

class Otp extends StatelessWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          colorFilter: ColorFilter.mode(
              Colors.black45.withOpacity(0.9), BlendMode.darken),
          image: const AssetImage('assets/images/MyHome.png'),
          fit: BoxFit.fitHeight,
        )),
        child: Material(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      onPressed: (() {
                        Navigator.pop(context);
                      }),
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                ),
                const SizedBox(
                  height: 140,
                ),
                Center(
                  child: const Text(
                    'Enter the Otp Code from the phone we just sent you',
                    style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w700,
                        fontSize: 15),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                RawMaterialButton(
                  fillColor: const Color.fromARGB(255, 38, 10, 224),
                  constraints: const BoxConstraints.expand(
                    width: double.infinity,
                    height: 45,
                  ),
                  shape: RoundedRectangleBorder(
                      // side: const BorderSide(
                      //   width: 2,
                      // ),
                      borderRadius: BorderRadius.circular(3)),
                  onPressed: () {
                    //    Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const Home()),
                    //    );
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
              ],
            ),
          ),
        ));
  }
}
