import 'package:eccommerce/utils/dimensions.dart';
import 'package:eccommerce/widgets/small_text.dart';
import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final IconData icon;
  Color? color;
  ExpandableText({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;

  double textHeigh = Dimensions.screeHeight / 5.4;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.text.length > textHeigh) {
      firstHalf = widget.text.substring(0, textHeigh.toInt());
      secondHalf =
          widget.text.substring(textHeigh.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // Si la segunda mitad no tiene contenido, usamos la primera mitad. Si no pasamos un container.
      child: secondHalf.isEmpty
          ? SmallText(text: firstHalf)
          : Column(
              children: [],
            ),
    );
  }
}
