import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final colors = [
  Colors.red,
  Colors.redAccent,
  Colors.deepOrange,
  Colors.orange,
  Colors.amberAccent,
  Colors.yellow,
  Colors.lightGreenAccent,
  Colors.lightGreen,
  Colors.green,
  Colors.greenAccent,
  Colors.lightBlueAccent,
  Colors.blue,
];

final heights = [
  100,
  120,
  140,
  160,
  180,
  200,
];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SliverMyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DynamicHeightGridView(
        itemCount: 22,
        crossAxisCount: 3,
        builder: (ctx, index) {
          colors.shuffle();
          heights.shuffle();
          return Container(
            height: heights.first.toDouble(),
            color: colors.first,
          );
        },
      ),
    );
  }
}

class SliverMyHomePage extends StatelessWidget {
  const SliverMyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverDynamicHeightGridView(
            itemCount: 22,
            crossAxisCount: 3,
            builder: (ctx, index) {
              colors.shuffle();
              heights.shuffle();
              return Container(
                height: heights.first.toDouble(),
                color: colors.first,
              );
            },
          )
        ],
      ),
    );
  }
}
