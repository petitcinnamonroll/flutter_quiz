class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "Enter age range:",
    "options": ['35-49', '50-69', '70-79', '80+'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "Enter PSA:",
    "options": ['0-2', '3-5', '5-6', '6+'],
    "answer_index": 2,
  },
];
