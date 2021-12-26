# dynamic_height_grid_view

[![pub package](https://img.shields.io/pub/v/dynamic_height_grid_view.svg)](https://pub.dev/packages/dynamic_height_grid_view) <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="License: MIT"></a>

GridView with dynamic height. No need to use aspectRatio.

<img src="https://user-images.githubusercontent.com/43510799/147405929-92e43203-5f52-48de-8fb9-fed1c7475db4.gif" width=270>

## Usage

```dart
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DynamicHeightGridView(
        itemCount: 120,
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        builder: (ctx, index) {
          /// return your widget here.
        }
      ),
    );
  }
}
```

- Use `SliverDynamicHeightGridView` for CustomScrollView

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
