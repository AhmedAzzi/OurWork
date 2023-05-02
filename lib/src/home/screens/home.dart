import 'package:my_medics/src/constants/image_strings.dart';
import 'package:my_medics/src/constants/text_strings.dart';
import 'package:my_medics/src/home/models/tabs_model.dart';
import 'package:my_medics/src/home/screens/home_tabs/tab_drops.dart';
import 'package:my_medics/src/home/screens/home_tabs/tab_injection.dart';
import 'package:my_medics/src/home/screens/home_tabs/tab_pomade.dart';
import 'package:my_medics/src/home/screens/home_tabs/tab_suyro.dart';
import 'package:my_medics/src/home/screens/home_tabs/tab_tablets.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> myTabs = const [
    TabsModel(
      icon: tSuyro,
    ),
    TabsModel(
      icon: tTablets,
    ),
    TabsModel(
      icon: tInjection,
    ),
    TabsModel(
      icon: tDrops,
    ),
    TabsModel(
      icon: tPomad,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
                child: Row(
                  children: [
                    Text(
                      tHomeHeadline,
                      style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                    ),
                    const Text(
                      tMedical,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              // tab bar
              TabBar(
                tabs: myTabs,
                mouseCursor: MouseCursor.defer,
              ),
              // tab bar view
              Expanded(
                child: TabBarView(
                  children: [
                    SuyroTab(),
                    TabletsTab(),
                    InjectionTab(),
                    DropsTab(),
                    PomadTab(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
