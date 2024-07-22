import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
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
                child: TextField(),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
              ),
            ],
          ),
          //section to display tasks
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => Card(
                child: CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    value: false,
                    onChanged: (v) {},
                    title: Text('Task name'),
                    secondary: SizedBox(
                      width: 80,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.edit),
                          ),
                          IconButton(
                            onPressed: () {},
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
