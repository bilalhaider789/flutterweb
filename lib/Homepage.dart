import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Homepage extends StatelessWidget { 
  const Homepage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        color: Color.fromRGBO(237, 242, 246, 1.0),
        child: Padding(
          padding: EdgeInsets.only(top: h * 0.1),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: w * 0.01,
              ),
              Wethearbox(w: w, h: h),
              SizedBox(
                width: w * 0.02,
              ),
              PostBox(w: w, h: h),
              SizedBox(
                width: w * 0.02,
              ),
              BirthdayBox(w: w, h: h)
            ],
          ),
        ),
      ),
    );
  }
}

class BirthdayBox extends StatelessWidget {
  const BirthdayBox({
    Key? key,
    required this.w,
    required this.h,
  }) : super(key: key);

  final double w;
  final double h;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w * 0.17,
      height: h * 0.25,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/birthdaybox.jpg"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: EdgeInsets.only(left: w * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: h * 0.05,
            ),
            Icon(
              Icons.cake_outlined,
              color: Colors.white,
            ),
            SizedBox(
              height: h * 0.04,
            ),
            Text(
              "Birthday List",
              style: TextStyle(color: Colors.white, fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}

class PostBox extends StatelessWidget {
  const PostBox({
    Key? key,
    required this.w,
    required this.h,
  }) : super(key: key);

  final double w;
  final double h;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w * 0.42,
      height: h * 0.23,
      color: Color.fromRGBO(250, 251, 253, 1),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: w * .08,
                  height: h * 0.1,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.event_note_sharp,
                        color: Color.fromRGBO(255, 299, 58, 1),
                      ),
                      Text("Posts", style: TextStyle(fontSize: 12))
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
              child: Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: w * 0.05),
                  child: Text(
                    "Share...",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: w * 0.02),
                  child: SizedBox(
                    height: 40,
                    width: 100,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(255, 299, 58, 1),
                        ),
                        onPressed: () {
                          ShowDialog(context);
                          
                        },
                        child: Text(
                          "New Post",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class Wethearbox extends StatelessWidget {
  const Wethearbox({
    Key? key,
    required this.w,
    required this.h,
  }) : super(key: key);

  final double w;
  final double h;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w * 0.18,
      height: h * 0.65,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("img/wethearbox.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            width: w * 0.18,
            height: h * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: w * 0.01),
            child: Text(
              "37.8°C",
              style: TextStyle(
                color: Colors.white,
                fontSize: 60,
              ),
            ),
          ),
          SizedBox(
            height: h * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("33.6°C\n38.8°C",
                  style: TextStyle(color: Colors.white, fontSize: 14)),
              Icon(Icons.cloud, color: Colors.white, size: 40,),
            ],
          ),
          SizedBox(
            height: h * 0.08,
          ),
          Text("Scattered Clouds",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              )),

          SizedBox(
            height: h * 0.01,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: w * 0.01),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Real feel: 35.08°C",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    )),
                Text("Cloudliness: 26%",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: h * 0.04,
          ),
          Container(
            color: Colors.white.withOpacity(0.25),
            width: w * 0.18,
            height: h * 0.11,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: h * 0.027),
                  child: Text("WED  THU  FRI  SAT  SUN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: h * 0.01),
                  child: Text("40°C  39°C  39°C  39°C  39°C",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: h * 0.03,
          ),
          Text("17 May 2022  15:11",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              )),
          // SizedBox(height: h*0.01,),
          Text("Islamabad,Pk",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              )),
        ],
      ),
    );
  }
}

ShowDialog(BuildContext context) {
  double h = MediaQuery.of(context).size.height;
  double w = MediaQuery.of(context).size.width;

  Dialog alert = Dialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    child: Container(
      height: h * 0.68,
      width: w * 0.38,
      child: Column(
        children: [
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: w * 0.025, vertical: h * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Create Post",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.only(top: h * 0.05, left: w * 0.025, right: w * 0.025),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "What's on your mind?",
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
                Container(
                  height: h * 0.25,
                  width: w * 0.32,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.redAccent)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.01),
                    child: TextField(
                      onChanged: (value) {},
                      cursorColor: Colors.redAccent,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.redAccent),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.redAccent),
                        ),
                      ),
                      maxLines: 8,
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                Text(
                  "Remaining characters: 280",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          SizedBox(
            height: h * 0.05,
          ),
          Divider(),
          SizedBox(
            height: h * 0.015,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: h * 0.06,
                padding: EdgeInsets.only(right: w * 0.01),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey),
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered))
                          return Colors.redAccent;
                        return null;
                      },
                    ),
                  ),
                  child: const Text(
                    'cancel',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                height: h * 0.06,
                padding: EdgeInsets.only(right: w * 0.03),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.redAccent),
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered))
                          return Colors.red;
                        return null;
                      },
                    ),
                  ),
                  child: Row(
                    children: [
                      Transform.rotate(
                          angle: 150,
                          child: Icon(
                            Icons.send_rounded,
                            size: 16,
                          )),
                      Text(
                        'Post',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
