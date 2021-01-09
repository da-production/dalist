import 'package:flutter/material.dart';
import 'package:todo/widgets.dart';

class AddNewTask extends StatefulWidget {
  @override
  _AddNewTaskState createState() => _AddNewTaskState();
}

class _AddNewTaskState extends State<AddNewTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () => Navigator.pop(context),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextField(
                        style: TextStyle(
                          fontSize: 22,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter your task",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20.0),
                  hintText: 'Enter Description for the task...',
                  border: InputBorder.none,
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    ToDoWidget(),
                    ToDoWidget(
                      checked: true,
                    ),
                    ToDoWidget(),
                    ToDoWidget(),
                    ToDoWidget(),
                    ToDoWidget(),
                    ToDoWidget(),
                    ToDoWidget(),
                    ToDoWidget(),
                    ToDoWidget(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
