import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool hidePassword = true;
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController date = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Image.network(
                    'https://www.pngkey.com/png/full/114-1149878_setting-user-avatar-in-specific-size-without-breaking.png',
                    height: 150,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Email',
                    ),
                    validator: (value) {
                      if(value == null || value.isEmpty){
                        return 'Please, Enter Your Email';
                      }else if (!RegExp(r'^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$').hasMatch(value)) {
                        return 'PLease, Enter Valid Email';
                      }else{
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: username,
                    decoration: const InputDecoration(
                      hintText: 'Username hint',
                      label: Text('Username'),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.green,
                        width: 2,
                      )),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 2,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.teal,
                      )),
                      prefixIcon: Icon(Icons.person),
                    ),
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if(value == null || value.isEmpty) {
                        return 'Please, Enter Your Username';
                      }else if (value != 'Kareem'){
                        return 'Wrong Username';
                      }else{
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    controller: password,
                    validator: (value) {
                      if(value == null || value.trim().isEmpty){
                        return 'Please, Enter Your Password';
                      }else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      hintText: 'Password hint',
                      label: const Text('Password'),
                      border: const OutlineInputBorder(),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.green,
                        width: 2,
                      )),
                      errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      focusedErrorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 2,
                        ),
                      ),
                      disabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.teal,
                      )),
                      prefixIcon: const Icon(Icons.password),
                      // prefix: Text('Password: '),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            hidePassword = !hidePassword;
                          });
                        },
                        icon: Icon(
                          hidePassword
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                        ),
                      ),
                      // fillColor: Colors.blue,
                      // filled: true
                    ),
                    obscureText: hidePassword,
                    obscuringCharacter: '#',
                    onTap: () {
                      // print('password tapped');
                    },
                    onFieldSubmitted: (value) {
                      // print('Password: $value');
                      doLogin();
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    controller: date,
                    // onTap: ()  async {
                    //   print('Inside Date Now');
                    //   showDatePicker(
                    //       context: context,
                    //       firstDate: DateTime(2024,5,29),
                    //       lastDate: DateTime.now().add(Duration(days: 2 * 365)),
                    //       initialDate: DateTime.now(),
                    //     ).then((value) {
                    //     showTimePicker(context: context, initialTime: TimeOfDay.now());
                    //     },);
                    //     // date.text = chooseDate.toString();
                    //     print('Finished');
                    // },
                    onChanged: (value) {
                      // print('Date: $value');
                    },
                    decoration: const InputDecoration(
                      hintText: 'Date',
                    ),
                    // readOnly: true,
                    // enabled: false,
                    keyboardType: TextInputType.none,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    onTap: () {},
                    decoration: const InputDecoration(
                      hintText: 'Phone',
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      doLogin();
                    },
                    child: const Text(
                      'Login',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void doLogin (){
    if(formKey.currentState!.validate()){
      username.clear();
      password.text = '';
      toastification.show(
        title: Text('Hello, ${username.text}!'),
        autoCloseDuration: const Duration(seconds: 5),
      );
    }
  }
}
