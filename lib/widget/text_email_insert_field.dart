import 'package:caridiskon/BLoC/login_BLoC.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class InputEmailInsertField extends StatelessWidget {
  String? flag;
  String? placeholder;
  String? initialValue;

  InputEmailInsertField({
    Key? key,
    this.flag,
    this.placeholder,
    this.initialValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: Sizes.dp16(context),
          decoration: BoxDecoration(
            color: greyblue,
            border: flag == "not valid"
                ? Border.all(color: red)
                : Border.all(color: greyblue),
            borderRadius: BorderRadius.circular(Sizes.dp1(context)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Sizes.dp4(context)),
            child: TextFormField(
              cursorColor: black,
              initialValue: initialValue,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: black,
                  fontSize: Sizes.dp4(context),
                  fontWeight: FontWeight.w400,
                ),
              ),
              decoration: InputDecoration(
                hintText: placeholder,
                fillColor: black,
                hintStyle: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: grey,
                    fontSize: Sizes.dp4(context),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                border: InputBorder.none,
              ),
              onChanged: (newValue) {
                BlocProvider.of<EmailSaved>(context).add(newValue);
              },
              onSaved: (newValue) {
                BlocProvider.of<EmailSaved>(context).add(newValue!);
              },
              validator: (value) {
                if (value != "" && value!.contains("@") == true) {
                  BlocProvider.of<EmailValidator>(context).add("valid");
                } else if (value != "" && value!.contains("@") == false) {
                  BlocProvider.of<EmailValidator>(context)
                      .add("Email kurang tepat");
                } else if (value == "") {
                  BlocProvider.of<EmailValidator>(context).add("Email salah");
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
