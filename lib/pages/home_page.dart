import 'package:flutter/material.dart';

import 'view_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff282b33),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Image.asset("images/logo.png"),
          ),
          Image.asset("images/black.png"),
          const ListTile(
            title: Text(
              "100% electric",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.white,
              ),
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "100% revolutionarv",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const ListTile(
            title: Text(
              "with an updated motor ,automatic electronic gear shifting ,and integrated anti -theft tech the e Bike v3 & m3 are custom-tuned for the ultunate and sport riding experience",
              style: TextStyle(
                color: Color(0xffc2c6ca),
                letterSpacing: 2,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const ViewPage()));
            },
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )),
            child: Ink(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff5894fe),
                    Color(0xff5e65fe),
                  ],
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                width: 250,
                height: 65,
                alignment: Alignment.center,
                child: const Text(
                  "Buy Now",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
