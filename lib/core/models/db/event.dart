import 'package:cloud_firestore/cloud_firestore.dart';

class Event {
  Event(
    this.id,
    this.cover,
    this.dateEnd,
    this.dateStart,
    this.description,
    this.title,
    this.venue,
  );

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
  Map<String, dynamic> toJson() => _$EventToJson(this);

  final String id;
  final String cover;
  final Timestamp dateEnd;
  final Timestamp dateStart;
  final String description;
  final String title;
  final String venue;
}

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      json['id'] as String,
      json['cover'] as String,
      Timestamp.fromMillisecondsSinceEpoch(
        int.parse(json['dateEnd'] as String),
      ),
      Timestamp.fromMillisecondsSinceEpoch(
        int.parse(json['dateStart'] as String),
      ),
      json['description'] as String,
      json['title'] as String,
      json['venue'] as String,
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'id': instance.id,
      'cover': instance.cover,
      'dateEnd': instance.dateEnd.millisecondsSinceEpoch.toString(),
      'dateStart': instance.dateStart.millisecondsSinceEpoch.toString(),
      'description': instance.description,
      'title': instance.title,
      'venue': instance.venue,
    };
