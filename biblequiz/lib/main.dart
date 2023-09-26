import 'package:flutter/material.dart';

import 'quizscreen.dart';

void main() => runApp(BibleApp());

class BibleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personalized Bible App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<String> _completedPages = [];

  void _addPageContent(String content) {
    setState(() {
      _completedPages.add(content);
    });
  }

  @override
  Widget build(BuildContext context) {
    final _pages = [
      BiblePage(_completedPages),
      QuizScreen(_addPageContent),
    ];

    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Bible',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.quiz),
            label: 'Quiz',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class BiblePage extends StatelessWidget {
  final List<String> pages;

  BiblePage(this.pages);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Personalized Bible')),
      body: ListView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(pages[index]));
        },
      ),
    );
  }
}
