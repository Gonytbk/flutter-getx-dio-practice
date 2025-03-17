class Employee {
  final int id;
  final String employeeId;
  final String username;
  final String genderLabel;
  final String profilePhoto;
  final String email;
  final String phoneNumber;
  final String position;
  final String department;
  final double annualLeave;
  final String dateJoined;
  final bool isActive;

  Employee({
    required this.id,
    required this.employeeId,
    required this.username,
    required this.genderLabel,
    required this.profilePhoto,
    required this.email,
    required this.phoneNumber,
    required this.position,
    required this.department,
    required this.annualLeave,
    required this.dateJoined,
    required this.isActive,
  });

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      id: json['id'],
      employeeId: json['employee_id'],
      username: json['username'],
      genderLabel: json['gender_label'],
      profilePhoto: json['profile_photo'],
      email: json['email'],
      phoneNumber: json['phone_number'],
      position: json['position'],
      department: json['department'],
      annualLeave: json['annual_leave'].toDouble(),
      dateJoined: json['date_joined'],
      isActive: json['is_active'] == "1",
    );
  }
}
