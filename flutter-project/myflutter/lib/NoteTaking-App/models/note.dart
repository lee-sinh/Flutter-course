class Note {
  int id;
  String title;
  String content;
  DateTime modifiedTime;

  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.modifiedTime,
  });
}


List<Note> sampleNotes = [
  Note(
    id: 0,
    title: 'Design Thinking',
    content:
        'Learn how to design ',
    modifiedTime: DateTime(2024,12,21,34,5),
  ),
  Note(
    id: 1,
    title: 'Project Management',
    content:
        'Assignment:\n 1. Define scope of the project\n 2. Set time line',
    modifiedTime: DateTime(2024,12,11,34,5),
  ),
  Note(
    id: 2,
    title: 'Research Methedology',
    content:
        'Task to do:\n 1. Find a liturature view and read\n 2. Summary it\n 3. Put in the article',
    modifiedTime: DateTime(2024,12,22,19,5),
  ),
    Note(
    id: 3,
    title: 'Cloud Computing',
    content:
        'set up CI/CD pipeline',
    modifiedTime: DateTime(2024,12,20,19,5),
  ),
  Note(
    id: 4,
    title: 'Backend',
    content:
        'learn NestJs',
    modifiedTime: DateTime(2024,12,18,19,5),
  ),
  Note(
    id: 5,
    title: 'Frontend',
    content:
        'Research about React',
    modifiedTime: DateTime(2024,12,15,19,5),
  ),
    Note(
    id: 6,
    title: 'Soft Skill',
    content:
        'Best practice',
    modifiedTime: DateTime(2024,12,10,19,5),
  ),
  
];