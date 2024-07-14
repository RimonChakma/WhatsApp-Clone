import 'package:flutter/material.dart';
import 'package:third_app/views/HomeView/third.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  List<Map>bio = [
    
    {
      "name":"Rimon Chakma",
      "title":"hi there!how are you",
      "time":"12.00 AM",
      "count":"0",
      "image":"https://www.shutterstock.com/image-photo/profile-picture-smiling-successful-young-260nw-2040223583.jpg"
      
    },
    {
      "name":"Shusil Chakma",
      "title":"hi there!how are you",
      "time":"12.00 AM",
      "count":"4"
    },
    {
      "name":"Shima Chakma",
      "title":"hi there!how are you",
      "time":"12.00 AM",
      "count":"4"
    },
    {
      "name":"Tisha Chakma",
      "title":"hi there!how are you",
      "time":"12.00 AM",
      "count":"4"
    },
    {
      "name":"Md Sayed",
      "title":"hi there!how are you",
      "time":"12.00 AM",
      "count":"4"
    },
    {
      "name":"Rakib talukder",
      "title":"hi there!how are you",
      "time":"12.00 AM",
      "count":"4"
    },
    {
      "name":"MD Tanim",
      "title":"hi there!how are you",
      "time":"12.00 AM",
      "count":"4"
    },
    {
      "name":"Chairman Da",
      "title":"hi there!how are you",
      "time":"12.00 AM",
      "count":"4"
    },
    {
      "name":"Jewel Chakma",
      "title":"hi there!how are you",
      "time":"12.00 AM",
      "count":"4"
    },
    {
      "name":"Aturno Chakma",
      "title":"hi there!how are you",
      "time":"12.00 AM",
      "count":"4"
      
    },


  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,

      child: Scaffold(
        
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            
          }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
          backgroundColor: const Color.fromARGB(255, 204, 167, 167),
          title: Text("whatsapp"),
          actions: [
            Icon(Icons.search,color: Colors.white,),
            Icon(Icons.more_vert,color: Colors.white,),
            
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.white.withOpacity(.7),
            labelColor: Colors.white,
            tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
             child: Text("Chats"),
            ),
            Tab(
              child: Text("Story"),
            ),
            Tab(
              child: Text("history"),
            )
          ]),
          
        ),
        body: TabBarView(children: [
          Text("1st tab"),
          ListView.builder(
            itemCount: bio.length,

            itemBuilder:
            
             (context, index) {
            return Column(
              children: [
                ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeActivity(
                      name:bio[index]["name"],
                      image:bio[index]["image"],
                   
                    ),));
                  },
                  
                  leading: CircleAvatar(
                    
                    backgroundImage: NetworkImage("https://media.istockphoto.com/id/1325359218/photo/portrait-of-a-young-african-man-at-studio-high-fashion-male-model-in-colorful-bright-neon.jpg?s=612x612&w=0&k=20&c=1O_vxp9rdD_5avvE0aCMYgJumDv4Ykq6dCWfQmU2G3U="),
                  ),
                  title: Text(bio[index]["name"],style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text(bio[index]["title"],style: TextStyle(color: Colors.black.withOpacity(.7)),),
                  trailing: Column(
                    children: [
                      Text(bio[index]["time"],style: TextStyle(
                        color:bio[index]["time"]=="0"? Colors.black:Colors.green
                      ),
                      
                      ),
                    bio[index]["count"] == "0"? SizedBox(): Container(
                        child: Center(child: Text(bio[index]["count"],style: TextStyle(color: Colors.white),)),

                        
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle
                        ),
                      )
                    
                    ],
                  ),
                  
                  
                  
                ),
                
                
              ],
            );
            
          },),
          Text("3rd tab"),
          Text("4th tab")
        ]),
      
      ),
    );
  }
}