class todo{
  String? id;
  String? text;
  bool done;

  todo({
    required this.id,
    required this.text,
    this.done=false
});
  static List<todo> todolist(){
    return [
      todo(id: '1', text: 'Study',done: true),
      todo(id: '2', text: 'play',done: true),
      todo(id: '3', text: 'movie'),
      todo(id: '4', text: 'novel'),

    ];
  }
}
