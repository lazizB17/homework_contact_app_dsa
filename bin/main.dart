import 'dart:io';
import 'package:homework_contact_app_dsa/services/data_service.dart';
import 'package:homework_contact_app_dsa/models/model.dart';

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void main() {

  print("Phone contact: ");
  DataBaseDart dataBase = DataBaseDart();
  dataBase.add(Contact("Onam", 1977, "Ucell", "+998936051308", DateTime.now(), "Onam", 1));
  dataBase.add(Contact("Otam", 1975, "Ucell", "+998949308485", DateTime.now(), "Otam", 1));
  dataBase.add(Contact("Asadbek", 2354, "Humans", "+998339540690", DateTime.now(), "Do'st", 1));
  dataBase.add(Contact("Ilhom", 5677, "Ucell", "+998936666806", DateTime.now(), "Do'st", 1));
  dataBase.add(Contact("Jasur", 2344, "Ucell", "+998941200902", DateTime.now(), "Yaqin tanish", 1));
  dataBase.add(Contact("Nasibullo", 7890, "Belline", "+998901204002", DateTime.now(), "Guruhdosh", 1));
  dataBase.add(Contact("Asliddin", 6789, "Uzmobile", "+998991203902", DateTime.now(), "Guruhdosh", 1));
  dataBase.getData();

  print("Before total contact: ${dataBase.totalContact()}");

  print("New contact added: ");
  dataBase.addAll([
    Contact("Muhammadjon aka", 9808, "Humans", "+998339209982", DateTime.now(), "Guruhdosh", 1),
    Contact("Bobur aka", 7879, "Ucell", "+998931507032", DateTime.now(), "Guruhdosh aka", 1),
    Contact("Jamshid aka", 6760, "Uzmobile", "+998999299080", DateTime.now(), "Guruhdosh aka", 1),
  ]);
  dataBase.getData();

  List <Contact> result = dataBase.search("j");
  print("Search result: $result\n");

  print("All total contact: ${dataBase.totalContact()}");

  dataBase.import(Contact("Muhammadjon aka", 9808, "Humans", "+998339209982", DateTime.now(), "Guruhdosh", 1));
  print("Imported ${dataBase.forImport}");

  print("Update category: ");
  dataBase.updateCount(Contact("Muhammadjon aka", 9808, "Ucell", "+998939299989", DateTime.now(), "Guruhdosh aka", 1));
  dataBase.getData();

  print("Sort name A-Z contact: ");
  dataBase.sortType("A-Z");
  dataBase.getData();

  print("Sort name Z-A contact: ");
  dataBase.sortType("Z-A");
  dataBase.getData();

  dataBase.export(Contact("Jamshid aka", 6760, "Uzmobile", "+998999299080", DateTime.now(), "Guruhdosh aka", 1));
  print("\nExported ${dataBase.forExport}\n");

  dataBase.blockContact(Contact("Jasur", 2344, "Ucell", "+998941200902", DateTime.now(), "Yaqin tanish", 1));
  print("Contact blocked! ${dataBase.blockList}");
  dataBase.remove(Contact("Jasur", 2344, "Ucell", "+998941200902", DateTime.now(), "Yaqin tanish", 1));
  dataBase.getData();

  print(dataBase.callTo("\n+998949308485"));

  print(dataBase.sendSms());
  String? sendMsg = stdin.readLineSync();
  print("sending: $sendMsg");
  print("SMS reading.");

  dataBase.clear();

}































