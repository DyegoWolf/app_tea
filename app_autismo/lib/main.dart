import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/widgets.dart';

void main()
{
  runApp(MaterialApp(
    title: 'Custom Fonts',
    theme: ThemeData(fontFamily: 'Muli'),
    home: Home() ,
  ));
}

// Como o app não será estático, faz-se necessária esta classe
class Home extends StatefulWidget
{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>
{
  int selected;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      //backgroundColor: Colors.cyan,
      backgroundColor: Color(0xff00979F),
      resizeToAvoidBottomInset: false,
      body:
          Container(
              margin: EdgeInsets.all(46),
              decoration: BoxDecoration(color: Colors.white,
                                        borderRadius: BorderRadius.circular(20)),
              width: 340.0,
              height: 640.0,
            child:
              Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 200,
                    child:
                      Image.asset('assets/images/character1.jpeg')
                  ),
                  Container(
                    //padding: EdgeInsets.only(
                        //top: 60),
                    child:
                      Text("Preencha os campos a seguir com os dados da criança",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontFamily: 'Muli',
                                           fontSize: 20,
                                           color: Colors.grey)
                      )
                  ),
                  Container(
                    padding: EdgeInsets.only(
                              top: 44,
                             ),
                    child: Column(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.only(
                                      left: 16),
                            width: 240,
                            decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(8)
                                          ),
                                          //color: Colors.grey,
                                          color: Color(0xffd5d4da),
                                          /* boxShadow: [
                                            BoxShadow(
                                              color: Colors.black54,
                                              blurRadius: 1,
                                            )
                                          ] */
                            ),
                            child:
                              TextField(
                                keyboardType: TextInputType.text,
                                style: TextStyle(
                                        fontFamily: 'Muli',
                                        fontSize: 18,
                                        color: Colors.black54
                                ),
                                decoration:
                                  InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Nome',
                                      hintStyle: new TextStyle(
                                          fontFamily: 'Muli',
                                          fontSize: 18,
                                          color: Colors.black26
                                      )
                                  ),
                              )
                        ),
                        Container(
                          padding: EdgeInsets.only(
                                    left: 16),
                          width: 240,
                          height: 45,
                          margin: EdgeInsets.only(
                                    top: 20),
                          decoration: BoxDecoration(
                                        borderRadius:
                                          BorderRadius.all(
                                            Radius.circular(8)
                                          ),
                                          //color: Colors.grey,
                                          color: Color(0xffd5d4da),
                                          /*boxShadow: [
                                              BoxShadow(
                                                color: Colors.cyan,
                                                blurRadius: 20,
                                              )
                                            ]*/
                          ),
                          child:
                            TextField(
                                keyboardType: TextInputType.datetime,
                                style: TextStyle(
                                        fontFamily: 'Muli',
                                        fontSize: 18,
                                        color: Colors.black54
                                       ),
                                decoration:
                                  InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Data de Nascimento',
                                      hintStyle: new TextStyle(
                                                      fontFamily: 'Muli',
                                                      fontSize: 18,
                                                      color: Colors.black26
                                      )
                                  ),
                            ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 110,
                              height: 110,
                              margin: EdgeInsets.only(
                                        top: 20),
                              decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                            Radius.circular(8)
                                            )
                              ),
                              child: Column(
                                      children: <Widget>[
                                        Image.asset('assets/images/noselected_boy.png'),
                                        Text('Menino',
                                            style: TextStyle(
                                                fontFamily: 'Muli',
                                                fontSize: 12,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.bold
                                            )
                                        )
                                      ],
                              ),
                            ),
                            Container(
                              width: 110,
                              height: 110,
                              margin: EdgeInsets.only(
                                  top: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(8)
                                  )
                              ),
                              child: Column(
                                children: <Widget>[
                                  Image.asset('assets/images/noselected_girl.png'),
                                  Text('Menina',
                                      style: TextStyle(
                                          fontFamily: 'Muli',
                                          fontSize: 12,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold
                                      )
                                  )
                                ],
                              )
                            )
                          ],
                        ),
                        Container(
                          width: 240,
                          height: 45,
                          margin: EdgeInsets.only(
                              top: 40),
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(
                                Radius.circular(8)
                            ),
                            color: Color(0xff00979F),
                          ),
                          child:
                              Center(
                                child: Text('Vamos lá!',
                                         style: TextStyle(
                                                  fontFamily: 'Muli',
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold
                                         )
                                       )
                              ),
                        )
                      ],
                    )
                  ),
                ]
              )
          ));
  }
}
