import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage2 createState() => _HomePage2();
}

class _HomePage2 extends State<HomePage> {
  final estiloTexto = new TextStyle(fontSize: 42);
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Scaffold(
          backgroundColor: Colors.blueGrey[100],
          appBar: AppBar(
              title: Text('Hugo Alan Castillo González '),
              backgroundColor: Colors.blueGrey[900],
              centerTitle: true),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('CLICS', style: estiloTexto),
                Text(
                  '$contador',
                  style: Theme.of(context).textTheme.display4,
                ),
              ],
            ),
          ),

          //BOTONES
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //BOTON RESTAURAR
                FloatingActionButton(
                  onPressed: () {
                    print('Restaurar');
                    setState(() {
                      contador = 0;
                    });
                  },
                  child: Icon(Icons.exposure_zero_outlined),
                ),

                //BOTON RESTAR
                FloatingActionButton(
                  onPressed: () {
                    print('Restar ');
                    setState(() {
                      contador--;
                    });
                  },
                  child: Icon(Icons.do_not_disturb_on),
                ),

                //BOTON SUMAR
                FloatingActionButton(
                  onPressed: () {
                    print('Sumar');
                    setState(() {
                      contador++;
                    });
                  },
                  child: Icon(Icons.add_circle),
                ),
              ],
            ),
          )
          /*
        //BOTON SUMAR
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('oprimiste el boton: ');
            setState(() {
              contador--;
            });
          },
        ),
        */
          ),
    );
  }
}
