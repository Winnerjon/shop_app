import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  static const String id = "task_page";

  const TaskPage({Key? key}) : super(key: key);

  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Apple Product"),
        backgroundColor: Colors.deepOrangeAccent.shade400,
        elevation: 0,
        actions: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            height: 38,
            width: 38,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "7",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.deepOrangeAccent.shade400.withOpacity(1.0),
                Colors.deepOrangeAccent.shade400.withOpacity(0.5),
                Colors.deepOrangeAccent.shade400.withOpacity(0.2),
              ],
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 130,
              ),
              Container(
                height: 230,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/img_2.png"),
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Lifestyle sale",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                      child: MaterialButton(
                        height: 50,
                        minWidth: double.infinity,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Shop Now",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.all(20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: 10,
                itemBuilder: (context,index){
                  return _itemOfGridView(index);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemOfGridView(int index) {
    return Container(
      alignment: Alignment.topRight,
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
      child: Icon(Icons.favorite,size: 35,color: Colors.red,),
    );
  }
}
