import 'package:flutter/material.dart';
import 'package:pet_pioneer/utils/theme.dart';

class ClinicCard extends StatelessWidget {
  final String clinicName;
  final String lastVisit;
  final String rating;
  final String imagePath;

  const ClinicCard({
    Key? key,
    required this.clinicName,
    required this.lastVisit,
    required this.rating,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF01C07A),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(35),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF01C07A).withOpacity(0.3),
            blurRadius: 20,
            spreadRadius: -5,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: Image.asset(
              imagePath,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 16,
            left: 16,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    rating,
                    style: const TextStyle(
                      color: Color(0xFF01C07A),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Icon(Icons.star, color: Color(0xFF01C07A), size: 16),
                ],
              ),
            ),
          ),
          Positioned(
            top: -15,
            right: -15,
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppTheme.backgroundColor,
              ),
              width: 60,
              height: 60,
            ),
          ),
          Positioned(
            top: -5,
            right: -5,
            child: Container(
              width: 40,
              height: 40,
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF01C07A),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF01C07A),
                    blurRadius: 20,
                    spreadRadius: -5,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
              child: const Icon(Icons.check, color: Colors.white, size: 24),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                    color: Colors.grey[50],
                  ),
                  width: 170,
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Text(
                        clinicName,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      const Text(
                        'visited last month',
                        style: TextStyle(color: Colors.black54, fontSize: 9.5),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
