class Note{
  String title;
  String text; 

  Note(this.title, this.text);

  Note.fromJson(Map<String, dynamic> json) {
    title = json['nombre'];
    text = json['zona'];
  }
}

