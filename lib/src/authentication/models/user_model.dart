class UserModel {
  final String? id;
  final String fullName;
  final String email;
  final String phoneNo;

  UserModel({
    this.id,
    required this.fullName,
    required this.email,
    required this.phoneNo,
  });

  toJson() {
    return {
      "FullName": fullName,
      "Email": email,
      "Phone": phoneNo,
    };
  }

  //* Step 1 Map user feched from firebase to UserModel
  /*factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data();

    return UserModel(
        id: document.id,
        fullName: data!["FullName"],
        email: data["Email"],
        phoneNo: data["Phone"],
        password: data["Password"]);
  }*/
}
