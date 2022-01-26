import 'package:flutter/material.dart';

class ShopAppPage extends StatefulWidget {
  static const String id = "shop_app_page";

  const ShopAppPage({Key? key}) : super(key: key);

  @override
  _ShopAppPageState createState() => _ShopAppPageState();
}

class _ShopAppPageState extends State<ShopAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        // toolbarHeight: 70,
        centerTitle: true,
        title: Text("Apple Producte"),
        actions: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.grey.shade700,
              borderRadius: BorderRadius.circular(7.5),
            ),
            child: Text(
              "7",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // #header
            Container(
              height: 225,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/img_3.png"),
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                      end: Alignment.center,
                      begin: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.3),
                        Colors.black.withOpacity(0.1),
                      ]),
                ),
                child: Column(
                  children: [
                    // #text
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Lifestyle safe",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    // # showNow-button
                    Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                      child: MaterialButton(
                        height: 50,
                        minWidth: double.infinity * 0.75,
                        onPressed: () {},
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          "Show Now",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // #gridview
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.all(20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return _itemOfGridView(index);
              },
            ),
          ],
        ),
      ),
    );
  }
  Widget _itemOfGridView(int index) {
    return Container(
      alignment: Alignment.bottomRight,
      padding: EdgeInsets.all(20),
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/img_${index % 5}.png"),
        ),
      ),
      child: Icon(
        Icons.star_border_outlined,
        size: 35,
        color: Colors.yellow,
      ),
    );
  }
}
