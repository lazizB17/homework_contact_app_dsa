
import 'package:homework_contact_app_dsa/models/model.dart';

class DataBaseDart{
  List<Contact> _list = [];

  ///basic:
// create => new Contact add in list
  void add(Contact contact){
    _list.add(contact);
  }

  void addAll(List<Contact> list){
    for(Contact contact in list){
      if(_list.contains(contact)){
        updateCount(contact);
      } else{
        add(contact);
      }
    }
  }

// read => load all Contact
  List <Contact> get list => _list;

// printing Contact
  void getData(){
    print("DataBase: ");
    for(Contact contact in _list){
      print(contact);
    }
    print("");
  }

// update => edit Contact
  void updateCount(Contact contact, [String user = "+"]){
    int index = _list.indexOf(contact);
    Contact oldContact = _list[index];
    if(user == "-"){
      if(oldContact.id >= contact.id){
        oldContact.id -= contact.id;
      } else{
        print("${contact.id - oldContact.id} contact mavjud emas!");
      }
    } else{
      oldContact.id += contact.id;
    }
    // 0 1 2 3
    // [1, 2, 3, 4]
    // replaceRange(1, 2, [12, 3])
    // [1, 12, 3, 3, 4]
    _list.replaceRange(index, index + 1, [contact]);
  }

// delete => delete all Contact or some Contact
  void clear(){
    _list.clear();
    print("All contact cleared!");
  }
  void remove(Contact contact){
    _list.remove(contact);
  }

  /// additional
// sort => for name or phoneNumber ...
  void sortType([String type = "name"]){
    Contact.type = type;
    _list.sort();
  }

// search => Contact
  List<Contact> search(String text){
    List <Contact> result = [];
    for(Contact contact in _list){
      if(contact.name.contains(text)){
        result.add(contact);
      }
      if(contact.name.toUpperCase().contains(text)){
        result.add(contact);
      }
      if(contact.name.toLowerCase().contains(text)){
        result.add(contact);
      }
    }
    return result;
  }

  // import
  List forImport=[];
  void import(Contact contact){
    forImport.add(contact);
  }

  // export
  List forExport=[];
  void export(Contact contact){
    forExport.add(contact);
  }

// totalContact => All Contact count
  int totalContact(){
    int allContact = 0;
    for(Contact contact in _list){
      allContact += contact.count;
    }
    return allContact;
  }

  List <Contact> blockList = [];
  void blockContact(Contact contact){
    blockList.add(contact);
  }

  // call
  String callTo(String phone){
    return "$phone calling you!";
  }

  String sendSms(){
    print("\nAsadbek dan sms keldi!");
    String msg = "\nQalesan do'stim yaxshimsan?\n";
    return msg;
  }

}


