import 'package:flutter/material.dart';
import 'page2.dart';

class home extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: ListView(
            children: [
              Container(
                height: 200,
                width: 500,
                child: DrawerHeader(
                  child: CircleAvatar(
                    foregroundImage: AssetImage("image/تنزيل (1) (16).jpeg"),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "مطعم الدار",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                ),
                margin: EdgeInsets.only(bottom: 10),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Divider(
                  height: 2,
                  thickness: 3,
                  color: const Color.fromARGB(255, 107, 30, 25),
                ),
              ),
              menu(Icon(Icons.home), "الصفحة الرئيسية", home(), context),
              menu(Icon(Icons.login), "تسجيل الدخول ", page2(), context),
              menu(Icon(Icons.home_work), " الواجبات", home(), context),
              menu(Icon(Icons.accessibility_new), " العملاء", home(), context),
              menu(Icon(Icons.border_outer_rounded), "الطلبات ", home(),
                  context),
              menu(Icon(Icons.design_services_outlined), "الخدمـــات ",
                  Text(""), context),
              menu(Icon(Icons.phone), "خدمة التواصل ", home(), context),
              menu(Icon(Icons.settings), " الإعدادات", home(), context),
              menu(Icon(Icons.output_outlined), " خروج", home(), context),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10, top: 10),
              width: 450,
              color: Color.fromARGB(255, 211, 174, 171),
              padding: EdgeInsets.all(20),
              height: 80,
              child: Text(
                "I am a Container",
                style: TextStyle(fontSize: 40),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 40),
              width: 200,
              color: Color.fromARGB(255, 211, 174, 171),
              padding: EdgeInsets.all(20),
              height: 100,
              transform: Matrix4.rotationZ(0.2),
              child: Text(
                "Hai, I am Slanting",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.elliptical(20, 10),
                ),
              ),
              child: Transform.rotate(
                angle: 0.1,
                child: Container(
                  margin: EdgeInsets.only(bottom: 60),
                  padding: EdgeInsets.all(10),
                  width: 350,
                  color: Color.fromARGB(255, 211, 174, 171),
                  height: 50,
                  child: Text(
                    "I am also Slanting,but see my edget",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Container(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.all(20),
                    width: 250,
                    color: Color.fromARGB(255, 181, 182, 171),
                    height: 250,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.all(20),
                    width: 150,
                    color: Color.fromARGB(255, 157, 159, 131),
                    height: 150,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.all(20),
                    width: 100,
                    color: Color.fromARGB(255, 178, 134, 131),
                    height: 100,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: 80,
                    color: Color.fromARGB(255, 211, 174, 171),
                    margin: EdgeInsets.only(bottom: 10),
                    height: 80,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: 20,
                    color: Color.fromARGB(255, 161, 55, 47),
                    margin: EdgeInsets.only(bottom: 10),
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.all(20),
                    width: 5,
                    color: Color.fromARGB(255, 197, 177, 175),
                    height: 5,
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  Padding menu(icon, txt, pagescreen, context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: ListTile(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => pagescreen,
            )),
        tileColor: Color.fromARGB(255, 107, 30, 25),
        title: Text(txt),
        leading: icon,
        trailing: Icon(Icons.forward),
      ),
    );
  }
}
