import 'package:changapp/shared/custom_container_widget.dart';
import 'package:flutter/material.dart';

class CustomDropDownButton extends StatefulWidget {
  @override
  _CustomDropDownButtonState createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  String dropdownValue = 'Córdoba';
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: CustomContainer(
        width: 250,
        height: 40,
        child: InputDecorator(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Color(0xFFffae50)),
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              icon: const Icon(Icons.arrow_drop_down),
              borderRadius: BorderRadius.circular(20),
              value: dropdownValue,
              onChanged: (String? newValue) {
                if (newValue != null) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                }
              },
              onTap: () {
                print("hola mundo");
              },
              items: <String>[
                'Buenos Aires',
                'Catamarca',
                'Chaco',
                'Chubut',
                'Córdoba',
                'Corrientes',
                'Entre Ríos',
                'Formosa',
                'Jujuy',
                'La Pampa',
                'La Rioja',
                'Mendoza',
                'Misiones',
                'Neuquén',
                'Río Negro',
                'Salta',
                'San Juan',
                'San Luis',
                'Santa Cruz',
                'Santa Fe',
                'Santiago del Estero',
                'Tierra del Fuego',
                'Tucumán'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Row(
                    children: [
                      Text(
                        value,
                        style: TextStyle(
                            color: Colors.grey[600]), // Color de la letra
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
