import 'package:flutter/material.dart';
import 'package:pet_pioneer/utils/theme.dart';
import 'package:pet_pioneer/widgets/CustomBottomNavigationBar.dart';
import 'package:pet_pioneer/widgets/EventButton.dart';
import 'package:pet_pioneer/widgets/PetStatusCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 70),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Hi Satoru 👋',
                  style: AppTheme.greetingTextStyle,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Text('⭐', style: TextStyle(fontSize: 20)),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: SizedBox(
              width: 242,
              child: Text(
                'How is Sukuna doing today?',
                style: AppTheme.questionTextStyle,
              ),
            ),
          ),
          const SizedBox(height: 30),
          const PetStatusCard(),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Upcoming Events",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                Icon(
                  Icons.arrow_forward_rounded,
                  size: 25,
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
          Column(
            children: [
              EventButton(
                text: "Time for monthly general checkup",
                assetIcon: "assets/images/icons/hearingaids.png",
                backgroundColor: const Color(0xFF5C68FF),
                onTap: () {
                  Navigator.pushNamed(context, '/book-clinic');
                },
              ),
              EventButton(
                text: "Her birthday is near, buy gifts and treats",
                assetIcon: "assets/images/icons/gift.png",
                backgroundColor: const Color(0xFFFF8264),
                onTap: () {},
              ),
              EventButton(
                text: "Time for monthly general checkup",
                assetIcon: "assets/images/icons/hearingaids.png",
                backgroundColor: const Color(0xFFFDD05B),
                onTap: () {},
              ),
            ],
          )
        ]),
      ),
    );
  }
}
