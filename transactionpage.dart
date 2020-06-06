

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:transaction/Dropdow.DART';
//import 'package:transaction/sss.dart';
import './copies.dart';
import 'count.dart';

class MyHomePage extends StatefulWidget {
  @override
  

  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _filePath;

  void getFilePath() async {
    
   try {
      String filePath = await FilePicker.getFilePath(type: FileType.any);
      if (filePath == '') {
        return;
      }
      print("File path: " + filePath);
      setState((){this._filePath = filePath;});
    } on PlatformException catch (e) {
      print("Error while picking the file: " + e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {



    

    return new Scaffold(
      appBar: new AppBar(
        title: Center(
            child: Text('TRANSACTION'),
          ),
      backgroundColor: Colors.orange[600],),
    
      body: Container(
        child: Column(children: <Widget>[
          
      Container(

        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: Colors.orange[500],
        ),
        
       // 
        
        
      child:Column(children: <Widget>[

        SizedBox(height: 30,),

        // ICon of uploading document
         Center(
           
           child: FloatingActionButton(
             backgroundColor: Colors.grey,
        onPressed: getFilePath,
        tooltip: 'Select file',
        child: new Icon(Icons.sd_storage),
      ),

         ),
         SizedBox(height: 50,),
         

          Card(
               color: Colors.grey[350],
     child: Column(
      
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 0,horizontal: 4),
           height:30 ,
        // width: 300,
          decoration: BoxDecoration(
            //color: Colors.grey[200],

            borderRadius: BorderRadius.circular(22),
          ),
         // color: Colors.yellow,
          child: _filePath == null
            ? new Text('No file selected.')
            : new Text('Path' + _filePath),
        ),
      ],
     ),
     ),

         SizedBox(height: 40,),
         Container(
      
      child:Column(children: <Widget>[
        
          Container(
          
          margin: EdgeInsets.symmetric(horizontal: 16)  ,
          height:50 ,
          decoration: BoxDecoration(
            color: Colors.grey[350],
            borderRadius: BorderRadius.circular(13),
          ),
          width:330,
          
          child:Row(
            children: [
              SizedBox(width: 10,),
              Text("TYPES OF BINDING  ",style: TextStyle(fontSize: 17),),
              
             SizedBox(width:30 ),
              DropdownExample()
            ],
          )
          
   
          ),
        
            
              
      

            ],

          ),
      
      
      ),



      
         SizedBox(height: 10,),
         Container(
      
      child:Column(children: <Widget>[
        
          Container(
          
          margin: EdgeInsets.symmetric(horizontal: 16)  ,
          height:50 ,
          decoration: BoxDecoration(
            color: Colors.grey[350],
            borderRadius: BorderRadius.circular(13),
          ),
          width:330,
          
          child:Row(
            children: [
              SizedBox(width: 10,),
              Text("NO.OF.COPIES  ",style: TextStyle(fontSize: 17),),
              
             SizedBox(width: 69,),
                            DropdownExample1()
              
            ],
          )
          
   
          ),
        
            
              
      

            ],

          ),
      
      
      ),

       SizedBox(height: 10,),
         Container(
      
      child:Column(children: <Widget>[
        
          Container(
          
          margin: EdgeInsets.symmetric(horizontal: 16)  ,
          height:50 ,
          decoration: BoxDecoration(
            color: Colors.grey[350],
            borderRadius: BorderRadius.circular(13),
          ),
          width:330,
          
          child:Row(
            children: [
              SizedBox(width: 10,),
              Text("FRONT & BACK  ",style: TextStyle(fontSize: 17),),
              
              SizedBox(width: 57,),
              SwitchWidget ()

              
            ],
          )
          
   
          ),
        
            
              
      

            ],

          ),
      
      
      ),
      SizedBox(height:20),
      Container(
        
        
        child: Row(
          children: <Widget>[
            SizedBox(width:20),
            
          Container(
          
          margin: EdgeInsets.symmetric(horizontal: 36)  ,
          height:50 ,
          decoration: BoxDecoration(
            color: Colors.grey[350],
            borderRadius: BorderRadius.circular(13),
          ),
          width:100,
          
          child:Row(
            children: [
              SizedBox(width: 10,),
              Text("AMOUNT : ",style: TextStyle(fontSize: 17),), 
            
            ],
            
          )
          
   
          ),
          SizedBox(width: 4),
          
          Container(
          
          //margin: EdgeInsets.symmetric(horizontal: 16)  ,
          height:50 ,
          decoration: BoxDecoration(
            color: Colors.grey[350],
            borderRadius: BorderRadius.circular(13),
          ),
          width:100,
          
          child:Row(
            children: [
              //SizedBox(width: 10,),
             
            ],
          ),
          
          margin: EdgeInsets.only(bottom: 1.5),
          ),
            
            
          ],
        ),
      ),
      
      
      

      







        
      ],
      ),
  
     padding: EdgeInsets.only(bottom: 20),
      ),
      Container(
        
        padding: EdgeInsets.only(right: 10,left: 10,bottom: 50,top: 20),
        margin: EdgeInsets.only(right: 20,left: 20,),
        

        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: Colors.orange[500],
        ),
        child: Column(children: <Widget>[
          Text("PAYMENT METHOD",style: TextStyle(fontSize: 22,fontStyle: FontStyle.normal,color: Colors.white,fontWeight: FontWeight.bold),),
          SizedBox(height: 40,),
          Row(
            children: <Widget>[
              
            SizedBox(width: 70,),
              FloatingActionButton(
                backgroundColor:Colors.grey,
                
            child: Icon(Icons.attach_money,
            ),
            
            
            onPressed: null),
            SizedBox(width: 75,),
              FloatingActionButton(
                
                backgroundColor:Colors.grey,
            child: Icon(Icons.perm_identity),
            
            onPressed: null),
          
            ],

          ),
            
        ],),
      )
        ],
        ),
      )
    );
  }
  }

