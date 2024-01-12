import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pet_pioneer/widgets/ClinicCard.dart';

class ClinicCarousel extends StatelessWidget {
  final List<ClinicCard> clinicCards;

  ClinicCarousel({Key? key, required this.clinicCards}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        clipBehavior: Clip.none,
        height: 190,
        aspectRatio: 2.0,
        viewportFraction: 0.75,
        initialPage: 2,
        enableInfiniteScroll: false,
        reverse: true,
        padEnds: false,
      ),
      items: clinicCards,
    );
  }
}
