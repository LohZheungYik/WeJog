import 'package:flutter/material.dart';
import 'package:wejog1/screens/home/app_bar.dart';

class Settings extends StatefulWidget {
  const Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  
  /*goal controllers*/
  TextEditingController stepGoalController = new TextEditingController();
  TextEditingController distanceGoalController = new TextEditingController();
  TextEditingController calorieGoalController = new TextEditingController();
  TextEditingController timeController = new TextEditingController();
  /*end goal controllers*/

  /*goal default setting values*/
  @override
  void initState(){
    stepGoalController.text = "10000";
    distanceGoalController.text = "3";
    calorieGoalController.text = "750";
    timeController.text = "180";
    super.initState();
  }
  /*end of goal default values*/

  /*setting main screen*/
  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar: WeJogAppBars.backBtnAppBar(context, "Settings"),
      body: Column(
        children: <Widget>[
          goalSettingList(), //goal setting list
          notificationSettings(), //notification options list      
        ],
      )
    );
  }
  /*end of setting main screen*/

  /*popup box for editing goal values*/
  Future <String> createAlertDialog(BuildContext context, TextEditingController ctrl, String instruction){
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text(instruction),
        content: TextField(
        controller: ctrl,
      ),
      actions: <Widget>[
        MaterialButton(
          child: Text("OK"),
          color: Colors.blue,
          onPressed: (){
            Navigator.of(context).pop(ctrl.text.toString());
            setState(() {});
          }
         )
       ],
     );
   });
  }//createAlertDialog
  /*end of popup box*/

  /*goal setting list*/
  Widget goalSettingList(){
    final settingItems = ["Daily steps target", "Daily distance target(KM)", "Daily calories to burn(Kcal)", "Daily active minutes target(mins)"];
    final settingIcons = [Icons.directions_run, Icons.location_on, Icons.fastfood, Icons.timer];
    final settingControllers = [stepGoalController, distanceGoalController, calorieGoalController, timeController];
    final settingInstructions = ["Type below to set your goal for daily step count", "Type below to set your goal for daily distance target(KM)", "Type below to set your goal for daily calories to burn(Kcal)", "Type below to set your goal for daily active minutes target(mins)"];

    return Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: settingItems.length,
              itemBuilder: (context, index) {
              return Card( 
                child: ListTile(
                onTap: (){
                  createAlertDialog(context, settingControllers[index], settingInstructions[index]);
                },
                leading: Icon(settingIcons[index]),
                title: Text(settingItems[index]),
                trailing: Text(settingControllers[index].text.toString())
            ),
          );
        },
      )
    );
  }
  /*end of goal setting list*/

  /*notification option list*/
  Widget notificationSettings(){
    final optionList = ["Remind me to reach my daily target", "Remind me upon reaching daily target"];
    return Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: optionList.length,
              itemBuilder: (context, index) {
              return Card( 
                child: SwitchListTile(
                value: false,
                onChanged: (val){},     
                title: Text(optionList[index]),
            ),
          );
        },
      )
    );
  } 
}
/*end of notification option list*/



