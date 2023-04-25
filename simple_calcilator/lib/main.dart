import 'package:flutter/material.dart';

TextEditingController first_number = TextEditingController(text: '0');
TextEditingController second_number = TextEditingController(text: '0');

void hisobla(){
  print(int.parse(first_number.text) + int.parse(second_number.text));
}
void ayir(){
  print(int.parse(first_number.text) - int.parse(second_number.text));
}
void kop(){
  print(int.parse(first_number.text) * int.parse(second_number.text));
}
void bol(){
  print(int.parse(first_number.text) / int.parse(second_number.text));
}
void main(){
  
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 25, right: 0),
                    width: 150,
                    height: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: first_number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'First number',
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 0, right: 25),
                    width: 150,
                    height: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: second_number,
                      decoration: InputDecoration(
                        labelText: 'Second number',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                width: 340,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                ),
              ),
              Container(
                height: 20,
              ),
             TextButton(
              onPressed: hisobla, 
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueAccent,
                ),
                child: const Center(
                  child: Text(
                    '+',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                     ),
                   ),
                 ),
              ),
             ),
             Container(
              height: 10,
             ),
             TextButton(
              onPressed: ayir, 
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueAccent,
                ),
                child: const Center(
                  child: Text(
                    '-',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                     ),
                   ),
                 ),
              ),
             ),
             Container(
              height: 10,
             ),
             TextButton(
              onPressed: kop, 
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueAccent,
                ),
                child: const Center(
                  child: Text(
                    '*',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                     ),
                   ),
                 ),
              ),
             ),
             Container(
              height: 10,
             ),
             TextButton(
              onPressed: bol, 
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueAccent,
                ),
                child: const Center(
                  child: Text(
                    '/',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                     ),
                   ),
                 ),
              ),
             ),
           ],
          ),
        ),
      ),
    ),
  );
}