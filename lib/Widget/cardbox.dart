import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem(
      {this.thumbnail, this.title, this.subtitle, this.booking});

  final Widget thumbnail;
  final String title;
  final String subtitle;
  final Widget booking;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Card(
          shadowColor: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: thumbnail,
              ),
              Expanded(
                flex: 3,
                child: _VideoDescription(
                  title: title,
                  subtitle: subtitle,
                  booking: booking,
                ),
              ),
            ],
          ),
        ));
  }
}

class _VideoDescription extends StatelessWidget {
  const _VideoDescription({Key key, this.title, this.subtitle, this.booking})
      : super(key: key);

  final String title;
  final String subtitle;
  final Widget booking;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 10.0),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
        ],
      ),
    );
  }
}
