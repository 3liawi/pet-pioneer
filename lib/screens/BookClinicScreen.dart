import 'package:flutter/material.dart';
import 'package:pet_pioneer/widgets/ClinicCard.dart';
import 'package:pet_pioneer/widgets/ClinicCarousel.dart';
import 'package:pet_pioneer/widgets/DateAndTimeInfo.dart';
import 'package:pet_pioneer/widgets/PaymentOptionCard.dart';
import 'package:pet_pioneer/widgets/ProfileCheckupCard.dart';

class BookClinicScreen extends StatelessWidget {
  const BookClinicScreen({super.key});
// route name
  static const String routeName = '/book-clinic';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
          child: AppBar(
            primary: false,
            backgroundColor: Colors.transparent,
            leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
            title: const Center(
              child: Text(
                'Book a Clinic',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert_rounded,
                    size: 30,
                  ))
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(children: [
            const ProfileCheckupCard(),
            const SizedBox(height: 30),
            const DateAndTimeInfo(),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Available Clinics",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                  Icon(
                    Icons.arrow_forward_rounded,
                    size: 25,
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            ClinicCarousel(
              clinicCards: const [
                ClinicCard(
                  clinicName: 'Om Animal Care',
                  lastVisit: 'visited last month',
                  rating: '4.0',
                  imagePath: 'assets/images/illustrations/university.png',
                ),
                ClinicCard(
                  clinicName: 'Universal Pet Clinic',
                  lastVisit: 'visited three months ago',
                  rating: '4.3',
                  imagePath: 'assets/images/illustrations/hospital.png',
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: PaymentOptionCard(),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(310, 65),
                foregroundColor: Colors.white,
                backgroundColor: const Color(0xFF5C68FF),
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 0,
              ),
              child: const Text(
                'Pay and Book',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
