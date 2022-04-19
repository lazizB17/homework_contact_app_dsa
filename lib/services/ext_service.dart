import 'package:homework_contact_app_dsa/services/lang_service.dart';

extension LangExt on String {
  String get tr{
    return LangService().tr(this);
  }
}







