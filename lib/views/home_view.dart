import 'package:country_list_pick/country_list_pick.dart';
import 'package:country_list_pick/country_selection_theme.dart';
import 'package:country_list_pick/support/code_country.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form/controller/bio_conrtoller.dart';
import 'package:form/views/quest.dart';
import 'package:gender_picker/source/enums.dart';
import 'package:gender_picker/source/gender_picker.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  final bioController = Get.put(BioController());

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    var _userGen = "Male";
    var _userLoc = "India";
    return Scaffold(
      appBar: AppBar(
        title: Text("QUESTIONNAIRE"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                labelText: 'Full Name',
                border: OutlineInputBorder(),
                suffixIcon: Icon(FontAwesomeIcons.idCardAlt),
              ),
              controller: nameController,
            ),
            GenderPickerWithImage(
              showOtherGender: true,
              verticalAlignedText: false,
              selectedGender: Gender.Male,
              selectedGenderTextStyle: TextStyle(
                  color: Color(0xFF8b32a8), fontWeight: FontWeight.bold),
              unSelectedGenderTextStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
              onChanged: (Gender? gender) {
                print(gender);
                if (gender == Gender.Male)
                  _userGen = "Male";
                else if (gender == Gender.Female)
                  _userGen = "Female";
                else
                  _userGen = "Other";
                _userGen = gender.toString();
              },
              equallyAligned: true,
              animationDuration: Duration(milliseconds: 200),
              isCircular: true,
              // default : true,
              opacityOfGradient: 0.4,
              padding: const EdgeInsets.all(3),
              size: 60, //default : 40
            ),
            CountryListPick(
                appBar: AppBar(
                  backgroundColor: Colors.blue,
                  title: Text('Choose your country or region'),
                ),
                theme: CountryTheme(
                  isShowFlag: true,
                  isShowTitle: true,
                  isShowCode: false,
                  isDownIcon: true,
                  showEnglishName: true,
                ),
                initialSelection: '+91',
                onChanged: (CountryCode? code) {
                  _userLoc = code?.name ?? "India".toString();
                  print(code?.name);
                  print(code?.code);
                  print(code?.dialCode);
                  print(code?.flagUri);
                },
                // Whether to allow the widget to set a custom UI overlay
                useUiOverlay: true,
                // Whether the country list should be wrapped in a SafeArea
                useSafeArea: false),
            ElevatedButton(
                onPressed: () {
                  print("User data is $_userLoc and $_userGen");
                  if (nameController.text.isNotEmpty) {
                    bioController.userName.value =
                        nameController.text.toString();
                    bioController.userLocation.value = _userLoc;
                    bioController.userGen.value = _userGen;

                    Navigator.pushReplacement(
                        context,
                        PageTransition(
                            child: QuestView(),
                            type: PageTransitionType.leftToRightWithFade));
                  }
                },
                child: Text("Next"))
          ],
        ),
      ),
    );
  }
}
