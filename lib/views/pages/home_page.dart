import 'package:flutter/material.dart';
import 'package:sport2/theme/color_configs.dart';
import 'package:sport2/data/wager_data.dart';
import '../components/balance_card.dart';
import '../components/bet_history.dart';
import '../components/payout_card.dart';
import '../components/wager_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Image.asset('assets/images/menu.png', height: 40),
                  Spacer(),
                  Image.asset('assets/images/logo.png', height: 40),
                  Spacer(),
                  Image.asset('assets/images/search.png', height: 40),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    BalanceCard(),
                    BetHistoryCard(),
                    PayoutCard(),
                    Column(
                      children: List.generate(wagersData.length, (index) {
                        final wagerItem = wagersData[index];

                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: WagerCard(wager: wagerItem),
                        );
                      }),
                    ),

                    // SizedBox(height: 20),
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
