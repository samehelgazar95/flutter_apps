import 'package:flutter/material.dart';

class TodoDataType {
  final String title;
  final String desc;
  const  TodoDataType(this.title, this.desc);
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Todos(
        todosList: List<TodoDataType>.generate(
          20,
          (i) => TodoDataType(
            "Todo ${i+1}",
            "A desc of what need to be done for Todo ${i+1}",
          )
        )
        ),
    );
  }
}

class Todos extends StatelessWidget {
  final List<TodoDataType> todosList;
  const Todos({super.key, required this.todosList});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Todos"), backgroundColor: Colors.blue),
        backgroundColor: Colors.blueGrey,
        
        body: ListView.separated(
          itemCount: todosList.length,
          separatorBuilder: (context, index) => Divider(),
          
          itemBuilder: (context, index)  {
            return ListTile(
              title: Text(todosList[index].title),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Todo(),
                    settings: RouteSettings(arguments: todosList[index],)
                    )
                );
              },
            );
          },
        )
      );
  }
}

class Todo extends StatelessWidget {
  const Todo({super.key});
  
  @override
  Widget build(BuildContext context) {
    final todo = ModalRoute.of(context)?.settings.arguments as TodoDataType;
    return Scaffold(
        backgroundColor: Colors.lightGreenAccent,
        appBar: AppBar(
          title: Text(todo.title)
        ),
      
        body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Text(todo.desc),
            IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_outlined)
            )
          ]
        )
      )
    );
  }
}
