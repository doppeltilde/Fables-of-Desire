import 'package:easy_localization/easy_localization.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:games_services/games_services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:package_info/package_info.dart';
import 'package:fablesofdesire/globals/theme.dart';
import 'package:fablesofdesire/screens/pages/more/more.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'settings_widget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<MyHomePage> {
  String? _name;

  bool? isSwitchedFT = true;
  bool? isNoti = true;
  @override
  void initState() {
    super.initState();
    _initPackageInfo();
    getSwitchValues();
    getNotiValues();
    print(_name);
    SharedPreferences.getInstance().then((prefValue) => {
          setState(() {
            _name = prefValue.getString('letterTea');
          })
        });
  }

  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
  );
  Future<void> _initPackageInfo() async {
    final PackageInfo info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  getSwitchValues() async {
    isSwitchedFT = await getSwitchState();
    setState(() {});
  }

  Future<bool> saveSwitchState(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("switchState", value);
    return prefs.setBool("switchState", value);
  }

  Future<bool?> getSwitchState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isSwitchedFT = prefs.getBool("switchState");
    print(isSwitchedFT);

    return isSwitchedFT;
  }

  getNotiValues() async {
    isNoti = await getNotiState();
    setState(() {});
  }

  Future<bool> saveNotiState(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("notiState", value);
    return prefs.setBool("notiState", value);
  }

  Future<bool?> getNotiState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isNoti = prefs.getBool("notiState");
    print(isNoti);

    return isNoti;
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return WillPopScope(
      onWillPop: () => getOnWillPop(context),
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05,
                      vertical: MediaQuery.of(context).size.height * 0.02),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 30),
                      Text(
                        tr('game_name'),
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            fontFamily: "BottleParty"),
                      ),
                      SizedBox(height: 15),
                      Divider(
                        height: 20,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 55,
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
                        child: Row(
                          children: <Widget>[
                            themeProvider.isLightTheme!
                                ? Icon(
                                    Icons.wb_sunny_rounded,
                                    size: 25,
                                  )
                                : Icon(
                                    Icons.nights_stay,
                                    size: 25,
                                  ),
                            SizedBox(width: 15),
                            Text(
                              "Change Theme",
                              style: GoogleFonts.arvo(
                                fontSize: 18,
                              ),
                            ),
                            Spacer(),
                            Switch.adaptive(
                                value: themeProvider.isLightTheme!,
                                onChanged: (bool value) async {
                                  await themeProvider.toggleThemeData();
                                  themeProvider.isLightTheme = value;
                                }),
                          ],
                        ),
                      ),
                      Container(
                        height: 55,
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
                        child: Row(
                          children: <Widget>[
                            isSwitchedFT!
                                ? Icon(
                                    Icons.music_note,
                                    size: 25,
                                  )
                                : Icon(
                                    Icons.music_off,
                                    size: 25,
                                  ),
                            SizedBox(width: 15),
                            Text(
                              "Music Volume",
                              style: GoogleFonts.arvo(
                                fontSize: 18,
                              ),
                            ),
                            Spacer(),
                            Switch.adaptive(
                              value: isSwitchedFT!,
                              onChanged: (bool value) {
                                setState(() {
                                  isSwitchedFT!
                                      ? FlameAudio.bgm.pause()
                                      : FlameAudio.bgm.resume();

                                  isSwitchedFT = value;
                                  saveSwitchState(value);
                                  //switch works
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 55,
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
                        child: Row(
                          children: <Widget>[
                            isNoti!
                                ? Icon(
                                    Icons.notifications_active_outlined,
                                    size: 25,
                                  )
                                : Icon(
                                    Icons.notifications_off_outlined,
                                    size: 25,
                                  ),
                            SizedBox(width: 15),
                            Text(
                              "Message Volume",
                              style: GoogleFonts.arvo(
                                fontSize: 18,
                              ),
                            ),
                            Spacer(),
                            Switch.adaptive(
                              value: isNoti!,
                              onChanged: (bool value) {
                                setState(() {
                                  isNoti = value;
                                  saveNotiState(value);
                                  //switch works
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 55,
                      ),
                      GestureDetector(
                        onTap: () => GamesServices.showLeaderboards(
                            iOSLeaderboardID: "12172020"),
                        child: Container(
                          height: 55,
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
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.leaderboard_outlined,
                                size: 25,
                              ),
                              SizedBox(width: 15),
                              Text(
                                "Leaderboard",
                                style: GoogleFonts.arvo(
                                  fontSize: 18,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.chevron_right_rounded,
                                size: 25,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => GamesServices.showAchievements(),
                        child: Container(
                          height: 55,
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
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.star_border_rounded,
                                size: 25,
                              ),
                              SizedBox(width: 15),
                              Text(
                                "Achievements",
                                style: GoogleFonts.arvo(
                                  fontSize: 18,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.chevron_right_rounded,
                                size: 25,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 55,
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
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.check_circle_outline,
                              size: 25,
                            ),
                            SizedBox(width: 15),
                            Text(
                              "Game Version",
                              style: GoogleFonts.arvo(
                                fontSize: 18,
                              ),
                            ),
                            Spacer(),
                            Text(
                              _packageInfo.version,
                              style: GoogleFonts.arvo(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 55,
                      ),
                      GestureDetector(
                        onTap: () async {
                          const url = 'https://starhelix.space/privacy-policy/';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: ProfileListItem(
                          icon: Icons.privacy_tip_outlined,
                          text: 'Privacy',
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          const url =
                              'https://starhelix.space/terms-of-service/';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: ProfileListItem(
                          icon: Icons.policy_outlined,
                          text: 'Terms of Service',
                        ),
                      ),
                      SizedBox(
                        height: 55,
                      ),
                      Builder(
                        builder: (context) {
                          if (_name == null) {
                            return SizedBox.shrink();
                          } else {
                            return GestureDetector(
                              onTap: () => Navigator.of(context)
                                  .pushNamed("/lettertotea"),
                              child: Container(
                                height: 55,
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
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.bookmark_outline,
                                      size: 25,
                                    ),
                                    SizedBox(width: 15),
                                    Text(
                                      "Letter to Tea",
                                      style: GoogleFonts.arvo(
                                        fontSize: 18,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.chevron_right_rounded,
                                      size: 25,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
