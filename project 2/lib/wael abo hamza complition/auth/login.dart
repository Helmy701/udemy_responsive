import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsetsDirectional.only(
                end: 140
            ),
              child: Image.asset('assets/images/vector stp.png'),
          ),
          Form(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1)
                        ),
                        label: Text('Username'),
                        prefixIcon: Icon(
                          Icons.person
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1)
                        ),
                        label: Text('Password'),
                        prefixIcon: Icon(
                            Icons.lock
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                          start: 2,
                          top: 10,
                      ),
                      child: Container(
                        child: Row(
                          children: [
                            Text('if u don\'t have account'),
                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, 'signup');
                              },
                              child: Text(' Click Here',
                                style: TextStyle(
                                  color: Colors.blue
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: MaterialButton(
                        color: Theme.of(context).buttonColor,
                          onPressed: (){
                          Navigator.pushReplacementNamed(context, 'homepage');
                          },
                        child: Text(
                            'Login',
                          style: Theme.of(context).textTheme.headline6
                        ),
                      ),
                    )

                  ],
                ),
              ),
          )
        ],
      )
      ),
    );
  }
}
