class Person {
  String? _sId;
  String? _firstName;
  String? _lastName;
  String? _email;

  Person({String? sId, String? firstName, String? lastName, String? email}) {
    if (sId != null) {
      this._sId = sId;
    }
    if (firstName != null) {
      this._firstName = firstName;
    }
    if (lastName != null) {
      this._lastName = lastName;
    }
    if (email != null) {
      this._email = email;
    }
  }

  String? get sId => _sId;
  set sId(String? sId) => _sId = sId;
  String? get firstName => _firstName;
  set firstName(String? firstName) => _firstName = firstName;
  String? get lastName => _lastName;
  set lastName(String? lastName) => _lastName = lastName;
  String? get email => _email;
  set email(String? email) => _email = email;

  Person.fromJson(Map<String, dynamic> json) {
    _sId = json['_id'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this._sId;
    data['first_name'] = this._firstName;
    data['last_name'] = this._lastName;
    data['email'] = this._email;
    return data;
  }
}