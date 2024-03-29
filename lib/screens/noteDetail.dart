import 'package:flutter/material.dart';

class NoteDetail extends StatefulWidget{
  String appBarTitle;
  NoteDetail(this.appBarTitle);
  
  

  @override
  State<StatefulWidget> createState() {
    
    return NoteDetailState(this.appBarTitle);
  }

}

class NoteDetailState extends State<NoteDetail>{
  static var _priorities = ["high", "low"];

  String appBarTitle;
  NoteDetailState(this.appBarTitle);

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    
        return Scaffold(
          appBar: AppBar(
            title: Text(appBarTitle),
    
          ),
            body: 
            Padding(
              padding: EdgeInsets.all(10.0),
              child: ListView(
                children: <Widget>[
                  ListTile(
                    title: DropdownButton(
                      items: _priorities.map((String dropDownStringItem){
                    return DropdownMenuItem<String>(
                      value: dropDownStringItem,
                      child : Text(dropDownStringItem)
                    );
                      }).toList(),
                      style: textStyle,

                      value: _priorities[0],
                      onChanged: (valueSelectedByUser){
                          //
                      },
                      ),
                
              ),
              //second element
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: titleController,
                  style: textStyle,
                  onChanged: (value){

                  },
                  decoration: InputDecoration(
                    labelText: "Title",
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)
                    )                ),
                ),
              ),
        //third element
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: descriptionController,
                  style: textStyle,
                  onChanged: (value){

                  },
                  decoration: InputDecoration(
                    labelText: "Description",
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)
                    )                ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                children: <Widget>[
                  Expanded( 
                    child : RaisedButton(
                    color: Theme.of(context).primaryColorDark,
                    textColor: Theme.of(context).primaryColorLight,
                    child: Text("Save",
                    textScaleFactor: 1.5,),

                    onPressed: (){
                      setState(() {
                        
                      });

                    },
                  )),

                  Container(
                    width: 5.0,
                  ),
                  Expanded(
                    child: RaisedButton(
                        color: Theme.of(context).primaryColorDark,
                        textColor: Theme.of(context).primaryColorLight,
                        child: Text("delete",
                        textScaleFactor: 1.5,),
                        onPressed: (){
                          setState(() {
                            
                          });

                        },
                      ),
                    ),
                  
                ],
              
              ),
              )
              
                  ]
          ),
        )
    );
  }


}