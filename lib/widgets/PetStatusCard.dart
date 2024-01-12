import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_pioneer/utils/theme.dart';

class PetStatusCard extends StatelessWidget {
  const PetStatusCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor = Colors.grey[100]!;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        DottedBorder(
          color: Colors.black.withOpacity(0.2),
          strokeWidth: 1,
          dashPattern: const [25, 25],
          borderType: BorderType.RRect,
          radius: const Radius.circular(35),
          child: Card(
            color: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35),
            ),
            margin: const EdgeInsets.all(0),
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const StatusRow(
                    iconData: CupertinoIcons.check_mark_circled_solid,
                    text: "Park Walk",
                    iconColor: Color(0xFF01C07A),
                  ),
                  const StatusRow(
                    iconData: CupertinoIcons.check_mark_circled_solid,
                    text: "Food   3/3",
                    iconColor: Color(0xFF01C07A),
                  ),
                  const StatusRow(
                      iconData: CupertinoIcons.check_mark_circled_solid,
                      text: "Snack 1/2",
                      iconColor: Colors.yellow),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      height: 1,
                      width: 115,
                      color: Colors.black,
                    ),
                  ),
                  const StatusRow(
                      iconData: CupertinoIcons.heart_fill,
                      text: "Good   87%",
                      iconColor: Colors.red),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: -18,
          bottom: -23,
          child: Image.asset(
            'assets/images/illustrations/man-dog.png',
            width: 220,
          ),
        ),
      ],
    );
  }
}

class StatusRow extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Color iconColor;

  const StatusRow({
    Key? key,
    required this.iconData,
    required this.text,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(
            iconData,
            color: iconColor,
            size: 24,
          ),
          const SizedBox(width: 8.0),
          Text(text, style: AppTheme.cardContentTextStyle),
        ],
      ),
    );
  }
}
