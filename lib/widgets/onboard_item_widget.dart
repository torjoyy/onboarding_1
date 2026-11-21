import 'package:flutter/material.dart';
import 'package:onboarding_1/models/onboard_item.dart';
import 'package:lottie/lottie.dart';

class OnboardItemWidget extends StatelessWidget {
  const OnboardItemWidget({super.key, required this.item});

  final OnboardItem item;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20,
      children: [
        Lottie.asset(item.lottieurl),
        Text(
          item.title,
          style: Theme.of(
            context,).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold)
        ),
        Text(
          item.subtitle,
          style: Theme.of(
            context).textTheme.bodyLarge,
            textAlign: .center,
        )
        
        
      ],
    );
  }
}