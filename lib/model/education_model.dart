class BulletPoint {
  final String text;
  final List<String>? subPoints; // Optional sub-points

  BulletPoint({required this.text, this.subPoints});
}

class EducationModel {
  final String school;
  final String year;
  final String description;
  final List<BulletPoint> bulletPoints;

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
      BulletPoint(
        text: 'National Police Cadet Corps',
        subPoints: ['Led robotics competition', 'Organized science fair'],
      ),
      BulletPoint(
        text: 'Member of Drama Society',
        subPoints: ['Performed in annual play', 'Handled stage lighting'],
      ),
    ],
  ),
  EducationModel(
    school: 'Temasek Junior College',
    year: '2020 - 2021',
    description:
        'This is a description of what happened. I was a student at this time.',
    bulletPoints: [
      BulletPoint(
        text: 'Guitar Ensemble (JC)',
        subPoints: [
          'Quartmaster (EXCO)',
          'Singapore Youth Festival (SYF) 2021 Certificate of Distinction'
        ],
      ),
    ],
  ),
  EducationModel(
    school: 'Ngee Ann Polytechnic',
    year: '2022 - 2025',
    description:
        'This is a description of what happened. I was a student at this time.',
    bulletPoints: [
      BulletPoint(
        text: 'Overflow Technology Special Interest Group',
        subPoints: [
          'Student Advisor (2024 - 2025)',
          'Vice-President & Head of Operations (2023 - 2024)',
          'Workgroup member (2022 - 2023)'
        ],
      ),
      BulletPoint(
        text: 'NullSec Cybersecurity Special Interest Group',
      ),
      BulletPoint(
        text: 'Girls-In-Tech Special Interest Group',
      ),
    ],
  ),
];
