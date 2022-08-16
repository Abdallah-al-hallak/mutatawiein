// To parse this JSON data, do
//
//     final addToAss = addToAssFromJson(jsonString);

import 'dart:convert';

AddToAss addToAssFromJson(String str) => AddToAss.fromJson(json.decode(str));

String addToAssToJson(AddToAss data) => json.encode(data.toJson());

class AddToAss {
  AddToAss({
    this.id,
    this.name,
    this.message,
    this.vision,
    this.assValues,
    this.goals,
    this.phone,
    this.mobile,
    this.email,
    this.bank,
    this.address,
    this.volunteerAssociations,
    this.employees,
    this.events,
    this.needs,
  });

  final int? id;
  final String? name;
  final String? message;
  final dynamic vision;
  final dynamic assValues;
  final dynamic goals;
  final dynamic phone;
  final dynamic mobile;
  final dynamic email;
  final dynamic bank;
  final dynamic address;
  final List<VolunteerAssociation>? volunteerAssociations;
  final List<dynamic>? employees;
  final List<Event>? events;
  final List<Need>? needs;

  factory AddToAss.fromJson(Map<String, dynamic> json) => AddToAss(
        id: json["id"],
        name: json["name"],
        message: json["message"],
        vision: json["vision"],
        assValues: json["ass_values"],
        goals: json["goals"],
        phone: json["phone"],
        mobile: json["mobile"],
        email: json["email"],
        bank: json["bank"],
        address: json["address"],
        volunteerAssociations: List<VolunteerAssociation>.from(
            json["volunteer_associations"]
                .map((x) => VolunteerAssociation.fromJson(x))),
        employees: List<dynamic>.from(json["employees"].map((x) => x)),
        events: List<Event>.from(json["events"].map((x) => Event.fromJson(x))),
        needs: List<Need>.from(json["needs"].map((x) => Need.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "message": message,
        "vision": vision,
        "ass_values": assValues,
        "goals": goals,
        "phone": phone,
        "mobile": mobile,
        "email": email,
        "bank": bank,
        "address": address,
        "volunteer_associations":
            List<dynamic>.from(volunteerAssociations!.map((x) => x.toJson())),
        "employees": List<dynamic>.from(employees!.map((x) => x)),
        "events": List<dynamic>.from(events!.map((x) => x.toJson())),
        "needs": List<dynamic>.from(needs!.map((x) => x.toJson())),
      };
}

class Event {
  Event({
    this.id,
    this.name,
    this.description,
    this.startingDate,
    this.availableForRegister,
    this.eventTasks,
    this.beneficiaryEvents,
  });

  final int? id;
  final String? name;
  final String? description;
  final String? startingDate;
  final bool? availableForRegister;
  final List<EventTask>? eventTasks;
  final List<BeneficiaryEvent>? beneficiaryEvents;

  factory Event.fromJson(Map<String, dynamic> json) => Event(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        startingDate: json["startingDate"],
        availableForRegister: json["availableForRegister"],
        eventTasks: List<EventTask>.from(
            json["event_tasks"].map((x) => EventTask.fromJson(x))),
        beneficiaryEvents: List<BeneficiaryEvent>.from(
            json["beneficiary_events"]
                .map((x) => BeneficiaryEvent.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "startingDate": startingDate,
        "availableForRegister": availableForRegister,
        "event_tasks": List<dynamic>.from(eventTasks!.map((x) => x.toJson())),
        "beneficiary_events":
            List<dynamic>.from(beneficiaryEvents!.map((x) => x.toJson())),
      };
}

class BeneficiaryEvent {
  BeneficiaryEvent({
    this.id,
  });

  final int? id;

  factory BeneficiaryEvent.fromJson(Map<String, dynamic> json) =>
      BeneficiaryEvent(
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
      };
}

class EventTask {
  EventTask({
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
  final List<BeneficiaryEvent>? eventTaskVolunteers;

  factory EventTask.fromJson(Map<String, dynamic> json) => EventTask(
        id: json["id"],
        taskName: json["taskName"],
        volunteerNumberRequired: json["volunteerNumberRequired"],
        volunteerNumberCurrent: json["volunteerNumberCurrent"],
        eventTaskVolunteers: List<BeneficiaryEvent>.from(
            json["eventTaskVolunteers"]
                .map((x) => BeneficiaryEvent.fromJson(x))),
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

class Need {
  Need({
    this.id,
    this.description,
  });

  final int? id;
  final String? description;

  factory Need.fromJson(Map<String, dynamic> json) => Need(
        id: json["id"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "description": description,
      };
}

class VolunteerAssociation {
  VolunteerAssociation({
    this.id,
    this.status,
  });

  final int? id;
  final String? status;

  factory VolunteerAssociation.fromJson(Map<String, dynamic> json) =>
      VolunteerAssociation(
        id: json["id"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "status": status,
      };
}
