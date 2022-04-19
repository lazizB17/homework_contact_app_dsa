
class Contact implements Comparable <Contact> {
  late String name;
  late int id;
  late String company;
  late String phoneNumber;
  late DateTime addTime;
  late String category;
  late int count;
  static String type = "A-Z";

  Contact(
      this.name,
      this.id,
      this.company,
      this.phoneNumber,
      this.addTime,
      this.category,
      this.count,
      );

  @override
  int compareTo(Contact other){
    switch(type){
      case "A-Z": return name.compareTo(other.name);
      case "Z-A": return other.name.compareTo(name);
      default: {
        return phoneNumber.compareTo(other.phoneNumber);
      }
    }
  }

  @override
  String toString() {
    return "Name: $name\tID: $id\tCompany: $company\tPhone number: $phoneNumber\tAdd time: $addTime\tCategory: $category";
  }

  @override
  bool operator == (Object other) {
    return other is Contact && name == other.name && id == other.id;
  }

  @override
  // int get hashCode => id.hashCode;
  int get hashCode => Object.hash(name, id, company, phoneNumber, addTime, category);

}

