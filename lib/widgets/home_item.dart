import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({
    Key? key,
    required double countainer_width,
  })  : _countainer_width = countainer_width,
        super(key: key);

  final double _countainer_width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 27),
          width: MediaQuery.of(context).size.width * 0.21,
          height: MediaQuery.of(context).size.height * 0.09,
          alignment: AlignmentDirectional.bottomCenter,
          decoration: BoxDecoration(
            color: Colors.yellow[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 7),
            child: Text(
              "SuperCoin",
              style: TextStyle(
                color: Colors.orange[900],
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: _countainer_width / 8,
          child: Container(
            height: 65,
            width: _countainer_width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              border: Border.all(
                color: const Color.fromARGB(255, 244, 231, 118),
              ),
            ),
            child: Icon(
              Icons.contactless_rounded,
              color: Colors.yellow[800],
              size: 40,
            ),
          ),
        ),
      ],
    );
  }
}
