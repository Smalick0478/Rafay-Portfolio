import 'package:flutter/material.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({super.key});

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: const Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text(
                'Blog Page',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
