import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
        AppBar(
            title:
            Text(
                'Novo estudo'
            ),
            actions: [
              TextButton(
                  child:
                  Text(
                      'SALVAR',
                      style:
                      TextStyle(
                          color:
                          Colors.blue
                      )
                  ),
                  onPressed:
                      () => Navigator.pop(context)
              )
            ]
        ),
        body:
        Column(
            children: [
              TextField(
                  keyboardType:
                  TextInputType.name,
                  decoration:
                  InputDecoration(
                      border:
                      UnderlineInputBorder(),
                      label:
                      Text(
                          'Nome'
                      )
                  )
              ),
              TextField(
                  keyboardType:
                  TextInputType.datetime,
                  decoration:
                  InputDecoration(
                      border:
                      UnderlineInputBorder(),
                      label:
                      Text(
                          'Horário'
                      )
                  )
              )
            ]
        )
    );
  }
}