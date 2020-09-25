import 'package:flutter/material.dart';


class LoginSignupPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _LoginSignupPageState();

}

class _LoginSignupPageState extends State<LoginSignupPage>{
  final _formKey = new GlobalKey<FormState>();








  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }



  @override
  Widget build(BuildContext context) {
    return new Scaffold(

        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/fondo.jpg'),
                fit: BoxFit.cover
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: <Widget>[
                _showForm()
              ],

            ),

        ),



        ));
  }

  Widget showTitleInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(80.0, 100.0, 0.0, 0.0),
      child: new Text(
        "Welcome!",
        style: TextStyle(
            color: Colors.white,
            fontSize: 38,
            fontWeight: FontWeight.bold),
      ),
    );
  }
  Widget showEmailInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
      child: new TextFormField(
        style: TextStyle(color: Colors.white),
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        decoration: new InputDecoration(
            hintText: 'Email',
            hintStyle: TextStyle(color: Colors.white),
            icon: new Icon(
              Icons.person,
              color: Colors.grey,
            )),

      ),
    );
  }

  Widget showPasswordInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
      child: new TextFormField(
        style: TextStyle(color: Colors.white),
        maxLines: 1,
        obscureText: true,
        autofocus: false,
        decoration: new InputDecoration(
            hintText: 'Password',
            hintStyle: TextStyle(color: Colors.white),
            icon: new Icon(
              Icons.lock,
              color: Colors.grey,
            )),

      ),
    );
  }
  Widget showPrimaryButton() {
    return new Padding(
        padding: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
        child: SizedBox(
          height: 40.0,
          child: new RaisedButton(
            elevation: 5.0,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            color: Colors.deepPurpleAccent,
            child: new Text('Log in',
                style: new TextStyle(fontSize: 20.0, color: Colors.white)),
            onPressed: (){},
          ),
        ));
  }
  Widget showSecondaryButton() {
    return new FlatButton(
        padding: EdgeInsets.fromLTRB(15.0, 20.0, 0.0, 0.0),
        child: new Text(
            'Forgot password' ,
            style: new TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600, color: Colors.white)),
        onPressed: () {});
  }
  Widget showTercearyButton() {
    return new FlatButton(
        padding: EdgeInsets.fromLTRB(15.0, 30.0, 0.0, 0.0),
        child: new Text(
            'Term & Conditions' ,
            style: new TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600, color: Colors.white)),
        onPressed: () {});
  }

  Widget _showForm() {
    return new Container(
        padding: EdgeInsets.all(16.0),
        child: new Form(
          key: _formKey,
          child: new ListView(
            shrinkWrap: true,
            children: <Widget>[
              showTitleInput(),
              showEmailInput(),
              showPasswordInput(),
              showPrimaryButton(),
              showSecondaryButton(),
              showTercearyButton(),

            ],
          ),
        ));
  }
}