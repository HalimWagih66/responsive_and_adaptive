import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/layouts/adaptive_layout.dart';
import 'package:responsive_and_adaptive/widgets/custom_drawer.dart';
import 'package:responsive_and_adaptive/widgets/desktop_layout.dart';
import 'package:responsive_and_adaptive/widgets/mobile_layout.dart';
import '../utils/size_config.dart';
import '../widgets/tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet?AppBar(
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
          icon: const Icon(Icons.menu),
        ),
      ):null,
      backgroundColor: const Color(0xfff7f9fa),
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet?const CustomDrawer():null,
      body: AdaptiveLayout(
          desktopLayout: (context) => const DesktopLayout(),
          tabletLayout: (context) => const TabletLayout(),
          mobileLayout: (context) => const MobileLayout(),
      ),
    );
  }
}
