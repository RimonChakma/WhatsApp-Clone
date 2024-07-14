import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeActivity extends StatefulWidget {
  final String name;
   final String image;
  
  const HomeActivity({super.key, required this.name, required this.image});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {

  List<Map> details=[
    {
      "message":"Hi",
      "is me":true,
      "time":"8.00 AM"
    },
    {
      "message":"Hello",
      
      "is me":false,
      "time":"8.01",

    },
    {
      "message":"How are you",
      "is me":true,
      "time":"8,02",

    },
    {
      "message":"I am fine",
      "is me":false,
      "time":"8.03"
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
       backgroundColor: const Color.fromARGB(255, 148, 76, 76),
       title: Expanded(child: ListTile(
        
        leading: CircleAvatar(
          backgroundImage: NetworkImage(widget.image),
          
        ),
        title: Text(widget.name,style: TextStyle(
          color: Colors.white
        ),),
        subtitle: Text("last seen 8.00 AM",style: TextStyle(
          color: Colors.white.withOpacity(.7)
        ),),
        trailing: Icon(Icons.more_vert,color: Colors.white,),
       )),
       
      ),

      body:Column(
        children: [
           Expanded(
             child: ListView.builder(
                     padding: EdgeInsets.all(15),
                     itemCount:  details.length,
                     itemBuilder: (context, index) {
                       return Column(
             
             crossAxisAlignment:details[index]["is me"]== true? CrossAxisAlignment.end:CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                   
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.all(7),
                      
                      decoration: BoxDecoration(
                       color:details[index]["is me"]== true? Colors.red:Colors.blue,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)
                        )
                        
                      ),
                      child: Text(details[index]["message"],style: TextStyle(
                        color: Colors.white,
                        
                      ),),
                      
                    ),
                    Text(details[index]["time"])
                  ],
                )
              ],
                       );
                     
                   },),
           ),
           
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 223, 210, 210).withOpacity(.8),
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter your type",
              
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.link),
                  prefixIcon: Icon(Icons.emoji_emotions_outlined)
                  
                ),
                
              ),
              
            ),
            

          ),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            child: Icon(Icons.send,color: Colors.blue, ),
            backgroundColor: Colors.red,
          )
        ],
      ),
    )
      
        ],
      )
      
    );
  }
}