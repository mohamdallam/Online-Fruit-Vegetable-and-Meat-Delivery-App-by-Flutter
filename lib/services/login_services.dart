import 'package:firebase_auth/firebase_auth.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:roman/model/login_user_model.dart';

class LoginService {

  // LoginService(){
  //   Firebase.initializeApp();
  // }

  LoginUserModel _userModel;

  LoginUserModel get loggedInUserModel => _userModel;

  Future<bool> signInWithGoogle() async {
    // TODO ::  Trigger the authentication flow
    GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount googleUser = await googleSignIn.signIn();

    if (googleUser == null) {
      return false;
    }

    // TODO :: Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    // TODO ::  Create a new credential
    final GoogleAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    ) as GoogleAuthCredential;

    // TODO ::  Once signed in, return the UserCredential
    UserCredential userCreds =
        await FirebaseAuth.instance.signInWithCredential(credential);
    if (userCreds != null) {
      _userModel = LoginUserModel(
          // uid: userCreds.user.uid,
          displayName: userCreds.user.displayName,
          photoUrl: userCreds.user.photoURL,
          email: userCreds.user.email);
    }
    return true;
  }

  void signOut() async {
    await GoogleSignIn().signOut();
    _userModel = null;
  }
}
