import 'package:flutter/material.dart';
import 'package:calcdb/pages/History.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _formKey = GlobalKey<FormState>();
  var minimumPadding = 5.0;
  var btnTxtColor = Colors.white;
  var btnBgColor = Colors.lightBlue;
  var btnShapeCorner =  new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0));
  // var firstNum = 0;
  // var secondNUm = 0;
  var firstsecNum=0;
  var calcOpt='';
  var displayResult = ''; 

  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();



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
                    child: new Text(
                      this.displayResult,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(minimumPadding * 2),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: minimumPadding, bottom: minimumPadding),
                    child: TextFormField(
                      inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                      controller: num1,
                      keyboardType: TextInputType.number,
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
                      controller: num2,
                      inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number,
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
                            shape: btnShapeCorner,
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
                            shape: btnShapeCorner,
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
                            shape: btnShapeCorner,
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
                            shape: btnShapeCorner,
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
                        onPressed: (){
                       
                          setState(() {
                            if(_formKey.currentState.validate()){
                                this.displayResult = _calcTotal();
                            }
                              
                          });
                        },
                        icon: Icon(Icons.play_circle_filled),
                        label: new Text('total'))),
              ]),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.dashboard),
        onPressed: (){
          
            return NavigateToHistory();
      
        },
      )
    );
  }

  void NavigateToHistory() {
    Navigator.push(context, MaterialPageRoute(builder:(context){
      return History();
    } ));
  }

  String _calcTotal(){
    double get_num1 = double.parse(num1.text);
    double get_num2 = double.parse(num2.text);
    double totalnum = get_num1 + get_num2;
    String result = '$totalnum';
  
    // double totalAmountPayable = num1 + num2;
    // return total ;
    return result;
  }

}

