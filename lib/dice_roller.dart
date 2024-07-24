import "package:flutter/material.dart";
import "dart:math";


var randomizer=Random();


class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState (){
    return _DiceRollerState();
  }

}


class _DiceRollerState extends State<DiceRoller>{
  

    var activeDice=1;
  rollDice() {
    var diceRoll=randomizer.nextInt(6)+1;
    setState(() {
      activeDice = diceRoll;
    });
  }
  
  @override 
  Widget build(context){
  
    return Column(
          
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("./assets/images/dice-${activeDice}.png", width: 200),
          TextButton(
            onPressed: rollDice,
            
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: const Text("Roll the Dice"),
          )
        ],
      );
  }

}