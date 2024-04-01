import 'package:flutter/material.dart';
import 'package:task_management/utils/button.dart';

class Dialogbox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  Dialogbox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                  hintText: 'Add New Task', border: OutlineInputBorder()),
            ),
            // Buttons save and cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button
                Botton(
                  text: 'Save',
                  onPressed: onSave,
                ),
                // cancel button

                const SizedBox(width: 8),

                Botton(
                  text: 'Cancel',
                  onPressed: onCancel,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
