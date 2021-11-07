
import 'package:correctfan/Screens/Drawer/TransactionHistory.dart';
import 'package:correctfan/Screens/Drawer/Verification/AccountVerification.dart';
import 'package:correctfan/constants/controllers.dart';
import 'package:correctfan/constants/ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    TextStyle tileTheme = AppTheme.headline5(context, white);

    // final authService = Provider.of<AuthService>(context);
    return Drawer(
      elevation: 8,
      child: Container(
        color: secondary,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 56),
          primary: true,
          clipBehavior: Clip.antiAlias,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: GestureDetector(
                    onTap: () =>
                        Get.toNamed('Profile'),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Name',
                                style:AppTheme.headline4(context, white)),
                            Text('@username',
                                style: AppTheme.headline5(context, white))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.chevron_left_rounded),
                  color: Colors.white,
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              isThreeLine: true,
              leading: Icon(
                Icons.account_balance_wallet_rounded,
                color: Colors.white,
              ),
              title: Text('My Wallet', style: tileTheme),
              subtitle: Row(children: [
                Text(
                  'Reward Bank',
                  style: AppTheme.headline6(context, white)
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '\$\$\$',
                      style: AppTheme.headline6(context, white)
                      ),
                  ],
                ),
              ]),
              onTap: () {},
              trailing: Text(
                '\$\$\$',
                style: AppTheme.headline6(context, white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              title: Text('Verify My Account', style: tileTheme),
              onTap: () => Get.to(AccountVerification()),
            ),
            ListTile(
              leading: Icon(
                Icons.history,
                color: Colors.white,
              ),
              title: Text('Transaction History', style: tileTheme),
              onTap: () => Get.to(TransactionHistory()),
            ),
            ListTile(
              leading: Icon(
                Icons.sports_soccer_rounded,
                color: Colors.white,
              ),
              title: Text('How to Play', style: tileTheme),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.tune_rounded,
                color: Colors.white,
              ),
              title: Text('Privacy and Settings', style: tileTheme),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.help,
                color: Colors.white,
              ),
              title: Text('Support', style: tileTheme),
              onTap: () {},
            ),
            ListTile(
              leading:
                  ImageIcon(AssetImage('assets/images/correctfanIcon.png')),
              title: Text('About CorrectFan', style: tileTheme),
              onTap: () {},
            ),
            Container(
              height: height(8, context),
            ),
            ListTile(
              trailing: Column(children: [
                Icon(Icons.exit_to_app, color: white),
                Text(
                  'Sign Out',
                  style: AppTheme.headline6(context, white),
                )
              ]),
              // title: Spacer(flex: 1, ),
              onTap: () {
                authController.signOut();
              },
            ),
          ],
        ),
      ),
    );
  }
}
