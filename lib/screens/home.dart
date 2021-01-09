import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo/screens/add-new-task.dart';
import 'package:todo/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Image.asset('assets/images/logo.png'),
                    margin: EdgeInsets.only(
                      top: 32.0,
                      bottom: 32.0,
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        TaskCardWidget(),
                        TaskCardWidget(),
                        TaskCardWidget(),
                        TaskCardWidget(),
                        TaskCardWidget(),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: SvgPicture.asset(
          'assets/images/plus.svg',
        ),
        backgroundColor: Colors.transparent,
        onPressed: () {
          return Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddNewTask(),
            ),
          );
        },
      ),
    );
  }
}
