
import 'package:flutter/material.dart';

class AuthToggle extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onChanged;

  const AuthToggle({
    super.key,
    required this.selectedIndex,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: const Color(0xffEAE7E7),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Expanded(
            child: buildButton('Sign In', Icons.login, 0),
          ),
          Expanded(
            child: buildButton(
              'Register',
              Icons.person_add_alt_1,
              1,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButton(String title, IconData icon, int index) {
    bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () => onChanged(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(11),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 18,
              color: isSelected
                  ? const Color(0xff008A9A)
                  : const Color(0xff604D46),
            ),
            const SizedBox(width: 6),
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: isSelected
                    ? const Color(0xff008A9A)
                    : const Color(0xff604D46),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
