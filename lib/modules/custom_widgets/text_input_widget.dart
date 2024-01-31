import 'package:flutter/material.dart';
import '../utils/color_constants.dart';
import '../utils/text_styles.dart';

// ignore: must_be_immutable
class TextInputWidget extends StatelessWidget {
  Function(bool)? refresh;
  String placeHolder = '';
  late TextEditingController controller;
  String? errorText = '';
  bool? hidePassword = false;
  bool? showFloatingLabel = true;
  bool? isReadOnly = false;
  bool? isNotEditable = false;
  String? suffixIconType = '';
  Function onTextChange;

  TextInputWidget(
      {super.key,
        this.refresh,
        this.isReadOnly,
        this.isNotEditable,
        this.suffixIconType,
        required this.placeHolder,
        required this.controller,
        required this.errorText,
        this.hidePassword,
        this.showFloatingLabel,
        required this.onTextChange});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        onTextChange();
      },
      readOnly: isReadOnly ?? false,
      enableSuggestions: false,
      autocorrect: false,
      controller: controller,
      obscureText: hidePassword ?? false,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          labelText: (showFloatingLabel ?? true) ? placeHolder :null,
          hintText: (!(showFloatingLabel ?? true)) ? placeHolder : null,
          hintStyle: getTextRegular(colors: ColorConstants.cGray, size: 18.0),
          suffixIcon: (refresh != null) ? IconButton(
            icon: (suffixIconType == "Edit") ? Icon((isReadOnly ?? false) ? Icons.edit : Icons.edit_off_sharp) : Icon((hidePassword ?? false) ? Icons.visibility_off : Icons.visibility),
            onPressed: () {
              refresh!(false);
            },
          ) : null,
          suffixIconColor: ColorConstants.cBlack,
          errorText: errorText,
          labelStyle:
          getTextRegular(colors: (isNotEditable ?? false ? Colors.grey : ColorConstants.cGray), size: 18.0),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: ColorConstants.cGray),
              borderRadius: BorderRadius.all(Radius.circular(10)))),
      style: getTextRegular(colors: (isNotEditable ?? false ? Colors.grey : ColorConstants.cBlack), size: 16.0),
    );
  }
}

// ignore: must_be_immutable
class TextInputSelectionWidget extends StatelessWidget {
  String placeHolder = '';
  late TextEditingController controller;
  String? errorText = '';
  bool hidePassword = false;
  Function fSquarch;

  TextInputSelectionWidget(
      this.fSquarch, {
        super.key,
        required this.placeHolder,
        required this.controller,
        required this.errorText,
      });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: () {
        fSquarch();
      },
      enableSuggestions: false,
      readOnly: true,
      autocorrect: false,
      controller: controller,
      decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          hintText: placeHolder,
          errorText: errorText,
          hintStyle:
          getTextRegular(colors: ColorConstants.cBlack, size: 18.0),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.all(Radius.circular(10)))),
    );
  }
}
