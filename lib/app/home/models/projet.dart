import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class projet extends Equatable {
  const projet({required this.id, required this.name, required this.ratePerHour});
  final String id;
  final String name;
  final int ratePerHour;

  @override
  List<Object> get props => [id, name, ratePerHour];

  @override
  bool get stringify => true;

  factory projet.fromMap(Map<String, dynamic>? data, String documentId) {
    if (data == null) {
      throw StateError('missing data for jobId: $documentId');
    }
    final name = data['name'] as String?;
    if (name == null) {
      throw StateError('missing name for jobId: $documentId');
    }
    final ratePerHour = data['ratePerHour'] as int;
    return projet(id: documentId, name: name, ratePerHour: ratePerHour);
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'ratePerHour': ratePerHour,
    };
  }
}
