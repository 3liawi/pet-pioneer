import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileCheckupCard extends StatelessWidget {
  const ProfileCheckupCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: const Radius.circular(32),
        dashPattern: const [22, 22],
        strokeWidth: 1.2,
        color: const Color(0xFF01C07A),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(32)),
          child: Container(
            height: 140,
            color: Colors.white.withOpacity(0.5),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/illustrations/cliniccard.png',
                  width: 130,
                  fit: BoxFit.cover,
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 12.0, top: 20.0, right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Stack(
                          children: [
                            Text(
                              "Sukuna’s full profile included for the check-up",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Positioned(
                              right: 60,
                              bottom: 1,
                              child: Icon(
                                CupertinoIcons.checkmark_alt_circle_fill,
                                color: Color(0xFF01C07A),
                                size: 21,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                "view",
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
