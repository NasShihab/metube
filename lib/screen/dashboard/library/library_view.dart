import 'package:flutter/material.dart';
import 'package:metube/z_reusable_widget/colors_custom.dart';
import 'package:metube/z_reusable_widget/text_material/text_theme.dart';

class LibraryView extends StatelessWidget {
  const LibraryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Library',
          style: titleLarge(context)?.copyWith(color: myPinkAccent),
        ),
      ),
    );
  }
}
