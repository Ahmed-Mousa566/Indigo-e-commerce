import 'package:e_commerce/core/utils/constant.dart';
import 'package:e_commerce/core/utils/widgets/custm_text.dart';
import 'package:flutter/material.dart';

class RememberMeRow extends StatefulWidget {
  const RememberMeRow({super.key});

  @override
  State<RememberMeRow> createState() => _RememberMeRowState();
}

class _RememberMeRowState extends State<RememberMeRow> {
  bool remember = false;

  Widget _buildCheckbox() {
    return Checkbox(
      value: remember,
      activeColor: Constant.kPrimaryColor,
      onChanged: (v) => setState(() => remember = v ?? false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildCheckbox(),
        const CustomText(
          text: "Remember me",
          color: Colors.black,
          size: 14,
          fontWeight: FontWeight.w500,
        ),
        
      ],
    );
  }
}
