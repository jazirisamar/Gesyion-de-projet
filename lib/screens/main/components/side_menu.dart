import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFEF1EF5), Color(0xFF6D34A7)], // Remplacez par les couleurs de votre choix
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/images/img1.jpg"),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "SMS TIM",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            DrawerListTile(
              title: "Tableau de bord",
              svgSrc: "assets/icons/menu_dashboard.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Equipe",
              svgSrc: "assets/icons/menu_tran.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Backlog",
              svgSrc: "assets/icons/menu_task.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Chronologie",
              svgSrc: "assets/icons/menu_doc.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Tableau",
              svgSrc: "assets/icons/menu_store.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Ticket",
              svgSrc: "assets/icons/menu_notification.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Profil",
              svgSrc: "assets/icons/menu_profile.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Commentaires",
              svgSrc: "assets/icons/menu_setting.svg",
              press: () {},
            ),
            Divider(
              color: Colors.white54,
              thickness: 1,
            ),
            DrawerListTile(
              title: "Se Déconnecter",
              svgSrc: "assets/icons/menu_logout.svg",
              press: () {
                // Log out action
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        colorFilter: ColorFilter.mode(Colors.white54, BlendMode.srcIn),
        height: 20,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
