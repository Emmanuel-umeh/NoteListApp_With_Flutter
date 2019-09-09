// TODO Implement this library.

import 'package:flutter/material.dart';
import 'package:newapp/screens/noteDetail.dart';

class NoteList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return NoteListState();
  }

}

class NoteListState extends State<NoteList>{
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(

      onWillPop: (){
        moveToLastScreen();
      },
      child : Scaffold(
      appBar: AppBar(
        title: Text('noteList'),
        leading: IconButton(icon : Icon(Icons.arrow_back),
        onPressed: (){
          moveToLastScreen();

        },),
      
        
        ),
        
        body: getListView(),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            navigateToDetail("Add note");

          },
          tooltip: "Add note",
          child: Icon(Icons.add),

          
        ),

        ));
  
  }

  ListView getListView(){
    TextStyle titleStyle = Theme.of(context).textTheme.subhead;

    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position){
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Icon(Icons.keyboard_arrow_right), 
              

              
            ),
            title: Text("dummy text"),
            subtitle: Text("Dummy data"),

            trailing: Icon(Icons.delete),
            onTap: (){
              navigateToDetail("Edit note");
              
            },

          ),
        );
      },

    );
  }
void navigateToDetail(String title){
  Navigator.push(context, MaterialPageRoute(builder: (context){
                return NoteDetail(title);
              }));
}
void moveToLastScreen(){
  Navigator.pop(context);
}
}
