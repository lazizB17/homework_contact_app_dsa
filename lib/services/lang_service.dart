import 'package:homework_contact_app_dsa/services/locals/en_EN.dart';
import 'package:homework_contact_app_dsa/services/locals/ru_RU.dart';
import 'package:homework_contact_app_dsa/services/locals/uz_UZ.dart';

enum Language {en, ru, uz}

class LangService{
  // field
  static Language _language = Language.en;

  // setter
  static set language(Language language){
    _language = language;
  }
  // Getter
  static Language get language => _language;

  String tr(String key){
    switch(language){
      case Language.en: return enUS[key] ?? key;
      case Language.ru: return ruRU[key] ?? key;
      case Language.uz: return uzUZ[key] ?? key;
    }
  }

}









