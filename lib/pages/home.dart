import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _formKey = GlobalKey<FormState>();
  var minimumPadding = 5.0;
  var btnTxtColor = Colors.white24;
  var btnBgColor = Colors.lightBlue;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
      appBar: AppBar(
        title: new Text('Calculator with DB'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(minimumPadding),
          child: ListView(
            children: <Widget>[
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: minimumPadding * 4, bottom: minimumPadding * 4),
                  child: new Text(
                    'Memory Calculator',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Column(children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(minimumPadding * 2),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: minimumPadding, bottom: minimumPadding),
                    child: TextFormField(
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please Enter the first Value';
                        }
                      },
                      decoration: InputDecoration(
                          errorStyle: TextStyle(
                              color: Colors.blueAccent, fontSize: 5.0),
                          labelStyle: textStyle,
                          labelText: 'Type first number',
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(minimumPadding * 1),
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(minimumPadding * 1),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: minimumPadding, bottom: minimumPadding),
                    child: TextFormField(
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please Enter the second Value';
                        }
                      },
                      decoration: InputDecoration(
                          errorStyle: TextStyle(
                              color: Colors.blueAccent, fontSize: 5.0),
                          labelStyle: textStyle,
                          labelText: 'Type second number',
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(minimumPadding * 1),
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(minimumPadding * 2),
                  child: Padding(
                    padding: EdgeInsets.all(minimumPadding * 2),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            color: btnBgColor,
                            textColor: btnTxtColor,
                            child: Text(
                              '+',
                              textScaleFactor: 1.5,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(right: minimumPadding)),
                        Expanded(
                          child: RaisedButton(
                            color: btnBgColor,
                            textColor: btnTxtColor,
                            child: Text(
                              '-',
                              textScaleFactor: 1.5,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(right: minimumPadding)),
                        Expanded(
                          child: RaisedButton(
                            color: btnBgColor,
                            textColor: btnTxtColor,
                            child: Text(
                              '*',
                              textScaleFactor: 1.5,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(right: minimumPadding)),
                        Expanded(
                          child: RaisedButton(
                            color: btnBgColor,
                            textColor: btnTxtColor,
                            child: Text(
                              '/',
                              textScaleFactor: 1.5,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(minimumPadding * 2),
                    child: RaisedButton.icon(
                        onPressed: null,
                        icon: Icon(Icons.play_circle_filled),
                        label: new Text('total'))),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
