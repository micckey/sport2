import 'package:flutter/material.dart';
import 'package:sport2/theme/color_configs.dart';
import 'package:sport2/models/wager.dart';

class WagerCard extends StatelessWidget {
  final Wager wager;

  const WagerCard({super.key, required this.wager});

  @override
  Widget build(BuildContext context) {
    double value = wager.ranking;
    double maxValue = 3.0;
    double maxWidth = 240;
    double fillWidth = (value / maxValue) * maxWidth;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                wager.assetImage,
                height: 70,
                width: 80,
                fit: BoxFit.fill,
              ),
              SizedBox(width: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    wager.name.length > 14
                        ? '${wager.name.substring(0, 10)}...'
                        : wager.name,
                    style: TextStyle(
                      color: AppColors.highlightColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 1,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.highlightColor,
                          borderRadius: BorderRadius.circular(1),
                        ),
                        child: Text(wager.sport),
                      ),
                      SizedBox(width: 10),
                      Text(
                        wager.club,
                        style: TextStyle(
                          color: AppColors.highlightColor,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        '${wager.date} vs ',
                        style: TextStyle(
                          color: AppColors.highlightColor,
                          fontSize: 11,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        wager.opponent,
                        style: TextStyle(
                          color: AppColors.highlightColor,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 17, vertical: 3),
                decoration: BoxDecoration(
                  color: AppColors.overlayColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      wager.oddType,
                      style: TextStyle(color: AppColors.disabledColor),
                    ),
                    Text(
                      wager.oddValue.toString(),
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      // Labels above the bar
                      Positioned(
                        left: fillWidth - 10,
                        // Slightly shift left for alignment
                        bottom: 20,
                        child: Text(
                          value.toString(),
                          style: TextStyle(
                            color: AppColors.successColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        left: maxWidth - 10,
                        bottom: 20,
                        child: Text(
                          maxValue.toString(),
                          style: TextStyle(
                            color: AppColors.successColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      // Progress bar row with vertical lines
                      Row(
                        children: [
                          Container(
                            width: 1,
                            height: 20,
                            color: AppColors.successColor,
                          ),

                          Stack(
                            children: [
                              Container(
                                width: maxWidth,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: AppColors.mutedSuccessColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Container(
                                width: fillWidth,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: AppColors.successColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ],
                          ),

                          Container(
                            width: 1,
                            height: 20,
                            color: AppColors.successColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 3, horizontal: 6),
                decoration: BoxDecoration(
                  color:
                      wager.pointsType == '+'
                          ? AppColors.mutedSuccessColor.withOpacity(0.4)
                          : AppColors.failColor.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  wager.pointsType == '+'
                      ? '${wager.pointValue}PT+'
                      : '${wager.pointValue}PT-',
                  style: TextStyle(
                    color:
                        wager.pointsType == '-'
                            ? AppColors.failColor
                            : AppColors.successColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
