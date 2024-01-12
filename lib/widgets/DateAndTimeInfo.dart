import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateAndTimeInfo extends StatelessWidget {
  const DateAndTimeInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InfoCard(
          icon: CupertinoIcons.calendar_today,
          text: "01/01/2024",
        ),
        SizedBox(width: 12),
        InfoCard(
          icon: CupertinoIcons.clock,
          text: "10am - 4pm",
        ),
      ],
    );
  }
}

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String text;

  const InfoCard({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF01C07A),
          width: 1.2,
        ),
        color: Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 20),
          const SizedBox(width: 7),
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
