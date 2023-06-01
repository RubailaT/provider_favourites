import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_favourites/cart_page.dart';
import 'package:provider_favourites/provider/privider_function.dart';


class Provider_favorites extends StatefulWidget {
   const Provider_favorites({Key? key}) : super(key: key);

   @override
   State<Provider_favorites> createState() => _Provider_favoritesState();
 }

 class _Provider_favoritesState extends State<Provider_favorites> {
   List Items=["time","year","people","way","day","man","thing","women","life","child","world","school"];

   @override
   Widget build(BuildContext context) {
     final object=Provider.of<Provider_class>(context);
     return Scaffold(
       appBar:  AppBar(
         title: Text("English words"),
       ),

       body: Column(
         children: [

           ListView.builder(
             shrinkWrap: true,
             // physics: ScrollPhysics(),
             itemCount: Items.length,
               itemBuilder:(context,index){
               return Container(
                 child: Column(
                   children: [
                     ListTile(
                       leading: Text(Items[index],style: TextStyle(fontSize: 20),),
                       trailing: IconButton(
                         onPressed: (){
                           object.favorites(Items[index]);
                         },
                         icon: object.icon_change(Items[index])
                             ?Icon(Icons.favorite,color: Colors.red,)
                             : Icon(Icons.favorite_border,color: Colors.blue,)
                       ),
                     ),
                   ],
                 ),

               );
               }),
         ],
       ),

       floatingActionButton: Container(
         width: 100,
         height: 50,
         child: FloatingActionButton(
           onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Cartpage()));
           },
     backgroundColor: Colors.blue,
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(70)),

           child: Text("Favorites",style: TextStyle(
               color: Colors.white),),
         ),
       ),



     );
   }
 }

