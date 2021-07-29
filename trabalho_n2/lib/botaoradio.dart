import 'package:flutter/material.dart';

class RadioOption<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final String label;
  final String text;
  final ValueChanged<T?> onChanged;

  const RadioOption({
    required this.value,
    required this.groupValue,
    required this.label,
    required this.text,
    required this.onChanged,
  });

  Widget _buildLabel() {
    final bool isSelected = value == groupValue;

    return Container(
      width: 30,
      height: 30,
      decoration: ShapeDecoration(
        shape: CircleBorder(
          side: BorderSide(
            color: Colors.black,
          ),
        ),
        color: isSelected ? Colors.teal : Colors.white,
      ),
      child: Center(
        child: Text(
          value.toString(),
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.teal,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget _buildText() {
    return Text(
      text,
      style: const TextStyle(color: Colors.black, fontSize: 16),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      child: InkWell(
        onTap: () => onChanged(value),
        splashColor: Colors.cyan.withOpacity(0.5),
        child: Padding(
          padding: EdgeInsets.all(3),
          child: Row(
            children: [
              _buildLabel(),
              const SizedBox(width: 5,),
              _buildText(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomRadioButtom extends StatefulWidget {
  @override
  State createState() => _CustomRadioButtomState();
}

class _CustomRadioButtomState extends State<CustomRadioButtom> {
  String? _groupValue;

  ValueChanged<String?> _valueChangedHandler() {
    return (value) => setState(() => _groupValue = value!);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RadioOption(
            value: "1",
            groupValue: _groupValue,
            label: "",
            text: "Masculino",
            onChanged: _valueChangedHandler()
        ),
        RadioOption(
            value: "2",
            groupValue: _groupValue,
            label: "",
            text: "Feminino",
            onChanged: _valueChangedHandler()
        ),
      ],
    );
  }

}