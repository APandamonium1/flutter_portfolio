import 'package:flutter/material.dart';
import 'package:flutter_portfolio/model/work_model.dart';

/// A widget to display details of a work experience.
class WorkDetails extends StatelessWidget {
  // The work experience model instance
  final WorkModel work;

  // Constructor to receive the work experience data
  const WorkDetails({super.key, required this.work});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 8,
            spreadRadius: 2,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Job Role
          Text(
            work.jobRole,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          /// Organization Name & Date
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              '${work.organisationName} • ${work.date}',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
          ),

          /// Job Type
          Padding(
            padding: const EdgeInsets.only(top: 4, bottom: 8),
            child: Chip(
              label: Text(
                _capitalize(work.jobType.name),
                style: const TextStyle(color: Colors.white),
              ),
              backgroundColor: _getJobTypeColor(work.jobType),
            ),
          ),

          /// Description (Bullet Points)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: work.description.map((desc) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.circle, size: 6, color: Colors.black),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        desc,
                        style: const TextStyle(fontSize: 14, height: 1.5),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  /// Function to capitalize the first letter of a string
  String _capitalize(String text) {
    return text.isNotEmpty ? text[0].toUpperCase() + text.substring(1) : text;
  }

  /// Function to get color based on job type
  Color _getJobTypeColor(JobType type) {
    switch (type) {
      case JobType.fullTime:
        return Colors.green;
      case JobType.partTime:
        return Colors.orange;
      case JobType.internship:
        return Colors.blue;
    }
  }
}
