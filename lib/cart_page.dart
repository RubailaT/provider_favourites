import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_favourites/provider/privider_function.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({Key? key}) : super(key: key);

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {

  @override
  Widget build(BuildContext context) {
    final newobj=Provider.of<Provider_class>(context);
    List newItems=newobj.favorite_name;
    return Scaffold(
      appBar: AppBar(
        title: Text("Wishlist"),
      ),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
              itemCount: newItems.length,
              itemBuilder: (context,index){
                return Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Text(newItems[index],style: TextStyle(fontSize: 20),),
                        trailing: IconButton(
                            onPressed: (){
                            newobj.favorites(newItems[index]);
                            },
                            icon: newobj.icon_change(newItems[index])
                                ?Icon(Icons.favorite,color: Colors.red,)
                                : Icon(Icons.favorite_border,color: Colors.blue,)
                        ),
                      ),
                    ],
                  ),

                );
              },
          ),
        ],
      ),
    );
  }
}
