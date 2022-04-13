import 'package:bmi_calculator_custom/constantFile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ContainerFile.dart';
import 'IconTextFile.dart';
import 'constantFile.dart';



enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  late Gender selectGender;
  int sliderHeight=180;
  int sliderweight=60;

  // Color maleColor = deActiveColor;
  // Color femaleColor = deActiveColor;
  // void updateColor(Gender gendertype)
  // {
  //  if (gendertype == Gender.male) {
  //    maleColor = activeColor;
   //   femaleColor = deActiveColor;
   // }
  //  if (gendertype == Gender.female) {
   //   maleColor = deActiveColor;
    //  femaleColor = activeColor;
   // }
 // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator by Massab'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
            children: [
              Expanded(

                    child: RepeatContainerCode(
                      onPressed: (){
                        setState(() {
                          selectGender=Gender.male;
                        });
                      },
                      colors: selectGender==Gender.male?activeColor:deActiveColor,
                      cardWidget: RepeatTextandIconWidget(
                        iconData: FontAwesomeIcons.male,
                        label: 'MALE',
                      ),
                    ),

              ),
              Expanded(
                  child: RepeatContainerCode(
                    onPressed: (){
                      setState(() {
                        selectGender=Gender.female;
                      });
                    },
                    colors: selectGender==Gender.female?activeColor:deActiveColor,
                  cardWidget: RepeatTextandIconWidget(
                    iconData: FontAwesomeIcons.female,
                    label: 'FEMALE',
                  ),

              ),

              ),
            ],
          ),
          ),
          Expanded(child: RepeatContainerCode(
            onPressed: (){},
            colors: Color(0xFF1DE33),
            cardWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Height', style: kLabelStyle,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      sliderHeight.toString(),
                      style: kNumberStyle,
                    ),
                    Text(
                      'cm',
                      style: kLabelStyle,
                    ),

                  ],
                ),
                Slider(
                  value: sliderHeight.toDouble(),
                  min: 120.0,
                  max: 220.0,
                  activeColor: Color(0xFFEB1555),
                  inactiveColor: Color(0xFF8D8E98),
                  onChanged: (double newValue) {
                    setState(() {
                      sliderHeight = newValue.round();

                    });
                  },
                ),
              ],
            ),
          ),
          ),
          Expanded(child: Row(
            children: [
              Expanded(child: RepeatContainerCode(
                onPressed: (){},
                colors: Color(0xFF1DE33),
                cardWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'Weight',
                        style: kLabelStyle,
                    ),
                    Text(
                      sliderHeight.toString(),
                      style: kNumberStyle,

                    ),
                  ],
                ),
              ),
              ),
              Expanded(child: RepeatContainerCode(
                onPressed: (){},
                colors: Color(0xFF1DE33),
                cardWidget: ,
              ),
              ),
            ],
          ),
          ),
        ],
      ),
    );
  }
}



