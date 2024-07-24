import 'package:flutter/material.dart';
import 'package:portfilo_site/constains/colors.dart';
import 'package:portfilo_site/constains/size.dart';
import 'package:portfilo_site/widgets/contact_section.dart';
import 'package:portfilo_site/widgets/drawer_mobile.dart';
import 'package:portfilo_site/widgets/footer.dart';

import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/main_desktop.dart';
import '../widgets/main_mobile.dart';
import '../widgets/project_section.dart';
import '../widgets/skills_desktop.dart';
import '../widgets/skills_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return LayoutBuilder(builder: (context, constains) {
      return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColors.scaffoldBG,
          endDrawer: constains.maxWidth >= kMinDesktopWidth
              ? null
              : DrawerMobile(
                  onNavItemTap: (int navIndex) {
                    scaffoldKey.currentState?.closeEndDrawer();

                    //call function
                    scrollToSection(navIndex);
                  },
                ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            controller: scrollController,
            child: Column(
              children: [
                //Main
                SizedBox(
                  key: navbarKeys.first,
                ),
                if (constains.maxWidth >= kMinDesktopWidth)
                  HeaderDesktop(
                    onNavMenuTap: (int index) {
                      //call function
                      scrollToSection(index);
                    },
                  )
                else
                  HeaderMobile(
                    onLogoTap: () {},
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),

                // MainDesktop(),

                if (constains.maxWidth >= kMinDesktopWidth)
                  const MainDesktop()
                else
                  MainMobile(),
                //Skills

                Container(
                  key: navbarKeys[1],
                  // height: 500,
                  width: size.width,
                  padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                  color: CustomColors.bgLight11,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //title
                      Text(
                        "What I can do",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: CustomColors.whitePrimary),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      // SkillsDesktop()
                      //platform and skills
                      if (constains.maxWidth >= kMedDesktopWidth)
                        SkillsDesktop()
                      else
                        SkillsMobile()
                    ],
                  ),
                ),
                //Projects
                ProjectSection(
                  key: navbarKeys[2],
                ),
                SizedBox(
                  height: 30,
                ),

                //Contacts
                ContactSection(
                  key: navbarKeys[3],
                ),
                //Footer
                Footer()
              ],
            ),
          ));
    });
  }

  OutlineInputBorder get getBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      return;
    }
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
