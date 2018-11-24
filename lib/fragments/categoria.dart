import 'package:flutter/material.dart';
import 'package:flutter_starter/fragments/categoria2.dart';


final _backgroudColor =Colors.green[90];

class CategoryRoute extends StatelessWidget{
  const CategoryRoute ();


  Widget _buildWidget (List<Widget> categories){
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
  }


  @override
  Widget build(BuildContext context) {
    final categories  = <Category>[];
    final nombres = ['Salar de Uyuni','Lago Titicaca','Copacabana','Sama','San Lorenzo','Santa Ana','Tomatitas','Represa San Jacinto','Tiquipaya','Samaipata'];
    final colores = [ Colors.green,
    Colors.blue,
    Colors.amber,
    Colors.deepOrangeAccent,
    Colors.cyanAccent,
    Colors.deepPurpleAccent,
    Colors.green,
    Colors.deepOrange,
    Colors.lightGreenAccent,
    Colors.teal
    ];
    final iconos = [
      Icons.map,
      Icons.map,
      Icons.map,
      Icons.map,
      Icons.map,
      Icons.map,
      Icons.map,
      Icons.map,
      Icons.map,
      Icons.map
    ];

    for(var i =0; i<nombres.length; i++){
      categories.add(
          Category(
              name: nombres[i],
              color: colores[i],
              iconLocation: iconos[i])
      );

    }

    final ListView = Container(
      color: _backgroudColor,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildWidget(categories),

    );

    final appBar = AppBar(
      elevation: 10.0,
      centerTitle: true,
      title: Text('Flutter'),
    );


    return Scaffold(
      body: ListView,
    );
  }


}