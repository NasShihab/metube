import 'package:flutter/material.dart';
import 'package:metube/screen/dashboard/search_page/search_page_widget/search_page_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key, this.typeValue = ''}) : super(key: key);

  final String typeValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: searchBox(context),
      ),
    );
  }
}
