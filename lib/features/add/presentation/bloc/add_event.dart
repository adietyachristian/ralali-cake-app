abstract class AddEvent {
  const AddEvent();
}

class AddRequest extends AddEvent {
  final String title;
  final String description;
  final double rating;
  final String image;

  const AddRequest({
    required this.title,
    required this.description,
    required this.rating,
    required this.image,
  });
}
