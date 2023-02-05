import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailController =TextEditingController();
  var passwordController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start ,
          children:  [
            Center(
              child: Text(
                'Chat App',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            TextFormField(
              controller: emailController,
              decoration:InputDecoration(
                labelText: 'Email Address',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
              keyboardType:TextInputType.emailAddress ,
            ),
            SizedBox(
              height: 35.0,
            ),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock,color:Colors.purple,),
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
              obscureText: true,
            ),
            SizedBox(
              height: 65.0,
            ),
           Container(
             color: Colors.blue,
             //height: 30.0,
             width:double.infinity,
             child: MaterialButton(onPressed: (){

               print(emailController.text);
               print(passwordController.text);
             } ,
               child: Text('LOGIN',style: TextStyle(fontSize: 20.0, color:Colors.white),),
             ),
           )
          ],
        ),
      ),
    );
  }
}
