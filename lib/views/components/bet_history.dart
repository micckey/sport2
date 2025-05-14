import 'package:flutter/material.dart';
import '../../theme/color_configs.dart';

class BetHistoryCard extends StatelessWidget {
  const BetHistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.maxFinite,
      margin: EdgeInsets.all(10),
      child: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: double.maxFinite,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Total Win',
                        style: TextStyle(color: AppColors.disabledColor),
                      ),
                      Text(
                        '\$410.50',
                        style: TextStyle(
                          color: AppColors.successColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: Container(
                  height: double.maxFinite,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Total Loss',
                        style: TextStyle(color: AppColors.disabledColor),
                      ),
                      Text(
                        '\$150.40',
                        style: TextStyle(
                          color: AppColors.failColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: AppColors.highlightColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    Icons.arrow_drop_up_sharp,
                    size: 40,
                    color: AppColors.successColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
