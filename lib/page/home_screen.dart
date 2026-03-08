import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      CustomScrollView(
        slivers: [
          SliverAppBar(
           
            expandedHeight: 70,
            title: Row(
              children: [
             Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image:  AssetImage("Assets/image/blank_profile.jpg"))
              
              ),
           
             ),
Padding(
  padding: const EdgeInsets.only(left: 5),
  child: Text.rich(
    TextSpan(
      children: [
        TextSpan(
          text: 'Morning,',
          style: TextStyle(color: Colors.grey.withOpacity(0.9))
        ),
        
        TextSpan(text: 'Riduan!')
      ]
    ),
  
  ),
)
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(
              color: Colors.grey.withOpacity(0.4),
              height: 1,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
   
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, top: 10),
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white30),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Row(
              children: const [
                Text("Name", style: TextStyle(color: Colors.white)),
                Icon(Icons.arrow_drop_down, color: Colors.white),
              ],
            ),
          ),
        ),
             
                   Container(
                  margin: EdgeInsets.only(left: 10, top: 10),
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.orange.withOpacity(0.7),
            border: Border.all(color: Colors.white30),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Row(
              children: const [
                Text("Date", style: TextStyle(color: Colors.white)),
                Icon(Icons.arrow_drop_down, color: Colors.white),
              ],
            ),
          ),
        ),
                Spacer(flex: 1              ,),
           
                Container(
                    margin: EdgeInsets.only(left: 10, top: 10, right: 20),
                  height: 30,
                  width: 40,
                  decoration: BoxDecoration(
                    border: Border.all(style: BorderStyle.solid, color: Colors.white38),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(
                    child: Icon(Icons.grid_view_outlined, size: 16,)
                  ),
                ),

              ],
            ),
          )
    
        ],  


      )
      ),
    );
  }
}

//searchbar
class searchbar extends StatelessWidget {
  const searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 320,
      decoration: BoxDecoration(
        // color: Colors.blueGrey,
        border: Border.all(style: BorderStyle.solid, color: Colors.blueGrey.withOpacity(0.3)),
       borderRadius: BorderRadius.circular(50)
      ),
      child: TextField(
        decoration: InputDecoration(
          hint: Padding(
            padding: const EdgeInsets.only(top: 2, bottom: 2),
            child: Text("Search...", style: TextStyle(color: Colors.white30.withOpacity(0.4), fontSize: 20), ),
          ),
          prefixIcon: Icon(Icons.search, color: Colors.white30.withOpacity(0.4),),
          border: InputBorder.none
        ),

      ),
    );
  }
}