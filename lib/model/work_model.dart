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

  /// Getter to return properly formatted job type
  String get formattedJobType {
    switch (jobType) {
      case JobType.fullTime:
        return "Full-time";
      case JobType.partTime:
        return "Part-time";
      case JobType.internship:
        return "Internship";
    }
  }
}

/// Sample data for testing and demonstration purposes
List<WorkModel> workList = [
  WorkModel(
    jobRole: 'Part-Time Coding & Robotics Instructor',
    organisationName: 'Kodecoon Academy',
    date: 'Apr 2025 - Present',
    jobType: JobType.partTime,
    description: [
      'To be updated',
      'Update 2 coming soon',
      'Update 3 to be coming soon'
    ],
  ),
  WorkModel(
    jobRole: 'Computer Vision Intern',
    organisationName: 'Tapall.ai',
    date: 'Sep 2024 - Jan 2025',
    jobType: JobType.internship,
    description: [
      'To be updated',
      'Update 2 coming soon',
      'Update 3 to be coming soon'
    ],
  ),
  WorkModel(
    jobRole: 'Part-Time Coding & Robotics Instructor',
    organisationName: 'NK Robotics',
    date: 'Dec 2021 - August 2024',
    jobType: JobType.partTime,
    description: [
      'To be updated',
      'Update 2 coming soon',
      'Update 3 to be coming soon'
    ],
  ),
];
