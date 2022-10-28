import 'package:flutter/material.dart';
import 'package: myGetxArchitecture/app/core/values/app_values.dart';
import 'package: myGetxArchitecture/app/core/widget/buildText.dart';

class CustomDropDown extends StatelessWidget {
  final String? value;
  final List<String> list;
  final void Function(String?)? onChanged;
  final String text;
  const CustomDropDown({
    Key? key,
    required this.value,
    required this.list,
    required this.onChanged,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SizedBox(
          height: AppValues.height_10,
        ),
        BuildText(text: text, color: Colors.grey),
        SizedBox(
          width: AppValues.width_400,
          height: AppValues.height_50,
          child: DropdownButton<String>(
            value: value,
            isExpanded: true,
            iconSize: AppValues.iconSize_25,
            icon: const Icon(Icons.arrow_drop_down),
            iconDisabledColor: Colors.blue,
            iconEnabledColor: Colors.grey,
            dropdownColor: Colors.white,
            elevation: AppValues.elevation_16,
            style: TextStyle(color: Colors.grey[700]),
            underline: Container(
              height: 1,
              color: Colors.grey[700],
            ),
            onChanged: onChanged,
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
