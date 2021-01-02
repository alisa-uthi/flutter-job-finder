import 'package:flutter/material.dart';

class JobTab extends StatefulWidget {
  @override
  _JobTabState createState() => _JobTabState();
}

class _JobTabState extends State<JobTab> {
  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    Color _selectedColor = Colors.redAccent;
    Color _transparentColor = Colors.transparent;

    final List<String> _tabNames = ["OVERVIEW", "DETAILS", "THE TEAM"];

    return Row(
      children: _tabNames.map((tabName) {
        int index = _tabNames.indexOf(tabName);
        return Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () {
              setState(() {
                _selectedTabIndex = index;
              });
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: _selectedTabIndex == index
                        ? _selectedColor
                        : _transparentColor,
                    width: 5,
                  ),
                ),
              ),
              child: Text(
                tabName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color:
                      _selectedTabIndex == index ? _selectedColor : Colors.grey,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
