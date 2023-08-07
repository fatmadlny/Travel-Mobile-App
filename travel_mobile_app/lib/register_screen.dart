import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Register",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: Image.asset('assets/icons/ic_arrow_back.png'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(), // animasyon
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: customTextFormField("Email", Colors.black.withOpacity(0.5),
                  TextInputType.emailAddress),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 18, left: 18, right: 18),
              child: customTextFormField("Full Name",
                  Colors.black.withOpacity(0.5), TextInputType.text),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 18, left: 18, right: 18),
              child: customTextFormField("Password",
                  Colors.black.withOpacity(0.5), TextInputType.number),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 18, left: 18, right: 18),
              child: customTextFormField("Confirm Password",
                  Colors.black.withOpacity(0.5), TextInputType.number),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 72, left: 70),
              child: RichText(
                text: TextSpan(
                  text: "By continuing, you agree with our ",
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  children: [
                    WidgetSpan(
                      child: GestureDetector(  // üzerine tıklanma işlevi
                        onTap: () {},
                        child: const Text(
                          "Term & Conditions ",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff0063A7),
                          ),
                        ),
                      ),
                    ),
                    const TextSpan(text: "and "),
                    WidgetSpan(
                      child: GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Privacy Policy",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff0063A7),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 28, bottom: 18, left: 18, right: 18),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff0063A7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  "Register",
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Container(
                      height: 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 12),
                    child: Text(
                      "or register with",
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: Container(
                      height: 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Image.asset("assets/icons/ic_apple.png"),
                ),
                const SizedBox(width: 20),
                CircleAvatar(
                  backgroundColor: const Color(0xff030081),
                  child: Image.asset("assets/icons/ic_facebook.png"),
                ),
                const SizedBox(width: 20),
                CircleAvatar(
                  backgroundColor: const Color(0xff0078BC),
                  child: Image.asset("assets/icons/ic_google.png"),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 158, bottom: 20),
              child: Center(
                child: RichText(
                  text: TextSpan(
                      text: "Already have an account? ",
                      style: const TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      children: [
                        WidgetSpan(
                            child: GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Color(0xff0063A7),
                                decoration: TextDecoration.underline,
                                fontSize: 10,
                                fontWeight: FontWeight.w400),
                          ),
                        ))
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customTextFormField(
      // component
      String hintText,
      Color borderColor,
      TextInputType keyboardType) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 20, top: 17, bottom: 17),
        hintText: hintText,
        hintStyle: const TextStyle(
            fontFamily: 'Roboto',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.black),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: borderColor, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: borderColor, width: 1),
        ),
      ),
    );
  }
}