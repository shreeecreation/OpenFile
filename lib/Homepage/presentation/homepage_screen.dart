import 'package:flutter/material.dart';
import 'package:openfolder/Homepage/domain/home_domain.dart';
import 'package:openfolder/Homepage/model/home_model.dart';
import 'package:openfolder/core/Theme/appbartheme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(),
        appBar: appBars(),
        body: GridView.builder(
            itemCount: homeModel.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.0, crossAxisSpacing: 10.0, mainAxisSpacing: 10.0),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  onTap: () async {
                    openFile([homeModel[index]['extension']]);
                  },
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                          shadowColor: Colors.black,
                          color: homeModel[index]["color"]! ?? Colors.green,
                          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                            SizedBox(
                                height: 80,
                                width: 80,
                                child: Image.asset(
                                  homeModel[index]['image']!,
                                  fit: BoxFit.fill,
                                )),
                            const SizedBox(height: 5),
                            Text(
                              homeModel[index]['name'] ?? "",
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20.0,
                              ),
                            ),
                          ]))));
            }));
  }
}
