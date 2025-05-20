import 'package:app/models/person_model.dart';
import 'package:flutter/material.dart';

class PersonCard extends StatelessWidget {
  const PersonCard({super.key,required this.person});
final Person person;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(color: Colors.amber),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            Text('First name: ${person.firstName}'),
            Text('Last name: ${person.lastName}'),
            Text('Email: ${person.email}'),
          ],
        ),
      ),
    );
  }
}
