import 'package:tutorial/core/models/phone.dart';

class PhonesRepository {

  Future<List<Phone>> getPhones() {
    return Future.value([Phone(name: "Nokia"), Phone(name: "Samsung")]);
  }

}