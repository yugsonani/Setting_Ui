import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp((Platform.isAndroid)
      ? MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {'/': (context) => const MyApp()},
  )
      : (Platform.isIOS)
      ? const CupertinoApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
      : Container());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting UI"),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Common",
              style: TextStyle(color: Colors.redAccent, fontSize: 15),
            ),
            const ListTile(
              leading: Icon(Icons.language),
              title: Text("Language"),
              subtitle: Text("English"),
            ),
            const ListTile(
              leading: Icon(Icons.cloud_outlined),
              title: Text("Environment"),
              subtitle: Text("Production"),
            ),
            const Text(
              "Account",
              style: TextStyle(color: Colors.redAccent, fontSize: 15),
            ),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text("Phone number"),
            ),
            const ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
            ),
            const ListTile(
              leading: Icon(Icons.logout),
              title: Text("Sign out"),
            ),
            const Text(
              "Security",
              style: TextStyle(color: Colors.redAccent, fontSize: 15),
            ),
            ListTile(
              leading: const Icon(Icons.phonelink_lock),
              title: const Text("Lock App in background"),
              trailing: Switch(
                  onChanged: (val) {
                    setState(() {
                      switchVal = val;
                    });
                  },
                  value: switchVal,
                  activeColor: Colors.redAccent),
            ),
            ListTile(
              leading: const Icon(Icons.fingerprint),
              title: const Text("Use FingerPrint"),
              trailing: Switch(
                  onChanged: (val) {
                    setState(() {
                      switchVal2 = val;
                    });
                  },
                  value: switchVal2,
                  activeColor: Colors.redAccent),
            ),
            ListTile(
              leading: const Icon(Icons.lock),
              title: const Text("Change Password"),
              trailing: Switch(
                  onChanged: (val) {
                    setState(() {
                      switchVal3 = val;
                    });
                  },
                  value: switchVal3,
                  activeColor: Colors.redAccent),
            ),
            const Text(
              "Misc",
              style: TextStyle(color: Colors.redAccent, fontSize: 15),
            ),
            const ListTile(
              leading: Icon(Icons.insert_drive_file_sharp),
              title: Text("Terms of Service"),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            const ListTile(
              leading: Icon(Icons.source),
              title: Text("Open Source Licence"),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
          ],
        ),
      ),
    );
  }
}

bool switchVal = false;
bool switchVal2 = false;
bool switchVal3 = false;
bool switchValI = false;
bool switchValI2 = false;
bool switchValI3 = false;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.opaqueSeparator.elevatedColor,
      navigationBar: const CupertinoNavigationBar(
        middle: Text(
          "Setting UI",
        ),
        backgroundColor: CupertinoColors.destructiveRed,
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                "Common",
                style: TextStyle(color: CupertinoColors.inactiveGray),
              ),
            ),
            Container(
              height: 50,
              color: CupertinoColors.white,
              child: Row(
                children: const [
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.circle_grid_hex,
                        color: CupertinoColors.inactiveGray,
                      )),
                  Expanded(flex: 4, child: Text("Language")),
                  Expanded(flex: 2, child: Text("English")),
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.forward,
                        color: CupertinoColors.inactiveGray,
                      ))
                ],
              ),
            ),
            Container(
              height: 50,
              color: CupertinoColors.white,
              child: Row(
                children: const [
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.cloud,
                        color: CupertinoColors.inactiveGray,
                      )),
                  Expanded(flex: 4, child: Text("Environment")),
                  Expanded(flex: 2, child: Text("Production")),
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.forward,
                        color: CupertinoColors.inactiveGray,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                "Account",
                style: TextStyle(color: CupertinoColors.inactiveGray),
              ),
            ),
            Container(
              height: 50,
              color: CupertinoColors.white,
              child: Row(
                children: const [
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.phone_fill,
                        color: CupertinoColors.inactiveGray,
                      )),
                  Expanded(flex: 5, child: Text("Phone Number")),
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.forward,
                        color: CupertinoColors.inactiveGray,
                      ))
                ],
              ),
            ),
            Container(
              height: 50,
              color: CupertinoColors.white,
              child: Row(
                children: const [
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.mail_solid,
                        color: CupertinoColors.inactiveGray,
                      )),
                  Expanded(flex: 5, child: Text("Email")),
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.forward,
                        color: CupertinoColors.inactiveGray,
                      ))
                ],
              ),
            ),
            Container(
              height: 50,
              color: CupertinoColors.white,
              child: Row(
                children: const [
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.square_arrow_right,
                        color: CupertinoColors.inactiveGray,
                      )),
                  Expanded(flex: 5, child: Text("Sign Out")),
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.forward,
                        color: CupertinoColors.inactiveGray,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                "Security",
                style: TextStyle(color: CupertinoColors.inactiveGray),
              ),
            ),
            Container(
              height: 50,
              color: CupertinoColors.white,
              child: Row(
                children: [
                  const Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.lock_shield_fill,
                        color: CupertinoColors.inactiveGray,
                      )),
                  const Expanded(
                      flex: 4, child: Text("Lock app in background")),
                  Expanded(
                      flex: 1,
                      child: CupertinoSwitch(
                        activeColor: CupertinoColors.destructiveRed,
                        value: switchValI,
                        onChanged: (val) {
                          setState(() {
                            switchValI = val;
                          });
                        },
                      ))
                ],
              ),
            ),
            Container(
              height: 50,
              color: CupertinoColors.white,
              child: Row(
                children: [
                  const Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.hand_thumbsup_fill,
                        color: CupertinoColors.inactiveGray,
                      )),
                  const Expanded(flex: 4, child: Text("Use fingerPrint")),
                  Expanded(
                      flex: 1,
                      child: CupertinoSwitch(
                        activeColor: CupertinoColors.destructiveRed,
                        value: switchValI2,
                        onChanged: (val) {
                          setState(() {
                            switchValI2 = val;
                          });
                        },
                      ))
                ],
              ),
            ),
            Container(
              height: 50,
              color: CupertinoColors.white,
              child: Row(
                children: [
                  const Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.lock_fill,
                        color: CupertinoColors.inactiveGray,
                      )),
                  const Expanded(flex: 4, child: Text("Change password")),
                  Expanded(
                      flex: 1,
                      child: CupertinoSwitch(
                        activeColor: CupertinoColors.destructiveRed,
                        value: switchValI3,
                        onChanged: (val) {
                          setState(() {
                            switchValI3 = val;
                          });
                        },
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                "misc",
                style: TextStyle(color: CupertinoColors.systemGrey),
              ),
            ),
            Container(
              height: 50,
              color: CupertinoColors.white,
              child: Row(
                children: const [
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.text_insert,
                        color: CupertinoColors.inactiveGray,
                      )),
                  Expanded(flex: 4, child: Text("Terms of Service")),
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.forward,
                        color: CupertinoColors.inactiveGray,
                      ))
                ],
              ),
            ),
            Container(
              height: 50,
              color: CupertinoColors.white,
              child: Row(
                children: const [
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.square_fill_on_square_fill,
                        color: CupertinoColors.inactiveGray,
                      )),
                  Expanded(flex: 4, child: Text("Open source licences")),
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.forward,
                        color: CupertinoColors.inactiveGray,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
