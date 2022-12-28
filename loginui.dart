import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: Login(),
    debugShowCheckedModeBanner: false,
    title: "login",
  ));
}
class Login extends StatelessWidget{
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin:const EdgeInsets.only(top: 240,left: 20,right: 20),
          padding:const EdgeInsets.symmetric(vertical: 2.5,horizontal: 20),
          width: 400,
          height: 550,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
              color: Colors.black12,
          ),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Log in',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w800
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding:const EdgeInsets.symmetric(vertical: 10,horizontal: 30)
                  ),
                  onPressed: (){}, child: const Text('Log in')),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: (){}, child:const Text('Or, Sign up'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}