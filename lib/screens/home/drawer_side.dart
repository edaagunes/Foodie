import 'package:bitirme_proje/screens/my_profile/my_profile.dart';
import 'package:flutter/material.dart';
import 'package:bitirme_proje/config/colors.dart';


class DrawerSide extends StatelessWidget {
  Widget listTile({String? title,IconData? iconData, Function()? onTap}) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        iconData,
        size: 32,
      ),
      title: Text(
        title!,
        style: TextStyle(color: textColor),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
   return Drawer(
    child: Container(
      width: 100,
      color: primaryColor,
      child: ListView(
        children: [
          DrawerHeader(
            child: Row(
              children: [
                const CircleAvatar(
                      backgroundColor: Colors.white54,
                      radius: 43,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.yellow,
                        backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSg88oFQQ_ByNPMh5tWiVQeYc7PyDEFz54E5Q&usqp=CAU"
                        ), 
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Welcome Guest"),
                        SizedBox(
                          height: 7,
                        ),
                     Container(
                          height: 30,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text("Login"),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                side: BorderSide(
                                  width: 2,
                                  color: textColor,
                                ),
                                ),
                              ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              listTile(iconData: Icons.home_outlined, title: "Home"),
              listTile(iconData: Icons.shop_outlined, title: "Review Cart"),
              listTile(
                iconData: Icons.person_outlined,
                title: "My Profile",
                onTap:(){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>MyProfile(),
                    ),);
                },
                ),
              listTile(iconData: Icons.notifications_outlined, title: "Notification"),
              listTile(iconData: Icons.favorite_outlined, title: "Wishlist"),

              Container(
                height: 350,
                padding: EdgeInsets.symmetric(horizontal:20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Contact Support"),
                    const SizedBox(
                      height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: const [
                            Text("Mail us:"),
                            SizedBox(
                              width: 10,
                              ),
                            Text(
                            "hello@retry.com",
                            overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                  ],
                  ),
              ),
              ],
            ),
            ),
      );
  }
}