import 'package:firebase_auth/firebase_auth.dart';

class Register_User {
  Future<String?> registerUser(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user?.uid;
    } on FirebaseAuthException catch (e) {
      return e.code;
    } on FirebaseException catch (e) {
      return e.code;
    }
  }

  Future<String> createUser(User user) async {
    try {
      var document = await FirebaseFirestore.instance
          .collection("Usuarios")
          .doc(user.id)
          .set(user.convertir());
      return user.id;
    } on FirebaseException catch (e) {
      return e.code;
    }
  }
}
