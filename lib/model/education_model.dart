class EducationModel {
  final String school;
  final String year;
  final String description;
  final List<String> bulletPoints;

  EducationModel({
    required this.school,
    required this.year,
    required this.description,
    required this.bulletPoints,
  });
}

List<EducationModel> educationList = [
  EducationModel(
      school: 'NAN CHIAU HIGH SCHOOL',
      year: '2016 - 2019',
      description:
          'This is a description of what happened. I was a student at this time.',
      bulletPoints: [
        'Description of what happened.',
        'I was a student.',
      ]),
  EducationModel(
      school: 'Temasek Junior College',
      year: '2020 - 2021',
      description:
          'This is a description of what happened. I was a student at this time.',
      bulletPoints: [
        'Description of what happened.',
        'I was a student.',
      ]),
  EducationModel(
      school: 'Ngee Ann Polytechnic',
      year: '2022 - 2025',
      description:
          'This is a description of what happened. I was a student at this time.',
      bulletPoints: [
        'Description of what happened.',
        'I was a student.',
      ]),
];
