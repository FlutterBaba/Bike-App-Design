import 'package:flutter/material.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  bool eBike3 = true;
  bool eBikeM3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff282b33),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Configure your bike",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            height: 240,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/whiteBike.png"),
              ),
            ),
          ),
          Column(
            children: [
              SingleProduct(
                onTap: () {
                  setState(() {
                    eBike3 = true;
                    eBikeM3 = false;
                  });
                },
                productImage: "images/helfCycle.png",
                productKG: "For riders 170-210cm",
                productName: "eBike V3",
                productWheel: "28 wheels",
                selected: eBike3,
              ),
              SingleProduct(
                onTap: () {
                  setState(() {
                    eBike3 = false;
                    eBikeM3 = true;
                  });
                },
                productImage: "images/helfCycle.png",
                productKG: "For riders 155-200cm",
                productName: "eBike M3",
                productWheel: "24 wheels",
                selected: eBikeM3,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Total",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "\$1,998",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
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
                      width: 150,
                      height: 45,
                      alignment: Alignment.center,
                      child: const Text(
                        "Next",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SingleProduct extends StatelessWidget {
  final String productName;
  final String productWheel;
  final String productKG;
  final String productImage;
  final bool selected;
  final Function()? onTap;

  const SingleProduct({
    Key? key,
    required this.onTap,
    required this.productImage,
    required this.productKG,
    required this.productName,
    required this.productWheel,
    required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 130,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: selected ? Colors.blue : Colors.grey,
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    productWheel,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white38,
                    ),
                  ),
                  Text(
                    productKG,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white38,
                    ),
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: const Offset(8, 0),
              child: Image.asset(
                productImage,
                scale: 9.80,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
