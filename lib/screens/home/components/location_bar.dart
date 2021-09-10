import 'package:flutter/material.dart';
import '../../../constant.dart';



class LocationBar extends StatelessWidget {
  const LocationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.location_pin, color: kSecondaryColor, size: 14),
        SizedBox(width: 10.0),
        Text('Location : ',
            style: TextStyle(fontSize: 14, color: kSecondaryColor)),
        Text('Morayur',
            style: TextStyle(
                fontSize: 14,
                color: kSecondaryColor,
                fontWeight: FontWeight.bold)),
        SizedBox(width: 10.0),
        Icon(Icons.keyboard_arrow_down, color: kSecondaryColor, size: 24),
      ],
    );
  }
}
