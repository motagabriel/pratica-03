import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'lista.dart';

class Login extends StatelessWidget {
  @override
  static const IconData access_alarms_sharp = IconData(0xe739, fontFamily: 'MaterialIcons');
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment:
          MainAxisAlignment.center,
          children: [
            Icon(
                Icons.access_alarms_sharp, size: 72, color: Colors.blue
            ),
            Text(
                'Alarme Estudo', style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue
            )
            ),
            TextField(
                keyboardType:
                TextInputType.emailAddress,
                decoration:
                InputDecoration(
                    border:
                    UnderlineInputBorder(),
                    label:
                    Text(
                        'Email'
                    )
                )
            ),
            TextField(
                keyboardType:
                TextInputType.text,
                obscureText:
                true,
                decoration:
                InputDecoration(
                    border:
                    UnderlineInputBorder(),
                    label:
                    Text(
                        'Senha'
                    )
                )
            ),
            TextButton(
                child:
                Text(
                    'Entrar'
                ),
                onPressed:
                    () => Navigator.pushReplacementNamed(context, '/lista')
            )
          ],
        )
    );
  }
}