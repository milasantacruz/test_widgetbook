import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class SearchBar extends StatefulWidget {
  const SearchBar(
      {super.key,
      required this.title,
      this.onPressed,
      required this.color,
      required this.backgroundColor});

  final String title;
  final Color color;
  final Color backgroundColor;
  final VoidCallback? onPressed;

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: widget.color),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(Icons.search),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              enabled: widget.color == Colors.grey ? false : true,
              decoration: InputDecoration(
                hintText: 'Search...',
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

@widgetbook.UseCase(
  name: 'Enabled',
  type: SearchBar,
)
SearchBar enabledSearchBar(BuildContext context) {
  return SearchBar(
    title: 'Enabled',
    onPressed: () {},
    color: Colors.orange,
    backgroundColor: Colors.white,
  );
}

@widgetbook.UseCase(
  name: 'Disabled',
  type: SearchBar,
)
SearchBar disabledSearchBar(BuildContext context) {
  return const SearchBar(
    title: 'Disabled',
    color: Colors.grey,
    backgroundColor: Color.fromARGB(0, 158, 158, 158),
  );
}
