import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/custom_icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setState(() => selectedGender = Gender.male);
                    },
                    cardColor: selectedGender == Gender.male
                        ? spaceCadetColor
                        : xiketicColorDarker,
                    cardChild: const CustomIconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setState(() => selectedGender = Gender.female);
                    },
                    cardColor: selectedGender == Gender.female
                        ? spaceCadetColor
                        : xiketicColorDarker,
                    cardChild: const CustomIconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(
              cardColor: spaceCadetColor,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Expanded(
                  child: ReusableCard(
                    cardColor: spaceCadetColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: spaceCadetColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: amaranthColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
