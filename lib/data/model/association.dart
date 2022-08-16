// To parse this JSON data, do
//
//     final association = associationFromJson(jsonString);

import 'dart:convert';

List<Association> associationFromJson(String str) => List<Association>.from(
    json.decode(str).map((x) => Association.fromJson(x)));

String associationToJson(List<Association> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Association {
  Association({
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
  final Message? message;
  final String? vision;
  final String? assValues;
  final String? goals;
  final String? phone;
  final String? mobile;
  final String? email;
  final String? bank;
  final dynamic address;
  final List<dynamic>? volunteerAssociations;
  final List<Employee>? employees;
  final List<Event>? events;
  final List<Need>? needs;

  factory Association.fromJson(Map<String, dynamic> json) => Association(
        id: json["id"],
        name: json["name"],
        vision: json["vision"] == null ? null : json["vision"],
        assValues: json["ass_values"] == null ? null : json["ass_values"],
        goals: json["goals"] == null ? null : json["goals"],
        phone: json["phone"] == null ? null : json["phone"],
        mobile: json["mobile"] == null ? null : json["mobile"],
        email: json["email"] == null ? null : json["email"],
        bank: json["bank"] == null ? null : json["bank"],
        address: json["address"],
        volunteerAssociations:
            List<dynamic>.from(json["volunteer_associations"].map((x) => x)),
        employees: List<Employee>.from(
            json["employees"].map((x) => Employee.fromJson(x))),
        events: List<Event>.from(json["events"].map((x) => Event.fromJson(x))),
        needs: List<Need>.from(json["needs"].map((x) => Need.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "vision": vision == null ? null : vision,
        "ass_values": assValues == null ? null : assValues,
        "goals": goals == null ? null : goals,
        "phone": phone == null ? null : phone,
        "mobile": mobile == null ? null : mobile,
        "email": email == null ? null : email,
        "bank": bank == null ? null : bank,
        "address": address,
        "volunteer_associations":
            List<dynamic>.from(volunteerAssociations!.map((x) => x)),
        "employees": List<dynamic>.from(employees!.map((x) => x.toJson())),
        "events": List<dynamic>.from(events!.map((x) => x.toJson())),
        "needs": List<dynamic>.from(needs!.map((x) => x.toJson())),
      };
}

class Employee {
  Employee({
    this.id,
    this.price,
    this.user,
  });

  final int? id;
  final int? price;
  final User? user;

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
        id: json["id"],
        price: json["price"],
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "price": price,
        "user": user?.toJson(),
      };
}

class User {
  User({
    this.id,
    this.fullName,
    this.nationality,
    this.birthPlace,
    this.registrationPlace,
    this.birthDate,
    this.gender,
    this.phone,
    this.nationalNumber,
    this.type,
    this.address,
  });

  final int? id;
  final String? fullName;
  final dynamic nationality;
  final dynamic birthPlace;
  final dynamic registrationPlace;
  final dynamic birthDate;
  final String? gender;
  final String? phone;
  final String? nationalNumber;
  final String? type;
  final dynamic address;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        fullName: json["fullName"],
        nationality: json["nationality"],
        birthPlace: json["birthPlace"],
        registrationPlace: json["registrationPlace"],
        birthDate: json["birthDate"],
        gender: json["gender"],
        phone: json["phone"],
        nationalNumber: json["nationalNumber"],
        type: json["type"],
        address: json["address"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fullName": fullName,
        "nationality": nationality,
        "birthPlace": birthPlace,
        "registrationPlace": registrationPlace,
        "birthDate": birthDate,
        "gender": gender,
        "phone": phone,
        "nationalNumber": nationalNumber,
        "type": type,
        "address": address,
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

enum Message { MAKER2, SOME_MESSAGE }

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
