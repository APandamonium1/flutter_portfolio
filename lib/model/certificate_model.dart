class CertificateModel {
  final String name;
  final String organisation;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organisation,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'AWS Certified Cloud Practitional',
    organisation: 'Amazon  Web Services (AWS)',
    date: 'JUL 2023',
    skills: 'Cloud Computing, Cloud Infrastructure, CLoud Security',
    credential:
        'https://www.credly.com/badges/19b52569-4014-49bb-a06a-378e1b8bd3ee/linked_in_profile',
  ),
];
