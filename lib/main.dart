import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      
    );
  }
}

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final nameController = TextEditingController();
  List <String> names = ["alaa"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MyApp")),

      body: 
      Center(
        child: Column(
          children: [
            Center(
              child: Row(children: [
            Expanded(
              child: TextFormField( controller: nameController
                ,decoration: InputDecoration(
                labelText: "Enter Your na me"
              ),),
            ),
            ElevatedButton(onPressed: (){
              names.add(nameController.text);
              setState(() {
                
              });
            },
             child: Text("Add new name"))
      
      
              ],),
              
            ),
          
          ListView.builder(physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
            itemBuilder: (context, index){
return ListTile(
  title: Text(names[index]),
);
          }, 
          itemCount:names.length ,)
          ],

        ),
      ),
      
    );
  }
}