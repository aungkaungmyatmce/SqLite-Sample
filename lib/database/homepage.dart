import 'package:flutter/material.dart';
import 'package:sqlite/database/db_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SQFlite'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text('Insert Data1'),
              onPressed: () {
                DBHelper.insert('items', {
                  'title': 'This is title1',
                  'description': 'This is description1',
                });
              },
            ),
            ElevatedButton(
              child: Text('Insert Data2'),
              onPressed: () {
                DBHelper.insert('items', {
                  'title': 'This is title2',
                  'description': 'This is description2',
                });
              },
            ),
            ElevatedButton(
              child: Text('Get Data'),
              onPressed: () async {
                final dataList = await DBHelper.getData('items');
                print(dataList);
              },
            ),
          ],
        ),
      ),
    );
  }
}
