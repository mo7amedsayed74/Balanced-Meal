import 'package:balanced_meal/custom_widgets/custom_button.dart';
import 'package:balanced_meal/screens/details_screen.dart';
import 'package:balanced_meal/helper.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/cover.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                child: Text(
                  'Balanced Meal',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const Text(
                'Craft your ideal meal effortlessly with our app. Select nutritious ingredients tailored to your taste and well-being.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: 'order food',
                onPressed: () => context.push(goTo: DetailsScreen()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
