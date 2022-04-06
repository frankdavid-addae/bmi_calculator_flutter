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
  Color maleCardColor = xiketicColorDarker;
  Color femaleCardColor = xiketicColorDarker;

  void updateColor(Gender selectedGender) {
    // male card was pressed
    if (selectedGender == Gender.male) {
      femaleCardColor = xiketicColorDarker;
      maleCardColor = maleCardColor == xiketicColorDarker
          ? spaceCadetColor
          : xiketicColorDarker;
    } else {
      // female card was pressed
      maleCardColor = xiketicColorDarker;
      femaleCardColor = femaleCardColor == xiketicColorDarker
          ? spaceCadetColor
          : xiketicColorDarker;
    }
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() => updateColor(Gender.male));
                    },
                    child: ReusableCard(
                      cardColor: maleCardColor,
                      cardChild: const CustomIconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() => updateColor(Gender.female));
                    },
                    child: ReusableCard(
                      cardColor: femaleCardColor,
                      cardChild: const CustomIconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
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
