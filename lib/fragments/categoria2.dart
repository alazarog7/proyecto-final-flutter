import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight/2);

class Category extends StatelessWidget{

  final String name;
  final ColorSwatch color;
  final IconData iconLocation;


  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,

  }): assert (name != null),
        assert (color != null),
        assert (iconLocation != null),
        super( key : key);



  @override
  Widget build(BuildContext context) {
    return Material(
      color:  Colors.transparent,
      child:  Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius,
          splashColor: color,
          highlightColor: color,

          onTap: (){
          },

          child:  Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    iconLocation,
                    size: 40.0,
                  ),
                ),


                Center(
                  child: Text(
                    name,
                    style: Theme.of(context).textTheme.headline,
                  ),

                ),

              ],

            ),
          ),



        ),

      ),

    );
  }

}
