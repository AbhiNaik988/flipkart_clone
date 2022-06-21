import 'package:flipcart_ui/models/colors_model.dart';
import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  final ItemColor item;
  const HomeItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 27),
          width: 70,
          height: 60,
          alignment: AlignmentDirectional.bottomCenter,
          decoration: BoxDecoration(
            color: item.boxColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 7),
            child: Text(
              item.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: item.textColor,
                overflow: TextOverflow.visible,
                fontSize: 12,
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 10,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              border: Border.all(
                color: item.circleBorderColor,
              ),
            ),
            child: Icon(
              item.ceneredIcon,
              color: item.iconColor,
              size: 40,
            ),
          ),
        ),
      ],
    );
  }
}
