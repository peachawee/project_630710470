import 'package:flutter/material.dart';
import 'package:pj_630710470/pages/calculator_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class Add {
  bool done;
  String name;
  int expense;

  Add({required this.done, required this.name, required this.expense});
}

var List = [
  Add(done: false, name: 'New', expense: 0),
  Add(done: false, name: 'Wan', expense: 0),
];

class _HomePageState extends State<HomePage> {
  final _input1 = TextEditingController();
  final _input2 = TextEditingController();
  var nop = List.length;
  var result = 0.0;
  var avg = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/home1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.indigo[600],
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
                    SizedBox(width: 30.0),
                    Image.asset(
                      'assets/images/we2.png',
                      height: 80.0,
                    ),
                    SizedBox(width: 25.0),
                    Expanded(
                      child: Text(
                        "Let's share!",
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow[700],
                        ),
                      ),
                    ),
                    //SizedBox(width:),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      primary: Colors.indigo[400],
                      onPrimary: Colors.black,
                      shape: CircleBorder(),
                      ),
                      child: Icon(Icons.menu_book_outlined, size: 18.0),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                scrollable: true,
                                title: Text('Manual!'),
                                content: Container(
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/result.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                              'Add member',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 22.0,
                                                  fontWeight: FontWeight.w100)),
                                          Text(
                                              '- Enter the name of the person you want to add',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w100)),
                                          Text('- press add',
                                              style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w100)),
                                          Text('- The system will add that person for you.',
                                              style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w100)),

                                          SizedBox(height: 20.0,),
                                          Text(
                                              'Delete member',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 22.0,
                                                  fontWeight: FontWeight.w100)),
                                          Text('- Click the Trash button in the box of the person you want to delete.',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w100)),
                                          Text('- The system will delete that member.',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w100)),

                                          SizedBox(height: 20.0,),
                                          Text(
                                              'Calculate average cost',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 22.0,
                                                  fontWeight: FontWeight.w100)),
                                          Text('- Enter the expenses you guys want to share.',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w100)),
                                          Text('- Click rocket button,the system will calculate .',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w100)),
                                          Text('- The system will display the average cost of each person.',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w100)),

                                          SizedBox(height: 20.0,),
                                          Text('Use a calculator.',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 22.0,
                                                  fontWeight: FontWeight.w100)),
                                          Text('- Click the calculator button.',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w100)),
                                          Text('- The system will take you to the calculator page.',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w100)),
                                        ],
                                      ),
                                  ),
                                ),
                              );
                            });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.yellow[700],
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
                    SizedBox(width: 20.0),
                    Text(
                      '- People who will share to pay',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo[600],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: List.length,
                  itemBuilder: (context, i) {
                    var value = List[i].done;
                    return Padding(
                      padding: const EdgeInsets.only(
                          top: 4.0, bottom: 4.0, left: 8.0, right: 8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/hommer.png",
                                      width: 60.0,
                                      height: 60.0,
                                    ),
                                    //   value: value,
                                    //   onChanged: (bool? value) {
                                    //     setState(() {
                                    //       List[i].done = value!;
                                    //     });
                                    //   },
                                    // ),
                                    SizedBox(
                                      width: 30.0,
                                    ),
                                    Expanded(
                                      child: Text(
                                        '${List[i].name}',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 30.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                '$avg',
                                style: TextStyle(fontSize: 30.0),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text('Bath..'),
                              InkWell(
                                customBorder: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                onTap: () {
                                  setState(() {
                                    List.removeAt(i);
                                    nop--;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.delete,
                                    color: Colors.grey[500],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              color: Colors.indigo[600],
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _input1,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Add new person who want to share...',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Material(
                        color: Colors.yellow[700],
                        child: InkWell(
                          hoverColor: Colors.black12,
                          onTap: () {
                            if (_input1.text.length > 0)
                              setState(
                                () {
                                  List.add(Add(
                                    done: false,
                                    name: _input1.text,
                                    expense: 0,
                                  ));
                                  _input1.clear();
                                },
                              );
                            nop++;
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'ADD',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              color: Colors.yellow[700],
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _input2,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText:
                              'Enter all your expenses you want to share...',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Material(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                          primary: Colors.yellow[700],
                          onPrimary: Colors.black,
                            minimumSize: Size(45.0, 45.0),
                          ),
                          onPressed: () {
                            doResult();
                            doAvg();
                            debugPrint("$result");
                            debugPrint("$avg");
                            _input2.clear();
                          },
                          child: Icon(Icons.rocket_launch_rounded),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        onPrimary: Colors.deepOrange,
                          minimumSize: Size(60.0, 65.0),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => CalPage()));
                      },
                      child: Icon(Icons.calculate,size: 30.0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  doResult() {
    setState(() {
      result = double.parse(_input2.text);
    });
  }

  doAvg() {
    setState(() {
      avg = result / nop;
    });
  }
}
