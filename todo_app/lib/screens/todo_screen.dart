import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List todos = [];
  int selId = -1; //selected id incase of edit mode
  TextEditingController txtTitle = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
      ),
      body: Column(
        children: [
          //section to add new task
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: txtTitle,
                  decoration: InputDecoration(
                    hintText: 'Enter title of task',
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  //logic to add/update items in todos
                  if (txtTitle.text.isNotEmpty) {
                    if (selId == -1) {
                      todos.add({
                        "id": DateTime.now().microsecondsSinceEpoch,
                        'title': txtTitle.text,
                        "isCompleted": false
                      });
                    } else {
                      int i =
                          todos.indexWhere((element) => element['id'] == selId);
                      if (i > -1) {
                        var todo = todos[i];
                        todos.removeAt(i);
                        todos.insert(i, {
                          "id": todo['id'],
                          'title': txtTitle.text,
                          "isCompleted": todo['isCompleted']
                        });
                      }
                    }

                    txtTitle.clear();
                    setState(() {});
                  }
                },
                icon: Icon(Icons.add),
              ),
            ],
          ),
          //section to display tasks
          Expanded(
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) => Card(
                child: CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    value: todos[index]['isCompleted'],
                    onChanged: (v) {
                      todos[index]['isCompleted'] = v;
                      setState(() {});
                    },
                    title: Text(
                      '${todos[index]['title']} (${todos[index]['id']})',
                      style: TextStyle(
                          decoration: todos[index]['isCompleted']
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                          color: todos[index]['isCompleted']
                              ? Colors.red
                              : Colors.black),
                    ),
                    secondary: SizedBox(
                      width: 80,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              //logic to edit the data
                              txtTitle.text = todos[index]['title'];
                              selId = todos[index]['id'];
                              setState(() {});
                            },
                            icon: Icon(Icons.edit),
                          ),
                          IconButton(
                            onPressed: () {
                              //logic to delete the item from list
                              todos.removeWhere((element) =>
                                  element['id'] == todos[index]['id']);
                              setState(() {});
                            },
                            icon: Icon(Icons.delete),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
