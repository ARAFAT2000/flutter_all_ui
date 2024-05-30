import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//HomeScreenT == Telegram home
class HomeScreenT extends StatefulWidget {
  const HomeScreenT({super.key});

  @override
  State<HomeScreenT> createState() => _HomeScreenTState();
}

class _HomeScreenTState extends State<HomeScreenT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.blue,
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.only(left: 15,top: 40,right: 20),
             child: SizedBox(
               height: 200,
               child: Container(

                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,

                   children: [
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          child: ClipOval(
                              child: Image.asset(
                                'assets/images/abc.png',
                                fit: BoxFit.fill,)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.green)
                          ),
                        ),
                        Icon(Icons.light_mode)
                      ],
                    ),
                     SizedBox(
                       height: 14,
                     ),
                     Text('Md Abjajul Islam',style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 18
                     ),),
                     Text('0172***2830',style: TextStyle(
                         fontSize: 18
                     ),),
                     SizedBox(
                       height: 14,
                     ),

                   ],
                 ),
               ),
             ),
           ),
           Container(
             width: double.infinity,
             height: 500,
             color: Colors.white,
             child: SingleChildScrollView(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   ListTile(
                     leading: Icon(Icons.person),
                     title: Text('My profile',style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 18
                     ),),
                   ),
                   Divider(),
                   ListView.builder(
                     shrinkWrap: true,
                           itemCount:7,
                       itemBuilder: (context,index){
                         return ListTile(
                           leading: Icon(Icons.group),
                           title: Text('New Group'),
                         );
                       })
                 ],
               ),
             ),
           ),
         ],
       ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
          onPressed: (){},
      child: Icon(Icons.add,
      color: Colors.white,
      ),
      ),
      body: CustomScrollView(
        slivers:<Widget> [

           SliverAppBar(
             pinned: true,
             snap: false,
             floating: true,
             expandedHeight: 150,
             flexibleSpace: FlexibleSpaceBar(
                title: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      child: Stack(
                        alignment:AlignmentDirectional.bottomEnd ,
                        children: [
                          Positioned(
                            child: ClipOval(
                                child: Image.asset(
                                  'assets/images/abc.png',
                                  width: 50,
                                  fit: BoxFit.fill,)),
                          ),
                          Positioned(
                            left: 20,

                              child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                  ),
                                  child: Icon(Icons.add,color: Colors.teal,)))

                        ],
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.redAccent)
                      ),
                    ),
                    Text('  '),
                    Container(
                      height: 35,
                      width: 35,
                      child: ClipOval(
                          child: Image.asset(
                            'assets/images/abc.png',
                            fit: BoxFit.fill,)),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green)
                      ),
                    ),
                  ],
                ),
             ),


             actions: [
               Icon(Icons.search),
               Text('   ')
             ],
             title: Row(
               children: [
                 Container(
                   height: 42,
                     width: 42,
                   child: ClipOval(
                       child: Image.asset(
                           'assets/images/abc.png',
                       fit: BoxFit.fill,)),
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     border: Border.all(color: Colors.redAccent)
                   ),
                 ),
                 SizedBox(

                 ),
                 Text(' 1 Story')
               ],
             ),
           ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return ListTile(
                          leading: Container(
                            height: 42,
                            width: 42,
                            child: ClipOval(
                                child: Image.asset(
                                  'assets/images/abc.png',
                                  fit: BoxFit.fill,)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.redAccent)
                            ),
                          ) ,
                          title: Text('Md Abjajul Islam '),
                          subtitle: Text('33 minitues ago '),
                          trailing: Column(
                            children: [
                              Text('Tue'),
                              Container(
                                height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle
                                  ),
                                  child: Center(child: Text('21'))),
                            ],
                          ),
                        );
                      },
              childCount: 23
              ))
        ],
      ),
    );
  }
}
