abstract class DetailEvent {
  const DetailEvent();
}

class DetailRequest extends DetailEvent {
  final String id;

  const DetailRequest({required this.id});
}

class DeleteRequest extends DetailEvent {
  final String id;

  const DeleteRequest({required this.id});
}
