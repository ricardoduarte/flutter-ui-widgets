import 'package:flutter/material.dart';
import 'package:flutter_ui_widgets/models/article.dart';
import 'package:flutter_ui_widgets/widgets/article_card.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/logo.png',
          width: 180.0,
        ),
      ),
      body: ArticleCard(article: articles[1]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Clicked!');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}