import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
        AppBar(
            title:
            Text(
                'Estudos programados'
            ),
            actions:
            [
              IconButton(
                  icon:
                  Icon(
                      Icons.exit_to_app
                  ),
                  onPressed:
                      () => Navigator.pushReplacementNamed(context, '/')
              )
            ]
        ),
        body:
        ListView.builder(
            itemCount:
            5,
            itemBuilder: (
                BuildContext context, int index
                ) {
              return ListTile(
                  title: Text('Estudo ${index+1}'),
                  trailing: Text('${index+1} : 00')
              );
            }
        ),
        floatingActionButton:
        FloatingActionButton(
            child:
            Icon(
                Icons.add
            ),
            onPressed:
                () => Navigator.pushNamed(context, '/cadastro')
        )
    );
  }
}
