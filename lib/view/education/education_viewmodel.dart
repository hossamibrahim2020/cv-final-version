import 'package:flutter/material.dart';
import '../shared_ui/constants.dart';

class EducationViewModel extends StatefulWidget {
  @override
  _EducationViewModelState createState() => _EducationViewModelState();
}

class _EducationViewModelState extends State<EducationViewModel> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Stepper(
      type: StepperType.vertical,
      currentStep: _currentStep,
      onStepTapped: (int step) => setState(() => _currentStep = step),
      onStepContinue:
          _currentStep < 4 ? () => setState(() => _currentStep += 1) : null,
      onStepCancel:
          _currentStep > 0 ? () => setState(() => _currentStep -= 1) : null,
      steps: <Step>[
        Step(
          title: Text(
            'Fundamentals',
            style: kstyle,
          ),
          content: Text(
            'I learnt C++ in 4 months watching YouTube tutorials. Then I studied Python for one month to enhance my understanding of programming concepts.',
            style: kstyleFlutter,
          ),
          isActive: _currentStep >= 0,
          state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
        ),
        Step(
          title: Text(
            'Problem Solving',
            style: kstyle,
          ),
          content: Text(
            'I solved alot of small problems by using programming.\nArround 50 challenge',
            style: kstyleFlutter,
          ),
          isActive: _currentStep >= 0,
          state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
        ),
        Step(
          title: Text(
            'Dart',
            style: kstyle,
          ),
          content: Text(
            'then learning dart was very easy and i learnt it in weeks and solved problems in it.',
            style: kstyleFlutter,
          ),
          isActive: _currentStep >= 0,
          state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
        ),
        Step(
          title: Text(
            'Flutter',
            style: kstyle,
          ),
          content: Text(
            'then I learn first flutter framwork and it is my first framwork i learn in my life.',
            style: kstyleFlutter,
          ),
          isActive: _currentStep >= 0,
          state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
        ),
        Step(
          title: Text(
            'Algorithms &\nData structures',
            style: kstyle,
          ),
          content: Text(
            'I will start learning Algorithms & Data structures soon',
            style: kstyleFlutter,
          ),
          isActive: _currentStep >= 0,
          state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
        ),
      ],
    );
  }
}
