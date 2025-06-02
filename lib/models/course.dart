class Course {
  final String id;
  final String title;
  final String? description;
  final String instructor;
  final String instructorTitle;
  final double price;
  final double rating;
  final int participants;
  final String imageUrl;

  Course({
    required this.id,
    required this.title,
    this.description,
    required this.instructor,
    required this.instructorTitle,
    required this.price,
    required this.rating,
    required this.participants,
    required this.imageUrl,
  });
}