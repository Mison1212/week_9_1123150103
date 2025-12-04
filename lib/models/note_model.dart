class Note {
  final int? id;
  final String title;
  final String subtitle;
  final String content;

  Note({
    this.id,
    required this.title,
    required this.subtitle,
    required this.content,
  });

  factory Note.fromMap(Map<String, dynamic> json) => Note(
    id: json['id'],
    title: json['title'] ?? '',
    subtitle: json['subtitle'] ?? '',
    content: json['content'] ?? '',
  );
  // factory Note.fromMap(Map<String, dynamic> json) {
  // return Note(
  // content: json['content'],
  // title: json['title'],
  // id : json['id'],
  // );
  // }
  // factory Note.fromMap(Map<String, dynamic> json) => Note(
  // content: json['content'] ?? '',
  // title: json['title'] ?? '',
  // id : json['id'] ? 0,
  // );
  Map<String, dynamic> toMap() {
    return {'id': id, 'title': title, 'subtitle': subtitle, 'content': content};
  }
}
