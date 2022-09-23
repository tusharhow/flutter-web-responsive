import 'package:flutter/material.dart';

class TabletView extends StatelessWidget {
  const TabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tablet View'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            //  _scaffoldState.currentState!.openDrawer();
          },
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(children: [
          GridView.builder(
            shrinkWrap: true,
            itemCount: 21,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: (context, index) {
              return Container(
                color: index % 2 == 0 ? Colors.red : Colors.orange,
              );
            },
          ),
        ]),
      ),
    );
  }
}
