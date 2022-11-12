import 'package:flutter/material.dart';
import 'package:pj_630710470/pages/home_page.dart';

class CalPage extends StatefulWidget {
  const CalPage({Key? key}) : super(key: key);

  @override
  State<CalPage> createState() => _CalPageState();
}

class _CalPageState extends State<CalPage> {
  var t1,t2,res,num1,num2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/calcu.png"),
            fit: BoxFit.cover,
          ),
        ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
        padding: EdgeInsets.only(bottom:40.0, top: 15.0, left: 40.0, right: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 80.0,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  border: Border.all(
                    color: Colors.black12,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10.5),
                    Padding(
                      padding: const EdgeInsets.all(3.5),
                      child: Image.asset(
                        'assets/images/cal.jpg',
                        height: 80.0,
                      ),
                    ),
                    SizedBox(width: 25.0),
                    Expanded(
                      child: Text(
                        "Calculator!",
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    //SizedBox(width:),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo[600],
                          onPrimary: Colors.yellow[700],
                          minimumSize: Size(60.0, 65.0),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
                        },
                        child: Icon(Icons.home_rounded),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:42.0),
              child: TextField(
                keyboardType: TextInputType.number,
                cursorColor: Colors.tealAccent,
                enabled: false,
                enableInteractiveSelection: false,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: 'Result: $res', hintStyle: TextStyle(fontSize: 40.0, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            //The Text field for the First number
            TextField(
              keyboardType: TextInputType.number,
              cursorColor: Colors.tealAccent,
              controller: t1,
              decoration: InputDecoration(
                labelText: 'first',
                fillColor: Colors.white,
                hintText: 'Enter your First number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            //The Text field for the second number
            TextField(
              keyboardType: TextInputType.number,
              cursorColor: Colors.tealAccent,
              controller: t2,
              decoration: InputDecoration(
                labelText: 'second',
                fillColor: Colors.white,
                hintText: 'Enter your Second number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text('+',style: TextStyle(fontSize: 50.0)),
                  shape: StadiumBorder(),
                  color: Colors.deepOrange,
                  onPressed: () {
                    //TODO:
                    doAddition();
                  },
                ),
                MaterialButton(
                  child: Text('*',style: TextStyle(fontSize: 50.0)),
                  shape: StadiumBorder(),
                  color: Colors.deepOrange,
                  onPressed: () {
                    //TODO:
                    doMul();
                  },
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text('-',style: TextStyle(fontSize: 50.0)),
                  color: Colors.deepOrange,
                  shape: StadiumBorder(),
                  onPressed: () {
                    //TODO:
                    doSub();
                  },
                ),
                MaterialButton(
                  child: Text('/',style: TextStyle(fontSize: 50.0)),
                  shape: StadiumBorder(),
                  color: Colors.deepOrange,
                  onPressed: () {
                    //TODO:
                    doDiv();
                  },
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text('C', textAlign: TextAlign.center,style: TextStyle(fontSize: 50.0)),
                  color: Colors.deepPurple,
                  shape: StadiumBorder(),
                  padding: EdgeInsets.only(left: 110.0, right: 110.0, top: 15.0, bottom: 15.0),
                  onPressed: () {
                    //TODO:
                    doClear();
                  },
                ),
              ],
            ),

            SizedBox(height: 6.5,),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 25.0,
                decoration: BoxDecoration(
                  color: Colors.yellow[50],
                  border: Border.all(
                    color: Colors.black12,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20.0),
                    Text(
                      '-Press C button to start.  -enter number in "first" and "second" box.',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.black38,
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
        ]
      ),

      ),
    );
  }

  doAddition() {
    setState(() {
      num2 = double.parse(t2.text);
      num1 = double.parse(t1.text);
      res = num1 + num2;
    });
  }

  doSub() {
    setState(() {
      num2 = double.parse(t2.text);
      num1 = double.parse(t1.text);
      res = num1 - num2;
    });
  }

  doMul() {
    setState(() {
      num2 = double.parse(t2.text);
      num1 = double.parse(t1.text);
      res = num1 * num2;
    });
  }

  doDiv() {
    setState(() {
      num2 = double.parse(t2.text);
      num1 = double.parse(t1.text);
      res = (num1 / num2);
    });
  }

  doClear() {
    setState(() {
      t1 = TextEditingController(text: '');
      t2 = TextEditingController(text: '');
      res = 0;
    });
  }

}
