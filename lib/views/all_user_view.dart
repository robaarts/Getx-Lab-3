import 'package:app/controllers/person_controllers.dart';
import 'package:app/custom/person_card.dart';
import 'package:app/models/person_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AllUserView extends StatelessWidget {
  const AllUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GetBuilder(
          init: PersonControllers(),
          builder: (controller) {
            return GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children:
                  controller.persons
                      .map((person) => PersonCard(person: person))
                      .toList(),
            );
          },
        ),
      ),
    );
  }
}
