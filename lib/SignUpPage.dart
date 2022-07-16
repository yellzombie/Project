import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:movie/loginPage.dart';

class SignUpPage extends StatefulWidget {


  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isChecked = false;
  bool isHiddenPassword =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 56,
                ),
                Image.asset('assets/images/ic_logo.png',width: 84, height: 77,),
                SizedBox(
                  height: 24 ,
                ),
                Text("Show", style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'Roboto',
                  wordSpacing: 5,
                  color: Color(0xff1A6350),
                ),),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: [
                      Text('Create your account', style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        color: Color(0xff08211A),
                      ),),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            const BorderSide(width: 1, color: Color(0xff1A6350)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            const BorderSide(width: 1, color: Color(0xff1A6350)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextField(
                        obscureText: isHiddenPassword,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          suffixIcon: InkWell(onTap: _togglePasswordView,child: Icon(Icons.visibility)),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            const BorderSide(width: 1, color: Color(0xff1A6350)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            const BorderSide(width: 1, color: Color(0xff1A6350)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextField(
                        obscureText: isHiddenPassword,
                        decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          suffixIcon: InkWell(onTap: _togglePasswordView,child: Icon(Icons.visibility)),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            const BorderSide(width: 1, color: Color(0xff1A6350)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            const BorderSide(width: 1, color: Color(0xff1A6350)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Container(
                    width: 370,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff1A6350),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                Text('or sign in with'),
                SizedBox(height: 16,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),

                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/google.png',scale: 2,),
                        Image.asset('assets/images/facebook.png',scale: 2,),
                        Image.asset('assets/images/twitter.png',scale: 2,),

                      ]),
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text("Already have an account?",style: TextStyle(
                      fontSize: 14,
                    ),),
                    CupertinoButton(child: Text("Sign In",style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      color: Color(0xff1A6350),
                    ),),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return LoginPage();
                          },),);
                        }
                    )
                  ],
                ),
              ]
          ),
        ),
      ),
    );
  }
  void _togglePasswordView() {
    isHiddenPassword =!isHiddenPassword;
    setState(() {});
  }

}
