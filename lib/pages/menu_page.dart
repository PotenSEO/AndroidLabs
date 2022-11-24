import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:Androidlab/pages/login_page.dart';
import 'package:Androidlab/pages/poi_page.dart';

class MenuPage extends StatefulWidget {

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final correo=FirebaseAuth.instance.currentUser?.email;

  void initState() {
    // TODO: implement initState
    super.initState();
    String? correo=FirebaseAuth.instance.currentUser?.email.toString();
    print("----------------------->>>>>>>>>>>>>>>< "+correo!);
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                  color: Colors.blue
              ),
              child: const Icon(Icons.account_circle_outlined, size: 120, color: Colors.greenAccent,)
          ),
          Column(
            children: [
              ListTile(
                leading: const Icon(Icons.mail_lock_outlined, size: 30, color: Colors.black,),
                title: Text((correo).toString(), style: TextStyle( fontSize: 16)),
                textColor: Colors.black,
              ),
              ListTile(
                leading: const Icon(
                Icons.pin_drop, size: 30, color: Colors.black,),
                title: const Text("Machu Picchu", style: TextStyle( fontSize: 20)),
                textColor: Colors.blue,
                onTap: (){
                  FirebaseAuth.instance.signOut();
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> PoiPage()));
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.app_registration,size: 30,),
                title: const Text("Mis Mascotas", style: TextStyle( fontSize: 20)),
                textColor: Colors.blue,
                onTap: (){
                  FirebaseAuth.instance.signOut();
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MenuPage()));
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.app_registration,size: 30,),
                title: const Text("Mis Mascotas", style: TextStyle( fontSize: 20)),
                textColor: Colors.blue,
                onTap: (){
                  FirebaseAuth.instance.signOut();
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MenuPage()));
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.app_registration,size: 30,),
                title: const Text("Mis Mascotas", style: TextStyle( fontSize: 20)),
                textColor: Colors.blue,
                onTap: (){
                  FirebaseAuth.instance.signOut();
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MenuPage()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.exit_to_app, size: 20, color: Colors.blue,),
                title: const Text("Salir", style: TextStyle( fontSize: 20)),
                textColor: Colors.blue,
                onTap: (){
                  FirebaseAuth.instance.signOut();
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
                },
              )
            ],
          )
        ],
      ),
    );
  }
}

class menuInferior extends StatelessWidget {
  const menuInferior({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.white,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.app_registration,size: 30,),
            label: "Mis Mascotas"
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.app_registration,size: 30,),
            label: "Paseadores"),
        BottomNavigationBarItem(
            icon: Icon(Icons.app_registration,size: 30,),
            label: "Favoritos")
      ],
      onTap: (indice){
        if(indice==0){
          Navigator.push(context, MaterialPageRoute(builder: (contetx)=> MenuPage()));
        }else if(indice==1){
          Navigator.push(context, MaterialPageRoute(builder: (contetx)=> PoiPage()));
        }else{
          Navigator.push(context, MaterialPageRoute(builder: (contetx)=> MenuPage()));
        }
      },

    );
  }
}
