import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

@override
  Widget build(BuildContext context) {
    
    var container = Container(

      height: 300.0,
      width: 300.0,
      color: Colors.deepOrange,
      child: Center(
      child: Text("My App"),
      ));

    var _appbar =  AppBar(
        title: Text("My App"),
        backgroundColor:Colors.teal,
        actions: <Widget>[
          Builder(
            builder: (context)=> IconButton(
                                icon:Icon(Icons.publish),
                                onPressed: ()=>_showSnackBar(context,"Published!!")
                                ),
          
          ),

           Builder(
            builder: (context)=> IconButton(
                                icon: Icon(Icons.more_vert),
                                onPressed: ()=>_showSnackBar(context,"No more options")
                                ),
          
          ),
          
        
       ],
      );

    var _floatingButton = Builder(
                    builder: (context)=> FloatingActionButton(
                                      backgroundColor: Colors.deepOrangeAccent,
                                      onPressed: ()=>_showSnackBar(context,"Floating Action Button Clicked"),
                                      child: Icon(
                                        Icons.add
                                      ),
                                    )
      );
     

    var homescreen =  Scaffold(

      appBar:_appbar,
      body: Builder(
        builder: (context)=>Center(child: container,)
        
      ),
      floatingActionButton: _floatingButton

    );

    return homescreen;
  }

  Widget _showSnackBar(BuildContext context,String content)
  {
    final snackbar =  SnackBar(
      content: Text(""+content),
      duration: Duration(seconds:2),
    );

    Scaffold.of(context).showSnackBar(snackbar);
    return snackbar;
  }

}