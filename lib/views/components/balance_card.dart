import 'package:flutter/material.dart';
import '../../theme/color_configs.dart';


class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Stack(
          clipBehavior: Clip.hardEdge,
          children: [
            Positioned(
              bottom: -40,
              left: -30,
              child: Icon(
                Icons.monetization_on_outlined,
                color: AppColors.highlightColor.withOpacity(0.25),
                size: 120,
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'CURRENT BALANCE',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  // SizedBox(height: 10),
                  Text(
                    '\$ 960.50',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 20,
              top: 0,
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/images/dropdown.png',
                      height: 20,
                      width: 20,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(height: 3),
                    Transform.rotate(
                      angle: 180 * 3.1415927 / 180,
                      // 90 degrees in radians
                      child: Image.asset(
                        'assets/images/dropdown.png',
                        color: AppColors.mutedHighlightColor,
                        height: 20,
                        width: 20,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '+\$25.50',
                      style: TextStyle(
                        color: AppColors.mutedHighlightColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '-\$5.50',
                      style: TextStyle(
                        color: AppColors.mutedHighlightColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '+\$5.40',
                      style: TextStyle(
                        color: AppColors.mutedHighlightColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
