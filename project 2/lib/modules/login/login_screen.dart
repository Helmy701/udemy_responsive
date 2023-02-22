import 'package:flutter/material.dart';
import 'package:project_b/shared/components/components.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var hey = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(            // to can make falidate in TextFormField
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Login',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  defaulTextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      validate: (value)
                      {
                        if(value!.isEmpty)
                          {
                            return 'email must not be empty';
                          }
                        return null;
                      },
                      lable: 'Email',
                      prefix: Icons.email,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  defaulTextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    isPassword: true,
                    validate: (value)
                    {
                      if(value.isEmpty)
                        {
                          return 'password must not be empty';
                        }
                      return null;
                    },
                    lable: 'Password',
                    prefix: Icons.lock,
                    suffix: Icons.remove_red_eye,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: hey,
                    textInputAction: TextInputAction.search,
                    validator: (value){
                      if(value!.isEmpty)
                        {
                          return null;
                        }
                      return 'Don\'t fucking touch me';
                    },
                    decoration: InputDecoration(
                      labelText: 'hey',
                      border: OutlineInputBorder(),
                      // hintText: 'Ahmed'
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  defaultButton(
                      text: 'Login',
                    background: Colors.lightBlue,
                    function: ()
                      {
                        if (formKey.currentState!.validate())
                          {
                            print(emailController.text);
                            print(passwordController.text);
                            print(hey.text);
                          }

                      }
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  defaultButton(
                    function: (){
                      print(emailController.text);
                      print(passwordController.text);
                    },
                    isUpperCase: false,
                    text: 'Register',
                    background: Colors.lightBlue,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          'don\'t have an account?'
                      ),
                      TextButton(onPressed: (){},
                          child: Text('Register now'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


