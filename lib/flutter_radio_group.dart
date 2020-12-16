import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

enum RGOrientation { VERTICAL, HORIZONTAL }

class FlutterRadioGroup extends StatefulWidget {
  final RGOrientation orientation;

  final List<String> titles;
  final String label;
  final TextStyle labelStyle;
  final int defaultSelected;
  final Function(int) onChanged;
  final bool labelVisible;
  final Color activeColor;
  final TextStyle titleStyle;

  const FlutterRadioGroup(
      {Key key,
      this.orientation = RGOrientation.VERTICAL,
      @required this.titles,
      this.label,
      this.labelStyle = const TextStyle(fontSize: 12),
      this.onChanged,
      this.defaultSelected = 0,
      this.labelVisible = true,
      this.activeColor,
      this.titleStyle = const TextStyle(fontSize: 14)})
      : super(key: key);

  @override
  FlutterRadioGroupState createState() => FlutterRadioGroupState();
}

class FlutterRadioGroupState extends State<FlutterRadioGroup> {
  var _defaultValue = 0;

  @override
  void initState() {
    super.initState();
    _defaultValue = widget.defaultSelected;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: widget.labelVisible,
          child: Text(
            widget.label ?? "",
            style: widget.labelStyle,
          ),
        ),
        widget.orientation == RGOrientation.VERTICAL
            ? _vertical()
            : _horizontal()
      ],
    );
  }

  _horizontal() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: Iterable<int>.generate(widget.titles.length).map((index) {
            return Row(
              children: [
                SizedBox(
                  width: 24,
                  child: Radio(
                    value: index,
                    groupValue: _defaultValue,
                    activeColor:
                        widget.activeColor ?? Theme.of(context).primaryColor,
                    onChanged: (value) {
                      setState(() {
                        _defaultValue = value;
                        widget.onChanged(_defaultValue);
                      });
                    },
                  ),
                ),
                SizedBox(width: 4),
                InkWell(
                  onTap: () {
                    setState(() {
                      _defaultValue = index;
                      widget.onChanged(_defaultValue);
                    });
                  },
                  child: Text(
                    widget.titles[index],
                    style: widget.titleStyle,
                  ),
                ),
                SizedBox(width: 30),
              ],
            );
          }).toList()),
    );
  }

  _vertical() {
    return Column(
      children: Iterable<int>.generate(widget.titles.length)
          .map((index) => Row(
                children: [
                  SizedBox(
                    width: 24,
                    child: Radio(
                      value: index,
                      groupValue: _defaultValue,
                      activeColor:
                          widget.activeColor ?? Theme.of(context).primaryColor,
                      onChanged: (value) {
                        setState(() {
                          _defaultValue = value;
                          widget.onChanged(_defaultValue);
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 4),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _defaultValue = index;
                        widget.onChanged(_defaultValue);
                      });
                    },
                    child: Text(
                      widget.titles[index],
                      style: widget.titleStyle,
                    ),
                  ),
                  SizedBox(width: 30),
                ],
              ))
          .toList(),
    );
  }

  setIndexSelected(int index) {
    setState(() {
      if (index < widget.titles.length) _defaultValue = index;
    });
  }
}
