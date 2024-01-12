import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class PaymentOptionCard extends StatelessWidget {
  const PaymentOptionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(30),
      padding: EdgeInsets.zero,
      dashPattern: const [20, 20],
      strokeWidth: 1.8,
      color: Colors.grey,
      child: Container(
        height: 75,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Image.asset(
                'assets/images/illustrations/gpay.png',
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(width: 12),
            const Expanded(
              flex: 2,
              child: Text(
                'General Check-Up fee',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ),
            const Spacer(),
            const Text(
              '₹ 200',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
