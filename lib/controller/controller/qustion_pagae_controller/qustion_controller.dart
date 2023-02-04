import 'package:flutter/cupertino.dart';
import 'package:fps/model/qustion_model.dart';
import 'package:fps/view/screens/items_list/items_list.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_radio/yes_or_no_button.dart';
import 'package:get/get.dart';

class QustionController extends GetxController {
  var selectedIndex = 0.obs;
  bool get isLastPage => selectedIndex.value == qustionsList.length - 1;
  var pagecontroller = PageController();

  forwerdPageJumb(){
   pagecontroller.nextPage(
        duration: 550.milliseconds,
        curve: Curves.ease,
      );
}

  forwerdAction() {
    if (isLastPage) {
      Get.to(ItemsListHome());
    } else {
      pagecontroller.nextPage(
        duration: 550.milliseconds,
        curve: Curves.ease,
      );
    }
  }
  @override
  void onClose() {
    qustionsList;
    super.onClose();
  }
  @override
  // TODO: implement onDelete
  InternalFinalCallback<void> get onDelete => super.onDelete;
}



List<QustionModel> qustionsList = [
  //1=================
  QustionModel(
    text:
        'പരിശോധന നടത്താൻ എത്തിയപ്പോൾ KTPDS (Control) Order 2021 para 44 പ്രകാരം എഫ്.പി.എസ്. തുറന്ന് പ്രവർത്തിക്കുന്നുണ്ടോ?',
    headaLine: 'Start Survey',
    //  ,
    bar: 0.04,
    number: 1,
  ),
//2=======================

  QustionModel(
      text:
          'KTPDS (Control) Order 2021 para 42 (1) (XXI) പ്രകാരം പരിശോധനയ്ക്ക് ആവശ്യമായ സൗകര്യവും സഹകരണവും ലഭ്യമായിരുന്നോ?',
      headaLine: '',
      // ,
      bar: 0.08,
      number: 2),
  //3===========================

  QustionModel(
      text:
          'KTPDS (Control) Order 2021 para 42 (1) (XIII) പ്രകാരം പരിശോധനാ സൗകര്യാർത്ഥം ഭക്ഷ്യ ധാന്യങ്ങൾ അട്ടി ഇട്ടിരുന്നോ?',
      headaLine: '',
      //   widget: CustomRadioWidget(),
      bar:0.12,
      number: 3),

  //4===================================================

  QustionModel(
      text:
          'KTPDS (Control) Order 2021 para 42 (1)(XII) പ്രകാരം എഫ്. പി.എസ്-ഉം പരിസരവും വൃത്തിയായി സൂക്ഷിച്ചിട്ടുണ്ടോ?',
      headaLine: '',
      //  widget: CustomRadioWidget(),
      bar:0.16,
      number: 4),
  //5=================================================
  QustionModel(
      text:
          'KTPDS (Control) Order 2021 para 42 (1)(XI)  പ്രകാരം ആവശ്യമായ റിക്കാർഡുകളും രജിസ്റ്ററുകളും എഫ്.പി.എസ്-ൽ സൂക്ഷിച്ചിട്ടുണ്ടോ?',
      headaLine: '',
      bar: 0.2,
      number: 5),

  //6=============================================
  QustionModel(
      text:
          'പരിശോധന സമയം ലഭ്യമായ സ്റ്റോക്കിന്റെ എല്ലാ രസീതുകളും വരവുവച്ചിട്ടുണ്ടോ?',
      headaLine: '',
      bar:0.24000000000000002,
      number: 6),

  //7=============================================
  QustionModel(
      text:
          'KTPDS (Control) Order 2021 para 42 (1) പ്രകാരം എഫ്.പി.എസ് -ൽ പ്രദർശിപ്പിക്കാനുള്ള വസ്തുക്കൾ പ്രദർശിപ്പിച്ചിട്ടുണ്ടോ?',
      headaLine: '',
      bar:0.28,
      number: 7),

  //8==========================================
  QustionModel(
      text:
          'KTPDS (Control)Order 2021 Para 42(1) (XXIV) പ്രകാരമുള്ള നിർദ്ദിഷ്ഠ മാതൃകയിലുള്ള നെയിംബോർഡുകൾ പ്രദർശിപ്പിച്ചിട്ടുണ്ടോ?',
      headaLine: '',
      bar:0.32,
      number: 8),

  //9===========================================
  QustionModel(
      text:
          'KTPDS (Control) Order 2021 para 42 (1) (III) പ്രകാരം വ്യാപാരി ഗുണഭോക്താക്കളോട് മാന്യമായി പെരുമാറാറുണ്ടോ?',
      headaLine: '',
      bar: 0.36,
      number: 9),

  //10====================================================

  QustionModel(
      text:
          'KTPDS (Control) Order 2021 para 32(1) പ്രകാരം മണ്ണെണ്ണ പ്രത്യേക മുറിയിലാണോ സൂക്ഷിക്കുന്നത് ?',
      headaLine: '',
      bar:0.39999999999999997,
      number: 10),
  //11=============================
  QustionModel(
      text:
          'KTPDS (Control) Order 2021 para 42 (2) (III) പ്രകാരംഗുണഭോക്താവിന് കൃത്യമായ അളവിൽ റേഷൻ വിതരണം ചെയ്യുന്നുണ്ടോ ?',
      headaLine: '',
      bar:0.43999999999999995,
      number: 11),

  //12======================================

  QustionModel(
      text:
          'KTPDS (Control) Order 2021 para 42 (2) (V) പ്രകാരം അംഗീകാരമില്ലാത്ത വ്യക്തികൾ എഫ്.പി.എസ് –ന്റെ പ്രവർത്തനങ്ങളിൽ ഇടപെടാറുണ്ടോ?',
      headaLine: '',
      bar: 0.4799999999999999,
      number: 12),
  //13========================================
  QustionModel(
      text:
          'KTPDS (Control) Order 2021 para 42 (1) (VII) പ്രകാരം എഫ്.പി.എസ്. പ്രവർത്തന സമയം കൃത്യമായി പാലിക്കാറുണ്ടോ ?',
      headaLine: '',
      bar:0.5199999999999999,
      number: 13),

  //14========================================
  QustionModel(
      text:
          'KTPDS (Control) Order 2021 para 42 (1) (VII) പ്രകാരം അനുമതി ഇല്ലാതെ അവധി ദിനങ്ങളിൽ എഫ്.പി.എസ് തുറന്ന് പ്രവർത്തിച്ചിട്ടുണ്ടോ?',
      headaLine: '',
      bar: 0.5599999999999999,
      number: 14),

  //15========================================
  QustionModel(
      text:
          'KTPDS (Control) Order 2021 para 42 (1) (VI) പ്രകാരം ലൈസൻസിൽ പ്രതിപാദിക്കാത്ത സ്ഥലത്ത് ഭക്ഷ്യ ധാന്യങ്ങൾ സംഭരിക്കാറുണ്ടോ ?',
      headaLine: '',
      bar: 0.6,
      number: 15),

  //16========================================

  QustionModel(
      text:
          'KTPDS (Control) Order 2021 para 42 (1) (II) പ്രകാരം ഗുണഭോക്താക്കൾക്ക് റേഷൻ വിതരണം ചെയ്യുമ്പോൾ ബില്ലുകൾ കൃത്യമായി നൽകാറുണ്ടോ?',
      headaLine: '',
      bar:0.64,
      number: 16),
  //17========================================
  QustionModel(
      text:
          'KTPDS (Control) Order 2021 para 42 (1) (IV) പ്രകാരം അളവ് / തൂക്ക ഉപകരണങ്ങൾ സീൽ ചെയ്തിട്ടുണ്ടോ?',
      headaLine: '',
      bar:0.68,
      number: 17),

  //18========================================
  QustionModel(
      text:
          'KTPDS (Control) Order 2021 para 42 (1) (II) പ്രകാരം റേഷൻ സാധനങ്ങൾക്ക് ഗുണഭോക്താക്കളിൽ നിന്നും അമിത വില ഈടാക്കാറുണ്ടോ ?',
      headaLine: '',
      bar:0.7200000000000001,
      number: 18),

  //19========================================

  QustionModel(
      text:
          'KTPDS (Control) Order 2021 para 43 (IV) പ്രകാരം അനുമതിയില്ലാതെ ഇ-പോസ് മെഷിൻ എഫ്.പി.എസ് -ൽ നിന്നും മാറ്റാറുണ്ടോ ?',
      headaLine: '',
      bar:0.7600000000000001,
      number: 19),
  //20========================================
  QustionModel(
      text:
          'KTPDS (Control) Order 2021 para 42 (2) (VI) പ്രകാരം സിവിൽ സപ്ലൈസ് വകുപ്പിൽ നിന്നുള്ള അനുമതിയില്ലാതെ വസ്തുക്കൾ സംഭരിക്കുകയോ എഫ്.പി.എസ് വഴി വിതരണം ചെയ്യുകയോ ചെയ്തിട്ടുണ്ടോ ?',
      headaLine: '',
      bar: 0.8000000000000002,
      number: 20),
  //21==================================
  QustionModel(
      text:
       'KTPDS (Control) Order 2021 para 42 (2) (VIII) പ്രകാരം  ഇ-പോസ് മെഷീൻ മനഃപൂർവ്വം കേട് വരുത്താറുണ്ടോ ?',
      headaLine: '',
      bar: 0.8400000000000002,
      number: 21),

  //22============================

  QustionModel(
      text:
       "KTPDS (Control) Order 2021 para 42 (2) (X) പ്രകാരം  ഉപയോഗശൂന്യമായ റേഷൻ സാധനങ്ങൾ വിതരണം ചെയ്തിട്ടുണ്ടോ ?",
        
      headaLine: '',
      bar: 0.8800000000000002,
      number: 22),
  //23=============================

  QustionModel(
      text:
          'KTPDS (Control) Order 2021 para 43 (I) പ്രകാരം  അനുമതിയില്ലാതെ ഇ-പോസ് മുഖേനയല്ലാതെ മാനുവൽ രീതിയിൽ റേഷൻ സാധനങ്ങൾ വിതരണം നടത്തിയിട്ടുണ്ടോ ?',
      headaLine: '',
      bar: 0.9200000000000003,
      number: 23),
      //24==============================
       QustionModel(
      text:
          'KTPDS (Control) Order 2021 para 42 (2) (I) പ്രകാരം റേഷൻ വിതരണത്തിനു ശേഷം ഉപഭോക്താക്കളുടെ റേഷൻ കാർഡുകൾ എഫ്.പി.എസ്-ൽ സൂക്ഷിച്ചിട്ടുണ്ടോ ?',
      headaLine: '',
      bar: 0.9600000000000003,
      number: 24),
      //  QustionModel(
      // text:
      //     'ഉണ്ടെങ്കിൽ എത്ര കാർഡുകൾ ? ( കാർഡ് നമ്പരുകൾ രേഖപ്പെടുത്തുക )',
      // headaLine: '',
      // bar: 1.0,
      // number: 25),
];
