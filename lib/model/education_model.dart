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
        'Cambridge - Singapore GCE Ordinary Level (O-Level) Examination subjects: English, Mathematics, Additional Mathematics, Physics, Chemistry, Combined Humanities (Geography, Social Studies), Chinese Language, Higher Chinese Language',
    bulletPoints: [
      BulletPoint(
        text: 'National Police Cadet Corps (NPCC)',
        subPoints: [
          'Squadmasters Overall In-Charge (EXCO)',
          '12th place in Inter-Unit Campcraft Competition 2017'
        ],
      ),
      BulletPoint(
        text: 'FALCONS Leadership Programme',
        subPoints: [
          'Organised CCA Bazaar for the Secondary 1 cohort',
          'Learnt and practised leadership skills on hiking trip to Hong Kong'
        ],
      ),
    ],
  ),
  EducationModel(
    school: 'Temasek Junior College',
    year: '2020 - 2021',
    description:
        'Cambridge - Singapore GCE Advanced Level (A-Level) Examination subjects: General Paper (H1), Project Workd (H1), Economics (H1), Mathematics (H2), Physics (H2), Chemistry (H2)',
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
        'Diploma in Cybersecurity & Digital Forensics (CSF), Diploma Plus/Certificate in Advanced Computing Mathematics (CACM)',
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
