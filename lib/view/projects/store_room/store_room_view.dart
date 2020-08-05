import 'package:flutter/material.dart';
import '../cv_app/cv_view.dart';
import 'store_room_viewmodel.dart';

class StoreRoomView extends StatelessWidget {
  final StoreRoom store = StoreRoom(
    'Store Room App',
    '''this app store products localy
It use sqlite to make this function.
proberties of this app is 
1.search in list of products
2.caculator in it
3.add product 
4.edit product
5.delet it
    ''',
    'asset/images/store.jpg',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(store.name),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text(
              store.description,
              style: ktextStyle,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .85,
              child: Image.asset(store.image1),
            ),
          ],
        ),
      ),
    );
  }
}
