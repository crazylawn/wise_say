import 'package:flutter/material.dart';
import 'package:wise_say/model/wisebook.dart';

class WisebookListPage extends StatefulWidget {
 const WisebookListPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<WisebookListPage> createState() => _WisebookListPageState();
}

class _WisebookListPageState extends State<WisebookListPage> {
  List<Wisebook> wisebookList = <Wisebook>[];

  //가장 먼저 실행되는 이벤트
  @override
  void initState() {
    super.initState();

    for (int i = 0; i < 100; i++) {
      wisebookList.add(new Wisebook('명언 $i'));
    }
  }

  // initState() 끝나면 실행
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: wiseBookListView(context),
      ),
    );
  }

  Widget wiseBookListView(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: wisebookList.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
            leading: Icon(
              Icons.library_books_rounded,
              color: Colors.pink,
            ),
            title: Text(wisebookList[index].wisebookName));
      },
    );
  }
}
