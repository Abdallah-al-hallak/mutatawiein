// To parse this JSON data, do
//
//     final task = taskFromJson(jsonString);

import 'dart:convert';

Task taskFromJson(String str) => Task.fromJson(json.decode(str));

String taskToJson(Task data) => json.encode(data.toJson());

class Task {
  Task({
    this.id,
    this.taskName,
    this.volunteerNumberRequired,
    this.volunteerNumberCurrent,
    this.eventTaskVolunteers,
  });

  final int? id;
  final String? taskName;
  final int? volunteerNumberRequired;
  final int? volunteerNumberCurrent;
  final List<EventTaskVolunteer>? eventTaskVolunteers;

  factory Task.fromJson(Map<String, dynamic> json) => Task(
        id: json["id"],
        taskName: json["taskName"],
        volunteerNumberRequired: json["volunteerNumberRequired"],
        volunteerNumberCurrent: json["volunteerNumberCurrent"],
        eventTaskVolunteers: List<EventTaskVolunteer>.from(
            json["eventTaskVolunteers"]
                .map((x) => EventTaskVolunteer.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "taskName": taskName,
        "volunteerNumberRequired": volunteerNumberRequired,
        "volunteerNumberCurrent": volunteerNumberCurrent,
        "eventTaskVolunteers":
            List<dynamic>.from(eventTaskVolunteers!.map((x) => x.toJson())),
      };
}

class EventTaskVolunteer {
  EventTaskVolunteer({
    this.id,
  });

  final int? id;

  factory EventTaskVolunteer.fromJson(Map<String, dynamic> json) =>
      EventTaskVolunteer(
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
      };
}
