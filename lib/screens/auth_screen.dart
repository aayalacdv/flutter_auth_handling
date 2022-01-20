import 'package:auth_project/models/auth_manager.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthManager _manager = new AuthManager();

    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
        color: Colors.white,
        child: Column(
          children: [
            StreamBuilder(
                stream: _manager.email$,
                builder: (context, snapshot) {
                  return TextField(
                    onChanged: (value) => _manager.addEmail(value),
                    decoration: InputDecoration(
                      label: Text('email'),
                    ),
                  );
                }),
            StreamBuilder(
                stream: _manager.email$,
                builder: (context, snapshot) {
                  return TextField(
                    onChanged: (value) => _manager.addPassword(value),
                    decoration: InputDecoration(
                      label: Text('password'),
                    ),
                  );
                }),
            IconButton(
              onPressed: () async {
                await _manager.logUserIn(context);
              },
              icon: Icon(Icons.send),
            ),
            ElevatedButton(
                onPressed: () async {
                  await _manager.signInWithGoogle(context);
                  print(_manager.inGoogleUser.email);
                },
                child: const Text(
                  'Google',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            ElevatedButton(
                onPressed: () async {
                  if (_manager.inGoogleUser != null) {
                    await _manager.signOutWithGoogle(context);
                    print(_manager.inGoogleUser.email);
                  }
                  ;
                },
                child: const Text(
                  'SignOut',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}
