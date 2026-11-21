import 'package:flutter/material.dart';
import 'package:onboarding_1/models/onboard_item.dart';
import 'package:onboarding_1/widgets/onboard_item_widget.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {

  int _currentPage = 0;

  final List<OnboardItem> _pages = [

    const OnboardItem(
      title: 'Capture your tasks',
      subtitle: 'Quickly add tasks and organize your day with ease.',
      lottieurl: 'assets/lottie/task-planning.json'
      ),

    const OnboardItem(
      title: 'Stay on top',
      subtitle: 'Prioritize, set deadlines and never miss an important task.',
      lottieurl: 'assets/lottie/task-management.json'
      ),

    const OnboardItem(
      title: 'Get things done',
      subtitle: 'Mark task complete and feel satisfaction of progress',
      lottieurl: 'assets/lottie/task-completed.json'
      )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              spacing: 20,
              children:
              [
                Flexible(
                  child: PageView.builder(
                    itemCount: _pages.length,
                    onPageChanged: (value) => setState(() {
                      _currentPage = value;
                    }),
                    itemBuilder: (context, index){
                      return OnboardItemWidget(
                        item: _pages[index],
                      );
                    },
                    ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: List.generate(
                      _pages.length,
                      (index) {
                      return AnimatedContainer(
                        duration: const Duration(microseconds: 300),

                      height: 8,
                      width: _currentPage == index ? 18: 8,
                      decoration: BoxDecoration(
                        color: _currentPage == index ?
                        Theme.of(context).colorScheme.primary:
                        Theme.of(context).colorScheme.outline,
                        borderRadius: BorderRadius.circular(8)
                      ),
                    );
                  }
                )
              ),

              SizedBox(
                width: double.infinity,

                child: FilledButton(
                  onPressed: (){},

                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    textStyle: const TextStyle(fontWeight: .bold, fontSize: 16)
                  ),

                  child: Text(
                    _currentPage == _pages.length -1? 'Get started' : 'Next'
                  )
                ),    
              ),

              ],
            ),
          ),
    );
  }
}