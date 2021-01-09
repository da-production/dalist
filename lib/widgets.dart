import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TaskCardWidget extends StatelessWidget {
  final title;
  final description;
  TaskCardWidget({this.title, this.description});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
      margin: EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? "(Unnamed Task)",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            description ?? 'No Description',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff86829D),
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
        ],
      ),
    );
  }
}

class ToDoWidget extends StatelessWidget {
  bool checked;

  ToDoWidget({this.checked = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () {
          return checked = !checked;
        },
        child: ListTile(
          leading: !checked
              ? Container(
                  width: 25,
                )
              : Container(
                  width: 25,
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/images/checklist.svg",
                      width: 25,
                    ),
                  ),
                ),
          title: Text(
            "Todo widget",
            style: TextStyle(
                decoration: !checked
                    ? TextDecoration.none
                    : TextDecoration.lineThrough),
          ),
          subtitle: Row(
            children: [
              Text("Date"),
              SizedBox(
                width: 5,
              ),
              Text("Hight"),
            ],
          ),
        ),
      ),
    );
  }
}
