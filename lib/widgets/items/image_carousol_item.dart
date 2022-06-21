import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({
    Key? key,
  }) : super(key: key);

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  late PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 1, initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: PageView.builder(
            controller: _pageController,
            pageSnapping: true,
            itemCount: adImageList.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Image.asset(
                adImageList[index],
                fit: BoxFit.fill,
              );
            },
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
          ),
        ),
        Positioned(
          bottom: 0,
          left: MediaQuery.of(context).size.width / 2 -
              adImageList.length * 10 -
              10,
          child: Container(
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(
                  adImageList.length,
                  (index) => InkWell(
                        onTap: () {
                          setState(() {
                            currentPage = index;
                            _pageController.jumpToPage(currentPage);
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(10, 3, 5, 3),
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentPage == index
                                ? Colors.white
                                : Colors.grey,
                          ),
                        ),
                      )),
            ),
          ),
        )
      ],
    );
  }
}
