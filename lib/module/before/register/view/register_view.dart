import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';
import 'package:hexcolor/hexcolor.dart';
import '../controller/register_controller.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  Widget build(context, RegisterController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: HexColor('#FFDE5B'),
        title: Text(
          "Buat Akun",
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'Red Hat Display',
            color: HexColor('#2F4545'),
          ),
        ),
        actions: const [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'Lengkapi data diri Anda',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Red Hat Display',
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Container(
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
                  obscureText: false,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Nama Lengkap',
                    hintStyle: const TextStyle(
                      fontFamily: 'Red Hat Display',
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      borderSide:
                          BorderSide(color: HexColor('#FFDE5B'), width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      borderSide:
                          BorderSide(color: HexColor('#C4C4C4'), width: 1.0),
                    ),
                  ),
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'Jenis Kelamin',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Red Hat Display',
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: const Text(
                        'Laki-laki',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Red Hat Display',
                        ),
                      ),
                      leading: Radio(
                        value: 1,
                        groupValue: controller.radio,
                        onChanged: (value) => controller.setValue(value),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: const Text(
                        'Perempuan',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Red Hat Display',
                        ),
                      ),
                      leading: Radio(
                        value: 2,
                        groupValue: controller.radio,
                        onChanged: (value) => controller.setValue(value),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
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
                  obscureText: false,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'No Telepon',
                    hintStyle: const TextStyle(
                      fontFamily: 'Red Hat Display',
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      borderSide:
                          BorderSide(color: HexColor('#FFDE5B'), width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      borderSide:
                          BorderSide(color: HexColor('#C4C4C4'), width: 1.0),
                    ),
                  ),
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    offset: const Offset(0.0, 0.0),
                    color: Colors.black.withOpacity(1.0),
                    spreadRadius: -9,
                  )
                ]),
                child: TextFormField(
                  maxLines: 5,
                  obscureText: false,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Alamat',
                    hintStyle: const TextStyle(
                      fontFamily: 'Red Hat Display',
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      borderSide:
                          BorderSide(color: HexColor('#FFDE5B'), width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      borderSide:
                          BorderSide(color: HexColor('#C4C4C4'), width: 1.0),
                    ),
                  ),
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'Username & Password',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Red Hat Display',
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Container(
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
                      borderSide:
                          BorderSide(color: HexColor('#FFDE5B'), width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      borderSide:
                          BorderSide(color: HexColor('#C4C4C4'), width: 1.0),
                    ),
                  ),
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Container(
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
                      borderSide:
                          BorderSide(color: HexColor('#FFDE5B'), width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      borderSide:
                          BorderSide(color: HexColor('#C4C4C4'), width: 1.0),
                    ),
                  ),
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Container(
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
                    hintText: 'Confirm Password',
                    hintStyle: const TextStyle(
                      fontFamily: 'Red Hat Display',
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      borderSide:
                          BorderSide(color: HexColor('#FFDE5B'), width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      borderSide:
                          BorderSide(color: HexColor('#C4C4C4'), width: 1.0),
                    ),
                  ),
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 150,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: HexColor('#FFDE59'),
                      ),
                      child: const Text(
                        'DAFTAR',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      onPressed: () {},
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

  @override
  State<RegisterView> createState() => RegisterController();
}
