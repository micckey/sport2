import 'package:flutter/material.dart';
import 'package:sport2/theme/color_configs.dart';

class PayoutCard extends StatelessWidget {
  const PayoutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/star.png',
            width: 60,
            height: 60,
            fit: BoxFit.fill,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '4 Pick: Flex Play',
                style: TextStyle(
                  color: AppColors.highlightColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Single Stat - \$5.00',
                style: TextStyle(
                  color: AppColors.highlightColor,
                  fontSize: 15,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Mon, Nov 29 11:49 AM',
                style: TextStyle(
                  color: AppColors.highlightColor,
                  fontSize: 15,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Payouts',
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColors.primaryColor,
                    size: 30,
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: AppColors.successColor,
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Text(
                  'WIN!',
                  style: TextStyle(
                    color: AppColors.highlightColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                '+\$25.00',
                style: TextStyle(
                  color: AppColors.successColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
