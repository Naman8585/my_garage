import 'dart:async';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class ColorContainerSlider extends StatefulWidget {
  @override
  _ColorContainerSliderState createState() => _ColorContainerSliderState();
}

class _ColorContainerSliderState extends State<ColorContainerSlider> {
  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
  ];

  int currentPage = 0;
  late PageController _pageController;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: currentPage);

    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (currentPage < colors.length - 1) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      _pageController.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
      // Handle onTap
    },
    child:Container(
      height: 200.0,
      child: PageView.builder(
        controller: _pageController,
        itemCount: colors.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              color: colors[index],
              borderRadius: BorderRadius.circular(10.0),
            ),
          );
        },
        onPageChanged: (int index) {
          setState(() {
            currentPage = index;
          });
        },
      ),
    ));
  }
}

class ServiceSlider extends StatelessWidget {
  final List<String> cardList = [
    'Card 1',
    'Card 2',
    'Card 3',
    'Card 4',
    'Card 5',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.easeInOut,
        height: 200.0,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
      ),
      items: cardList.map((card) {
        return Builder(
          builder: (BuildContext context) {
            return InkWell(
                onTap: () {
              // Handle onTap
            },
            child:Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text(
                  card,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ));
          },
        );
      }).toList(),
    );
  }
}

class RideSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
      // Handle onTap
    },
    child:Container(
      height: 70.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(5, (index) {
          return InkWell(
              onTap: () {
            // Handle onTap
          },
          child:Container(
            width: 90.0,
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Text(
                'Card ${index + 1}',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ),
          ));
        }),
      ),
    ));
  }
}

class CircleInkWell extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;

  CircleInkWell({required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 70.0,
        height: 70.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}