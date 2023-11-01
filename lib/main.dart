import 'package:flutter/material.dart';
import 'package:navigator_ferrum_activity/pages/details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ListView'
          ),
      ),
      body: _buildListView(context),
    );
  }

ListView _buildListView(BuildContext context){
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (_, index) {
      return ListTile(
        title: Text('The list item #$index'),
        subtitle: const Text('The subtittle'),
        leading: const Icon(Icons.thumb_up),
        trailing: const Icon(Icons.arrow_forward),
        onTap: (){
          Navigator.push(
            context ,
            MaterialPageRoute(builder: (context) => DetailsPage(index))
          );
        },
      );
    }, );
}

}
