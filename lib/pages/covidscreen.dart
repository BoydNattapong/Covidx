import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';




class CovidScreenPage extends StatefulWidget {
  const CovidScreenPage({super.key});

  @override
  State<CovidScreenPage> createState() => _CovidScreenPageState();
  
  _CovidScreenPageState() {}
}





class _CovidScreenState extends State<CovidScreenPage> {
  int _selectedChoice1 = 1;
  int _selectedChoice2 = 1;
  int _selectedChoice3 = 1;
  int _selectedChoice4 = 1;
  int _selectedChoice5 = 1;
  int _sum_selectedChoice = 5;
  String txtValue = 'มีความกังวลในระดับต่ำ';
  Color cl = Colors.amber;

  @override
  void _incrementCounter() {
    setState(() {
      _sum_selectedChoice = (_selectedChoice1 +
          _selectedChoice2 +
          _selectedChoice3 +
          _selectedChoice4 +
          _selectedChoice5);
      //  print(_sum_selectedChoice);

      if (_sum_selectedChoice < 7) {
        txtValue = 'มีความกังวลในระดับต่ำ';
        cl = Colors.amber;
      }

      if ((_sum_selectedChoice > 6) & (_sum_selectedChoice < 12)) {
        txtValue = 'มีความกังวลในระดับปานกลาง';
        cl = Colors.orange;
      }

      if (_sum_selectedChoice > 11) {
        txtValue = 'มีความกังวลในระดับสูง';
        cl = Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(1)),
              child: const Padding(
                padding: const EdgeInsets.all(1),
                child: Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.question_answer),
                    title: Text('ซักถาม:' + 'นายทรงวุฒิ ศรีสวัสดิ์'),
                    subtitle: Text('ตอบ :' + 'นางสาวพรพิมล หมับจุโกบ'),

                    /* trailing: Icon(Icons.search),
                    tileColor: Color.fromRGBO(5, 104, 57, 0.1),*/
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  '1.ท่านรู้สึกกังวล ไม่สบายใจกับการที่ต้องออกไปนอกบ้าน',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: (ListTile(
                  title: Text('ไม่มี'),
                  leading: Radio(
                      value: 1,
                      groupValue: _selectedChoice1,
                      onChanged: (value) {
                        setState(() {
                          _selectedChoice1 = value!;
                          _incrementCounter();
                        });
                      }),
                )),
              )),
          const SizedBox(
            height: 3,
          ),
          Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: (ListTile(
                  title: Text('ปานกลาง'),
                  leading: Radio(
                      value: 2,
                      groupValue: _selectedChoice1,
                      onChanged: (value) {
                        setState(() {
                          _selectedChoice1 = value!;
                          _incrementCounter();
                        });
                      }),
                )),
              )),
          Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: (ListTile(
                  title: Text('มาก / ประจำ'),
                  leading: Radio(
                      value: 3,
                      groupValue: _selectedChoice1,
                      onChanged: (value) {
                        setState(() {
                          _selectedChoice1 = value!;
                          _incrementCounter();
                        });
                      }),
                )),
              )),
          Padding(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  '2.ท่านรู้สึกกังวลกับการเตรียมตัวเพื่อป้องกันการติดไวรัส Covid-19 เช่น กักตุนอาหาร หน้ากาก เป็นต้น',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: (ListTile(
                  title: Text('ไม่มี'),
                  leading: Radio(
                      value: 1,
                      groupValue: _selectedChoice2,
                      onChanged: (value) {
                        setState(() {
                          _selectedChoice2 = value!;
                          _incrementCounter();
                        });
                      }),
                )),
              )),
          const SizedBox(
            height: 3,
          ),
          Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: (ListTile(
                  title: Text('ปานกลาง'),
                  leading: Radio(
                      value: 2,
                      groupValue: _selectedChoice2,
                      onChanged: (value) {
                        setState(() {
                          _selectedChoice2 = value!;
                          _incrementCounter();
                        });
                      }),
                )),
              )),
          Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: (ListTile(
                  title: Text('มาก / ประจำ'),
                  leading: Radio(
                      value: 3,
                      groupValue: _selectedChoice2,
                      onChanged: (value) {
                        setState(() {
                          _selectedChoice2 = value!;
                          _incrementCounter();
                        });
                      }),
                )),
              )),
          const SizedBox(
            height: 5,
          ),
          Padding(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  '3.ท่านนอนไม่หลับ/หรือมีปัญหาการนอน เพราะคิดเกี่ยวกับ ไวรัส Covid-19',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: (ListTile(
                  title: Text('ไม่มี'),
                  leading: Radio(
                      value: 1,
                      groupValue: _selectedChoice3,
                      onChanged: (value) {
                        setState(() {
                          _selectedChoice3 = value!;
                          _incrementCounter();
                        });
                      }),
                )),
              )),
          const SizedBox(
            height: 3,
          ),
          Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: (ListTile(
                  title: Text('ปานกลาง'),
                  leading: Radio(
                      value: 2,
                      groupValue: _selectedChoice3,
                      onChanged: (value) {
                        setState(() {
                          _selectedChoice3 = value!;
                          _incrementCounter();
                        });
                      }),
                )),
              )),
          Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: (ListTile(
                  title: Text('มาก / ประจำ'),
                  leading: Radio(
                      value: 3,
                      groupValue: _selectedChoice3,
                      onChanged: (value) {
                        setState(() {
                          _selectedChoice3 = value!;
                          _incrementCounter();
                        });
                      }),
                )),
              )),
          const SizedBox(
            height: 5,
          ),
          Padding(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  '4.ท่านคิดว่าไวรัส Covid-19 ส่งผลต่อการดำเนินชีวิตประจำวันของท่าน',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: (ListTile(
                  title: Text('ไม่มี'),
                  leading: Radio(
                      value: 1,
                      groupValue: _selectedChoice4,
                      onChanged: (value) {
                        setState(() {
                          _selectedChoice4 = value!;
                          _incrementCounter();
                        });
                      }),
                )),
              )),
          const SizedBox(
            height: 3,
          ),
          Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: (ListTile(
                  title: Text('ปานกลาง'),
                  leading: Radio(
                      value: 2,
                      groupValue: _selectedChoice4,
                      onChanged: (value) {
                        setState(() {
                          _selectedChoice4 = value!;
                          _incrementCounter();
                        });
                      }),
                )),
              )),
          Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: (ListTile(
                  title: Text('มาก / ประจำ'),
                  leading: Radio(
                      value: 3,
                      groupValue: _selectedChoice4,
                      onChanged: (value) {
                        setState(() {
                          _selectedChoice4 = value!;
                          _incrementCounter();
                        });
                      }),
                )),
              )),
          const SizedBox(
            height: 5,
          ),
          Padding(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  '5.ท่านคิดว่าท่านมีโอกาสติดเชื้อไวรัส Covid-19 มากเพียงใด',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: (ListTile(
                  title: Text('ไม่มี'),
                  leading: Radio(
                      value: 1,
                      groupValue: _selectedChoice5,
                      onChanged: (value) {
                        setState(() {
                          _selectedChoice5 = value!;
                          _incrementCounter();
                        });
                      }),
                )),
              )),
          const SizedBox(
            height: 3,
          ),
          Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: (ListTile(
                  title: Text('ปานกลาง'),
                  leading: Radio(
                      value: 2,
                      groupValue: _selectedChoice5,
                      onChanged: (value) {
                        setState(() {
                          _selectedChoice5 = value!;
                          _incrementCounter();
                        });
                      }),
                )),
              )),
          Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: (ListTile(
                  title: Text('มาก / ประจำ'),
                  leading: Radio(
                      value: 3,
                      groupValue: _selectedChoice5,
                      onChanged: (value) {
                        setState(() {
                          _selectedChoice5 = value!;
                          _incrementCounter();
                        });
                      }),
                )),
              )),
          const SizedBox(
            height: 100,
          ),
          const SizedBox(
            height: 100,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.amber,
            ),
            title: Text(
              '5-6 คะแนน',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: Text(
              'มีความกังวลในระดับต่ำ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.orange,
            ),
            title: Text(
              '7-11 คะแนน',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: Text(
              'มีความกังวลในระดับปานกลาง',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
            ),
            title: Text(
              '12 คะแนนขึ้นไป',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: Text(
              'มีความกังวลในระดับสูง',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ],
      )),
      floatingActionButton: SpeedDial(
        backgroundColor: Colors.green[600],
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            child: Icon(Icons.save),
            label: 'บันทึกข้อมูล',
            //  labelBackgroundColor: Colors.green[100],
            backgroundColor: Colors.grey[200],
          ),
          SpeedDialChild(
            child: Icon(Icons.search),
            label: 'ค้นหา',
            //  labelBackgroundColor: Colors.yellow[100],
            backgroundColor: Colors.grey[200],
            onTap: () {
             
              //RegisterCIDScreen
            },
          ),
          SpeedDialChild(
              child: Icon(Icons.exit_to_app),
              label: 'ออกจากระบบ',
              // labelBackgroundColor: Colors.red[100],
              backgroundColor: Colors.grey[200],
              onTap: (() {
                Navigator.pop(context);
              })),
        ],
      ),
      bottomNavigationBar: new BottomAppBar(
        //  hasNotch: true,
        // color: Colors.indigo,
        color: Colors.grey[300],
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.all(10.0),
              child: new CircleAvatar(
                backgroundColor: cl,
              ),
            ),
            Text('[' + '$_sum_selectedChoice' + ']' + '$txtValue'),
            new Expanded(child: const SizedBox()),
            /*  IconButton(
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),*/
          ],
        ),
      ),
    );
  }
}
