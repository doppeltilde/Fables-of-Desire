import 'package:fablesofdesire/global/settings_widget.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:url_launcher/url_launcher.dart';

class Credits extends StatefulWidget {
  final player;
  final audioPlayer;
  Credits({Key? key, this.player, this.audioPlayer});

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Credits>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  @override
  void initState() {
    super.initState();
    getVolume();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOutCubic,
    ).drive(Tween(begin: 0, end: 2));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  double? vol = 1.0;
  getVolume() async {
    vol = await getVolumeState();
    setState(() {});
  }

  saveVolumeState(value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setDouble("volValue", value);
  }

  getVolumeState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    double? vol = prefs.getDouble('volValue');

    return vol;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bgs/mininature_001_19201440.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
            appBar: AppBar(
              toolbarOpacity: 1,
              elevation: 0,
              backgroundColor: Colors.transparent,
              automaticallyImplyLeading: true,
            ),
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            body: Stack(children: <Widget>[
              Center(
                child: new Container(
                  child: SafeArea(
                    child: new SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          ProfileListItem(
                            icon: Icons.face_outlined,
                            text: 'Credits',
                          ),
                          SizedBox(
                            height: 55,
                          ),
                          ProfileListItem(
                            icon: Icons.privacy_tip_outlined,
                            text: 'Privacy',
                          ),
                          ProfileListItem(
                            icon: Icons.policy_outlined,
                            text: 'Terms of Service',
                          ),
                          SizedBox(
                            height: 55,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            height: 70,
                            margin: EdgeInsets.symmetric(
                              horizontal: 10,
                            ).copyWith(
                              bottom: 20,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Theme.of(context).cardColor,
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Developed with ♥ in",
                                    style: TextStyle(
                                        fontSize: 22, fontFamily: "Aleo"),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      controller
                                        ..reset()
                                        ..forward();
                                    },
                                    child: RotationTransition(
                                      turns: animation,
                                      child: FlutterLogo(
                                        size: 110,
                                        style: FlutterLogoStyle.horizontal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ])));
  }
}
