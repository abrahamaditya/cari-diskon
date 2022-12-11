import 'package:caridiskon/BLoC/login_BLoC.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPasswordInsertField extends StatefulWidget {
  String? flag;
  String? placeholder;
  String? initialValue;

  InputPasswordInsertField({
    Key? key,
    this.flag,
    this.placeholder,
    this.initialValue,
  }) : super(key: key);

  @override
  State<InputPasswordInsertField> createState() => _InputFieldPasswordState();
}

class _InputFieldPasswordState extends State<InputPasswordInsertField> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: Sizes.dp16(context),
          decoration: BoxDecoration(
            color: greyblue,
            border: widget.flag == "not valid"
                ? Border.all(color: red)
                : Border.all(color: greyblue),
            borderRadius: BorderRadius.circular(Sizes.dp1(context)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Sizes.dp4(context)),
            child: TextFormField(
              initialValue: widget.initialValue,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: black,
                  fontSize: Sizes.dp4(context),
                  fontWeight: FontWeight.w400,
                ),
              ),
              cursorColor: black,
              obscureText: _visible,
              decoration: InputDecoration(
                hintText: widget.placeholder,
                hintStyle: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: grey,
                    fontSize: Sizes.dp4(context),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                border: InputBorder.none,
                suffixIcon: IconButton(
                  splashRadius: 0.1,
                  color: grey,
                  icon:
                      Icon(_visible ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(
                      () {
                        _visible = !_visible;
                      },
                    );
                  },
                ),
              ),
              onChanged: (newValue) {
                BlocProvider.of<PasswordSaved>(context).add(newValue);
              },
              onSaved: (newValue) {
                BlocProvider.of<PasswordSaved>(context).add(newValue!);
              },
              validator: (value) {
                if (value != "") {
                  BlocProvider.of<PasswordValidator>(context).add("valid");
                } else {
                  BlocProvider.of<PasswordValidator>(context)
                      .add("Password salah");
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
