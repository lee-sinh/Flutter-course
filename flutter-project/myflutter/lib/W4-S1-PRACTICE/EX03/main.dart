import 'package:flutter/material.dart';

enum ButtonType {
  primary(
    color: Colors.blue,
    icon: Icons.check,
    label: 'Submit',
  ),
  secondary(
    color: Colors.green,
    icon: Icons.timelapse,
    label: 'Time',
  ),
  disabled(
    color: Colors.grey,
    icon: Icons.account_box,
    label: 'Account',
  );

  final Color color;
  final IconData icon;
  final String label;

  const ButtonType({
    required this.color,
    required this.icon,
    required this.label,
  });
 
 @override
  String toString() => "$color, icon: $icon, lable: $label";

}
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Custom Button'),
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomButton(
              label: ButtonType.primary.label,
              icon: ButtonType.primary.icon,
              iconPosition: 'left',
              color: ButtonType.primary.color,
              // type: ButtonType.primary.color,
            ),
            SizedBox(height: 10,),
            CustomButton(
              label: ButtonType.secondary.label,
              icon: ButtonType.secondary.icon,
              iconPosition: 'left',
              color: ButtonType.secondary.color,
              // type: 'primary',
            ),
            SizedBox(height: 10,),
            CustomButton(
              label: ButtonType.disabled.label,
              icon: ButtonType.disabled.icon,
              iconPosition: 'left',
              color: ButtonType.disabled.color,
              // type: 'primary',
            )
          ],
        )
      ),
    )
  ));
}

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final String? iconPosition;
  final Color? color;
  // final Color? type;

  const CustomButton({
    super.key,
    required this.label,
    required this.icon,
    this.iconPosition = 'left',
    this.color = Colors.blue,
    // this.type = ButtonType.primary.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: color ?? Colors.blue,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              // child: Icon(Icons.check),
              child: Icon(icon),
            ),
            Text(
              label,
            )
          ],
        )
      )
    );
  }
}