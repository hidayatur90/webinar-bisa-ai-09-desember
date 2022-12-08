import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';
import 'package:hexcolor/hexcolor.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: HexColor('#FFDE5B'), //color
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              "images/bg-mid.png",
              width: 500.0,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/logo-app.png",
                  width: 300.0,
                  height: 170.0,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                // header text
                Text(
                  "Selamat Datang",
                  style: TextStyle(
                    shadows: [
                      Shadow(
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 4.0,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ],
                    color: HexColor('#343434'),
                    fontFamily: 'Red Hat Display',
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Container(
                  width: 300.0,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      blurRadius: 8,
                      offset: const Offset(0.0, 0.0),
                      color: Colors.black.withOpacity(1.0),
                      spreadRadius: -9,
                    )
                  ]),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          // fonts
                          const Text(
                            "Silahkan login terlebih dahulu",
                            style: TextStyle(
                              fontSize: 13.0,
                              fontFamily: 'Red Hat Display',
                            ),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Container(
                            // height: 40,
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                offset: const Offset(0.0, 0.0),
                                color: Colors.black.withOpacity(1.0),
                                spreadRadius: -9,
                              )
                            ]),
                            // form
                            child: TextFormField(
                              maxLines: 1,
                              obscureText: false,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'Username',
                                hintStyle: const TextStyle(
                                  fontFamily: 'Red Hat Display',
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                  borderSide: BorderSide(
                                      color: HexColor('#FFDE5B'), width: 1.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                  borderSide: BorderSide(
                                      color: HexColor('#C4C4C4'), width: 1.0),
                                ),
                              ),
                              onChanged: (value) {},
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            // height: 40,
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                offset: const Offset(0.0, 0.0),
                                color: Colors.black.withOpacity(1.0),
                                spreadRadius: -9,
                              )
                            ]),
                            child: TextFormField(
                              maxLines: 1,
                              obscureText: true,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'Password',
                                hintStyle: const TextStyle(
                                  fontFamily: 'Red Hat Display',
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                  borderSide: BorderSide(
                                      color: HexColor('#FFDE5B'), width: 1.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                  borderSide: BorderSide(
                                      color: HexColor('#C4C4C4'), width: 1.0),
                                ),
                              ),
                              onChanged: (value) {},
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          // button
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 34.0,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: HexColor('#FFDE59'),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7.0),
                                ),
                              ),
                              onPressed: () {
                                controller.doLogin();
                              },
                              child: const Text(
                                "LOGIN",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // text
                    Text(
                      "Belum memiliki akun?",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: HexColor('#625050'),
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    InkWell(
                      onTap: () {
                        controller.moveToRegister();
                      },
                      child: Text(
                        "Buat Akun",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: HexColor('#625050'),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: MaterialButton(
                onPressed: () => {},
                // text
                child: Text(
                  "© jamuraja",
                  style: TextStyle(
                    color: HexColor('#FFFCFC'),
                    fontFamily: 'Red Hat Display',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
