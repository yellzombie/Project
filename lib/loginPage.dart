import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:movie/HomePage.dart';
import 'package:movie/SignUpPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  bool isHiddenPassword =true;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      return Colors.grey;
    }
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
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
                  Text('Login to your account', style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    color: Color(0xff08211A),
                  ),),
                  SizedBox(
                    height: 24,
                  ),

                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: TextField(
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
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: TextField(
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
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Row(
                       children: [
                         Checkbox(
                          checkColor: Colors.white,
                          fillColor: MaterialStateProperty.resolveWith(getColor),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                         SizedBox(
                           width: 3,
                         ),
                         Text('Remember me',style: TextStyle(
                           fontFamily: 'Roboto',
                           fontSize: 14,
                           color: Color(0xff1A6350),
                         ),),
                         SizedBox(
                           width: 76,
                         ),
                         Text('Forget Password?', style: TextStyle(
                           fontFamily: 'Roboto',
                           fontSize: 14,
                           color: Color(0xff1A6350),
                         ),)
                      ],
                    ),
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
                      child: CupertinoButton(
                        onPressed: () {
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) {
                            return BottomNavigation();
                          },),);
                        },
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
                    SizedBox(height: 55,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Text("Don't have an account ?",style: TextStyle(
                          fontSize: 14,
                        ),),
                        CupertinoButton(child: Text("Sign up",style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          color: Color(0xff1A6350),
                          decoration: TextDecoration.underline,
                        ),),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return SignUpPage();
                              },),);
                            }
                        )
                      ],
                    ),
                  // ListTile(
                  //   onTap: (){
                  //     setState(() {
                  //       _isSelected = !_isSelected;
                  //     });
                  //   },
                  //   leading: Checkbox(value: false, onChanged: (bool? value) {
                  //     setState(() {
                  //       _isSelected = value!;
                  //     });
                  //   },activeColor: Colors.lightBlue,),
                  //
                  //   title: Text('Remember me',style: TextStyle(
                  //     fontFamily: 'Pacifico',
                  //     color: Color(0xff1A6350),
                  //     wordSpacing: 2,
                  //   ),),
                  // )
                  // Container(
                  //
                  //   decoration: BoxDecoration(
                  //       color: _isSelected ? Colors.blue :Colors.grey,
                  //       borderRadius: BorderRadius.circular(4.0)
                  //   ),
                  //   width: 20,
                  //   height: 20,
                  //   child: _isSelected ? Icon(
                  //     Icons.check,
                  //     color: Colors.white,
                  //   ) : null,
                  //
                  // ),


                ]
            ),
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
