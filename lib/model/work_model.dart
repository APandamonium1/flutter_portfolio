/// Enum for different job types
enum JobType { fullTime, partTime, internship }

class WorkModel {
  // Job role/title of the position
  final String jobRole;
  // Name of the organisation/company
  final String organisationName;
  // Date of the job duration (e.g., Jan 2022 - Present)
  final String date;
  // List of bullet points for responsibilities and achievements
  final List<String> description;
  // Type of job (Full-time, Part-time, Internship)
  final JobType jobType;

  /// Constructor for the WorkModel
  WorkModel({
    required this.jobRole,
    required this.organisationName,
    required this.date,
    required this.description,
    required this.jobType,
  });
}

/// Sample data for testing and demonstration purposes
List<WorkModel> workList = [
  WorkModel(
    jobRole: 'Computer Vision Intern',
    organisationName: 'Tapall.ai',
    date: 'Jan 2022 - Present',
    jobType: JobType.internship,
    description: [
      'Developed scalable web applications using Flutter and Firebase.',
      'Maintained cloud infrastructure and ensured high availability.',
      'Collaborated with cross-functional teams for product design and development.'
    ],
  ),
  WorkModel(
    jobRole: 'Part-Time Coding & Robotics Instructor',
    organisationName: 'NK Robotics',
    date: 'Jun 2021 - Dec 2021',
    jobType: JobType.partTime,
    description: [
      'Assisted in iOS app development using Swift.',
      'Conducted code reviews and improved application performance.',
      'Worked closely with the design team to enhance user experience.'
    ],
  ),
];
