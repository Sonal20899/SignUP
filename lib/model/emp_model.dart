import 'address_model.dart';

class EmpModel {
  late String id;
  late String fullname;
  late String email;
  late String address;

  // ignore: non_constant_identifier_names
  // constructor
  EmpModel(
      {required this.id,
      required this.fullname,
      required this.email,
      required this.address});

  /// Map to Object
  EmpModel.fromMap(Map<String, dynamic> map) {
    this.id = map["id"];
    this.fullname = map["fullname"];
    this.email = map["email"];
    this.address = map["address"];
  }

  // Object to Map
  Map<String, dynamic> toMap() {
    return {
      "id": this.id,
      "fullname": this.fullname,
      "email": this.email,
      "address": this.address,
    };
  }
}
