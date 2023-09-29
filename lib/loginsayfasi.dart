import 'package:flutter/material.dart';
import 'package:login_ekran/renkler.dart';

class Loginsayfa extends StatefulWidget {
  const Loginsayfa({super.key});

  @override
  State<Loginsayfa> createState() => _LoginsayfaState();
}

class _LoginsayfaState extends State<Loginsayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Ekran Yüksekliği : $ekranYuksekligi");
    print("Ekran Genişliği : $ekranGenisligi");

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: iconButton,),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 300.0, 0.0),
            child: Text("Login",style: TextStyle(fontSize: ekranGenisligi/20,color: loginYazi,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(130, 20, 130, 20),
            child: Image.asset("resimler/LoginPhoto1.jpeg"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextButton(onPressed: () {},
                  style: TextButton.styleFrom(backgroundColor: googleButton,
                    minimumSize: Size(ekranGenisligi/2.74, ekranGenisligi/41.1),
                  ),
                  child: Text("G+",style: TextStyle(
                      color: uygulamaYazi,
                    fontWeight: FontWeight.bold,
                    fontSize: ekranGenisligi/20.55,
                  ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextButton(onPressed: () {},
                  style: TextButton.styleFrom(backgroundColor: facebookButton,
                    minimumSize: Size(ekranGenisligi/2.74, ekranGenisligi/41.1),
                  ),
                  child: Text("f",style: TextStyle(
                    color: uygulamaYazi,
                    fontWeight: FontWeight.bold,
                    fontSize: ekranGenisligi/20.55,
                  ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 17.0),
                child: Text("OR",style: TextStyle(color: standartYazi,fontFamily: "Gabarito",fontSize: ekranGenisligi/21.63,fontWeight: FontWeight.bold),),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(
                      color: standartYazi,
                      fontWeight: FontWeight.bold
                    ),
                    hintText: "example@gmail.com",
                    prefixIcon: Icon(Icons.email,color: iconButton,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(ekranGenisligi/4.11),
                      borderSide: BorderSide(color: Colors.deepOrange),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(17.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                        color: standartYazi,
                        fontWeight: FontWeight.bold
                    ),
                    hintText: "****",
                    prefixIcon: Icon(Icons.password,color: iconButton,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(ekranGenisligi/4.11),
                      borderSide: BorderSide(color: Colors.deepOrange),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(250.0, 5.0, 5.0, 5.0),
                child: InkWell(
                  onTap: () {},
                  child: Text("Forgot Password?",
                    style: TextStyle(color: standartYazi,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                    ),

                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Login", style: TextStyle(color: uygulamaYazi,fontSize: ekranGenisligi/25.68,fontFamily: "Gabarito"),),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(ekranGenisligi/2.05,ekranGenisligi/8.22)),
                    backgroundColor: MaterialStateProperty.all(iconButton),
                    textStyle: MaterialStateProperty.all(TextStyle(color: uygulamaYazi)),
                  ),
                ),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0,left: 100.0),
                child: Text("Not registered?",style: TextStyle(color: standartYazi,fontFamily: "Gabarito",fontSize: ekranGenisligi/27.4,fontWeight: FontWeight.normal),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: InkWell(
                  onTap: () {},
                  child: Text("Create Account",
                    style: TextStyle(color: iconButton,
                      fontSize: ekranGenisligi/27.4,
                      fontWeight: FontWeight.normal,
                    ),

                  ),
                ),
              ),
            ],
          ),
    ]

      ),
    );
  }
}
