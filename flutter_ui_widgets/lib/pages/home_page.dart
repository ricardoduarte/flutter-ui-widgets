import 'package:flutter/material.dart';
import 'package:flutter_ui_widgets/models/article.dart';
import 'package:flutter_ui_widgets/repos/article_repo.dart';
import 'package:flutter_ui_widgets/widgets/article_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<Article>>? _futureArticles;

  @override
  void initState() {
    super.initState();
    _futureArticles = ArticleRepo().getArticles();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Article>>(
        future: _futureArticles,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (BuildContext context, int index) {
                return ArticleCard(article: articles[index]);
              },
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text('$snapshot.error',
                  style: const TextStyle(fontSize: 24.0)),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
