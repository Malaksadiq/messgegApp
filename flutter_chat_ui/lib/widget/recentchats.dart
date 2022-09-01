import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/screens/chat_screen.dart';
import 'package:flutter_chat_ui/widget/messagemodel.dart';

class recentchats extends StatelessWidget {
  const recentchats({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
  child:   Container(
  
      decoration: BoxDecoration(color:Colors.white,
  
      borderRadius: BorderRadius.only(topLeft:Radius.circular(30.0,)
  
      ,topRight: Radius.circular(30.0))),


      child: ClipRRect(
        borderRadius: BorderRadius.only(topRight: Radius.circular(30.0),
        topLeft: Radius.circular(30.0),
        ),
        child: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (BuildContext context, int index) {
            final Message chat=chats[index];
            return GestureDetector(
              onTap: () => Navigator.push(context,
               MaterialPageRoute(builder: (_)=>ChatScreen(user:chat.sender),
              ),
            ),
              child: Container( 
                 margin: EdgeInsets.only(top: 5.0,bottom: 5.0,right: 20.0),
                 padding: EdgeInsets.symmetric(horizontal:20,vertical: 10),
                 decoration: BoxDecoration(color:chat.unread? Color(0xFFFFEFEE):Colors.white,
                 
                 borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                 bottomRight: Radius.circular(20.0)),
                 
                 ),
              
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(radius: 35.0,
                        backgroundImage: AssetImage(chat.sender.imageUrl),
                        
                        ),
                  
                           SizedBox(width: 10.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                  
                          children: [
                            
                            Text(chat.sender.name,style:TextStyle(fontSize: 18.0,
                            color: Colors.grey,fontWeight: FontWeight.bold),
                            
                          
                            ),
                             SizedBox(height: 5.0,),
                            Container(
                              width: MediaQuery.of(context).size.width*0.45,
                              child: Text(chat.text,style:TextStyle(fontSize: 15.0,
                              color: Colors.blueGrey,fontWeight: FontWeight.w600),
                              overflow: TextOverflow.ellipsis,
                              
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                   children: [
                   Text(chat.time,style:TextStyle(fontSize: 15.0, 
                   color: Colors.grey,fontWeight: FontWeight.bold),
                   ),
                   SizedBox(height: 5.0,),
                   chat.unread
                  ? Container(child: Text('new',style: TextStyle(fontSize: 12.0,
                   color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 1.1),)
                   ,width: 40.0,
                   height: 20.0,
                   decoration: BoxDecoration(borderRadius:BorderRadius.circular(30.0),
                   
                   color:chat.unread? Colors.red:Colors.white),
                   alignment: Alignment.center,
                   
                   )
                   :Text(''),
                  
                   ],
                  
                  
                         
                    ),
                  ],
                ),
              ),
            ) ;
          },
        ),
      ),
  ),
);
  }
}