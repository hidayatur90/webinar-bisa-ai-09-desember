import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';
import 'package:hexcolor/hexcolor.dart';
import '../controller/profile_controller.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
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
          "Profil",
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'Red Hat Display',
            color: HexColor('#2F4545'),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
              onPressed: () => controller.doLogout(),
              icon: Icon(
                Icons.logout,
                size: 24.0,
                color: HexColor('#2F4545'),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              "images/logo-with-opacity.png",
              width: 350.0,
              height: 220.0,
              fit: BoxFit.fill,
              color: const Color.fromRGBO(255, 255, 255, 0.5),
              colorBlendMode: BlendMode.modulate,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: SizedBox(
                        height: 150.0,
                        width: 150.0,
                        child: CircleAvatar(
                          radius: 28.0,
                          backgroundImage: NetworkImage(
                            "https://i.ibb.co/PGv8ZzG/me.jpg",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      readOnly: true,
                      initialValue: 'Rendy Kurniawan',
                      decoration: InputDecoration(
                        labelText: 'Nama Anda',
                        labelStyle: TextStyle(
                          fontFamily: 'Red Hat Display',
                          color: HexColor('#C4C4C4'),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide: BorderSide(
                              color: HexColor('#C4C4C4'), width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide: BorderSide(
                              color: HexColor('#C4C4C4'), width: 1.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      readOnly: true,
                      initialValue: '08175729371',
                      decoration: InputDecoration(
                        labelText: 'No Telepon',
                        labelStyle: TextStyle(
                          fontFamily: 'Red Hat Display',
                          color: HexColor('#C4C4C4'),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide: BorderSide(
                              color: HexColor('#C4C4C4'), width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide: BorderSide(
                              color: HexColor('#C4C4C4'), width: 1.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      maxLines: 3,
                      readOnly: true,
                      initialValue:
                          'Desa Cindogo, Kecamatan Tapen, Kabupaten Bondowoso',
                      decoration: InputDecoration(
                        labelText: 'Alamat',
                        labelStyle: TextStyle(
                          fontFamily: 'Red Hat Display',
                          color: HexColor('#C4C4C4'),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide: BorderSide(
                              color: HexColor('#C4C4C4'), width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide: BorderSide(
                              color: HexColor('#C4C4C4'), width: 1.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: HexColor('#FFDE59'),
                        ),
                        child: const Text(
                          'Edit Profil',
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
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
