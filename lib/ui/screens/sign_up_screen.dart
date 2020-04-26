import 'dart:core';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
//import '../../business/auth.dart';
import '../../business/validator.dart';
//import '../../models/user.dart';
import "../widgets/custom_text_field.dart";
import '../widgets/custom_flat_button.dart';
import '../widgets/custom_alert_dialog.dart';

class SignUpScreen extends StatefulWidget {
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _fullname = new TextEditingController();
  final TextEditingController _number = new TextEditingController();
  final TextEditingController _email = new TextEditingController();
  final TextEditingController _password = new TextEditingController();
  CustomTextField _nameField;
  CustomTextField _phoneField;
  CustomTextField _emailField;
  CustomTextField _passwordField;
  bool _blackVisible = false;
  VoidCallback onBackPress;

  @override
  void initState() {
    super.initState();

    onBackPress = () {
      Navigator.of(context).pop();
    };

    _nameField = new CustomTextField(
      baseColor: Colors.grey,
      borderColor: Colors.grey[400],
      errorColor: Colors.red,
      controller: _fullname,
      hint: "Full Name",
      validator: Validator.validateName,
    );
    _phoneField = new CustomTextField(
      baseColor: Colors.grey,
      borderColor: Colors.grey[400],
      errorColor: Colors.red,
      controller: _number,
      hint: "Phone Number",
      validator: Validator.validateNumber,
      inputType: TextInputType.number,
    );
    _emailField = new CustomTextField(
      baseColor: Colors.grey,
      borderColor: Colors.grey[400],
      errorColor: Colors.red,
      controller: _email,
      hint: "E-mail Adress",
      inputType: TextInputType.emailAddress,
      validator: Validator.validateEmail,
    );
    _passwordField = CustomTextField(
      baseColor: Colors.grey,
      borderColor: Colors.grey[400],
      errorColor: Colors.red,
      controller: _password,
      obscureText: true,
      hint: "Password",
      validator: Validator.validatePassword,
    );
  }

  @override
  Widget build(BuildContext context) {
    //setState(() => this.context = context);
    return WillPopScope(
      onWillPop: onBackPress,
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Stack(
              alignment: Alignment.topLeft,
              children: <Widget>[
                ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 70.0, bottom: 10.0, left: 10.0, right: 10.0),
                      child: Text(
                        "Create new account",
                        softWrap: true,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.blue[900],
                          decoration: TextDecoration.none,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                          fontFamily: "OpenSans",
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
                      child: _nameField,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
                      child: _phoneField,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
                      child: _emailField,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
                      child: _passwordField,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 25.0, horizontal: 40.0),
                      child: CustomFlatButton(
                        title: "Sign Up",
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        textColor: Colors.blue[900],
                        onPressed: () {
                          _signUp(
                              fullname: _fullname.text,
                              email: _email.text,
                              number: _number.text,
                              password: _password.text,
                              context: context);
                          //Navigator.of(context).pushNamed("/home");
                        },
                        splashColor: Colors.black12,
                        borderColor: Colors.blue[900],
                        borderWidth: 0,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "OR",
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.none,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w300,
                          fontFamily: "OpenSans",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 40.0),
                      child: CustomFlatButton(
                        title: "Facebook Login",
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        textColor: Colors.white,
                        onPressed: () {
                          _facebookSignUp(context: context);
                        },
                        splashColor: Colors.black12,
                        borderColor: Color.fromRGBO(59, 89, 152, 1.0),
                        borderWidth: 0,
                        color: Color.fromRGBO(59, 89, 152, 1.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 40.0),
                      child: CustomFlatButton(
                        title: "Google Login",
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        textColor: Colors.white,
                        onPressed: () {
                          _facebookSignUp(context: context);
                        },
                        splashColor: Colors.black12,
                        borderColor: Colors.red,
                        borderWidth: 0,
                        color: Colors.red,
                      ),
                    ),                    
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 40.0),
                      child: CustomFlatButton(
                        title: "Twitter Login",
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        textColor: Colors.white,
                        onPressed: () {
                          _facebookSignUp(context: context);
                        },
                        splashColor: Colors.black12,
                        borderColor: Colors.blue,
                        borderWidth: 0,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                SafeArea(
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: onBackPress,
                  ),
                ),
              ],
            ),
            Offstage(
              offstage: !_blackVisible,
              child: GestureDetector(
                onTap: () {},
                child: AnimatedOpacity(
                  opacity: _blackVisible ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 400),
                  curve: Curves.ease,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _changeBlackVisible() {
    setState(() {
      _blackVisible = !_blackVisible;
    });
  }

  void _proceedToHome() {
    setState(() {
      _blackVisible = !_blackVisible;
    });

  }

  void _signUp(
      {String fullname,
      String number,
      String email,
      String password,
      BuildContext context}) async {
      print(fullname);
      print(number);
      print(email);
      print(password);
      /*Validator.validateName(fullname) &&
        Validator.validateEmail(email) &&
        Validator.validateNumber(number) &&
        Validator.validatePassword(password)*/
    if (email.length > 0) {
        print("we are about to tried this out");
        try {
          SystemChannels.textInput.invokeMethod('TextInput.hide');
          //_changeBlackVisible();
          Navigator.of(context).pushNamed("/home");
          /*await Auth.signUp(email, password).then((uID) {
            Auth.addUser(new User(
                userID: uID,
                email: email,
                firstName: fullname,
                profilePictureURL: ''));
            onBackPress();
          });*/
        } catch (e) {
          print("Error in sign up: $e");
          //String exception = Auth.getExceptionText(e);
          _showErrorAlert(
            title: "Signup failed",
            content: 'Something went very wrong',//exception,
            onPressed: _changeBlackVisible,
          );
        }
    }else{
      _changeBlackVisible();
      //print(Validator.validateName(fullname));
      //print(Validator.validateNumber(number));
      //print(Validator.validateEmail(email));
      print(Validator.validatePassword(password));
      _showErrorAlert(
        title: "Signup validator failed",
        content: 'Something went very wrong with the signup validation',//exception,
        onPressed: _changeBlackVisible,
      );
    }
  }

  void _facebookSignUp({BuildContext context}) async {
    try {
      SystemChannels.textInput.invokeMethod('TextInput.hide');
      /*_changeBlackVisible();
      FacebookLogin facebookLogin = new FacebookLogin();
      FacebookLoginResult result = await facebookLogin
          .logInWithReadPermissions(['email', 'public_profile']);
      switch (result.status) {
        case FacebookLoginStatus.loggedIn:
          Auth.signInWithFacebok(result.accessToken.token).then((uid) {
            Auth.getCurrentFirebaseUser().then((firebaseUser) {
              User user = new User(
                firstName: firebaseUser.displayName,
                userID: firebaseUser.uid,
                email: firebaseUser.email ?? '',
                profilePictureURL: firebaseUser.photoUrl ?? '',
              );
              Auth.addUser(user);
              Navigator.of(context).pop();
            });
          });
          break;
        case FacebookLoginStatus.cancelledByUser:
        case FacebookLoginStatus.error:
          _changeBlackVisible();
      }*/
      Navigator.of(context).pushNamed("/home");
    } catch (e) {
      print("Error in facebook sign in: $e");
      //String exception = Auth.getExceptionText(e);
      _showErrorAlert(
        title: "Login failed",
        content: e.toString(),
        onPressed: _changeBlackVisible,
      );
    }
  }

  void _showErrorAlert({String title, String content, VoidCallback onPressed}) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return CustomAlertDialog(
          content: content,
          title: title,
          onPressed: onPressed,
        );
      },
    );
  }
}
