class ToDo{
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList(){
    return [
      ToDo(id: '01', todoText: "Morning Walk",),
      ToDo(id: '02',todoText: 'Buy Groceries',),
      ToDo(id: '03',todoText: 'Check Email'),
      ToDo(id: '04',todoText: 'Team meeting'),
      ToDo(id: '05',todoText: 'Worck on Mobile App 1 hour',),
      ];
  }
}