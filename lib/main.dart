import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  MySnackBar(massage, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(massage),
      ),
    );
  }

  MyAlertDialog(context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Text("Alert !"),
            content: Text("Do you want to submit?"),
            actions: [
              OutlinedButton(
                onPressed: () {
                  MySnackBar("Submited successful", context);
                  Navigator.of(context).pop();
                },
                child: Text("Yes"),
              ),
              OutlinedButton(
                onPressed: () {
                  MySnackBar("Submited unsuccessful", context);
                  Navigator.of(context).pop();
                },
                child: Text("No"),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignment-2'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0.0),
              child: UserAccountsDrawerHeader(
                accountName: Text("Yeasin Arfat Shahin"),
                accountEmail: Text("yeasin@gmail.com"),
                currentAccountPicture: Image(
                  image: NetworkImage(
                      "https://scontent.fcgp3-2.fna.fbcdn.net/v/t39.30808-6/306637857_187282833711649_5209452925738312106_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGZaQZxtTagxb1hfqKduiO05BE25o4-YbTkETbmjj5htKMRfr6ApYC235XIiuQa9d_N5XgJqHrDlAk9Ds1fp8Ya&_nc_ohc=jiDhp2WxOQ8AX9aP2pD&_nc_oc=AQmeHgHSCkM-BkPBz-s6dPUA7f2RkUteiQEdCjMSmaUTWB5WXLtqBL5twXO2EETVkrs&_nc_ht=scontent.fcgp3-2.fna&oh=00_AfCS_ulw2bRrn_5AwIJZC-EcZHjoh1aKjy8zrF0_eZPxRQ&oe=6386B21E"),
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text("Settings"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.credit_card,
                color: Colors.green,
              ),
              title: Text("Credit Card"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.subscriptions_outlined, color: Colors.red),
              title: Text("Subscrption"),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                accountName: Text("Yeasin Arfat Shahin"),
                accountEmail: Text("yeasin@gmail.com"),
                currentAccountPicture: Image(
                  image: NetworkImage(
                      "https://scontent.fcgp3-2.fna.fbcdn.net/v/t39.30808-6/306637857_187282833711649_5209452925738312106_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGZaQZxtTagxb1hfqKduiO05BE25o4-YbTkETbmjj5htKMRfr6ApYC235XIiuQa9d_N5XgJqHrDlAk9Ds1fp8Ya&_nc_ohc=jiDhp2WxOQ8AX9aP2pD&_nc_oc=AQmeHgHSCkM-BkPBz-s6dPUA7f2RkUteiQEdCjMSmaUTWB5WXLtqBL5twXO2EETVkrs&_nc_ht=scontent.fcgp3-2.fna&oh=00_AfCS_ulw2bRrn_5AwIJZC-EcZHjoh1aKjy8zrF0_eZPxRQ&oe=6386B21E"),
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text("Settings"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.credit_card,
                color: Colors.green,
              ),
              title: Text("Credit Card"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.subscriptions_outlined, color: Colors.red),
              title: Text("Subscrption"),
            ),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            MyAlertDialog(context);
          },
          child: Text("Clic me"),
        ),
      ),
    );
  }
}
