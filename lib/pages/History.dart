import 'package:flutter/material.dart';


class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('History'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: new Text('Add'),
              subtitle: new Text('The quick Brown Fox Jumps'),
              leading: Icon(Icons.add),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: (){},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
