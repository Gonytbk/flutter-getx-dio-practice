import 'package:flutter/material.dart';
import 'package:flutter_getx_dio_practice/json_data_iOne/controllers/models/product_res_model.dart';
import 'package:flutter_getx_dio_practice/test_getx_dio01/controller/controller.dart';
import 'package:flutter_getx_dio_practice/test_getx_dio01/models/model.dart';
import 'package:get/get.dart';

class EmployeeScreen extends StatelessWidget {
  final controller = Get.put(EmployeeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Account Details'),
        centerTitle: true,
        ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        final employee = controller.employee.value;
        if (employee == null) {
          return Center(child: Text('No data available'));
        }

        return Center(
          child: Container(
            width:400,
            height: 500,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:  Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.person, size: 40,),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(employee.username, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                          Text(employee.position)
                        ],
                      )

                    ],
                  ),
                ),

                SizedBox(height: 30,),
 
                _employee_detail(employee)


              ],
            ),
          ),
        );
      }),
    );
  }

  Container _employee_detail(Employee employee) {
    return Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  spacing: 15,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Employee ID'),
                        Text(employee.id.toString(), style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Date Joinded'),
                        Text(employee.dateJoined.toString(), style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Gender'),
                        Text(employee.genderLabel.toString(), style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Department '),
                        Text(employee.department.toString(), style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Position'),
                        Text(employee.position.toString(), style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Email'),
                        Text(employee.email.toString(), style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Phone Number'),
                        Text(employee.phoneNumber.toString(), style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                  ],
                ),
              );
  }
}


// Data
//         "employee_id": "9518",
//         "username": "Em Veasna",
//         "gender": "1",
//         "gender_label": "Male",
//         "profile_photo": "user.png",
//         "email": "emveasna1707@gmail.com",
//         "phone_number": "077515163",
//         "position": "App Developer",
//         "department_id": "4",
//         "department": "Ecommerce",
//         "hod_email": "chuon_raksa@ione2u.com",
//         "service_grade": "EX1",
//         "annual_leave": 15.0,
//         "date_joined": "24 Apr 2023",
//         "is_active": "1",
//         "is_active_label": "Active",
//         "location_id": 1,
//         "latitude": 11.544542641896394,
//         "longitude": 104.9254008819695,
//         "app_token": "bd1afa0ac33d681b3cecde5b4e774e2f"
