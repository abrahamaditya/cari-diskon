import 'package:caridiskon/BLoC/login_BLoC.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class InputMessageFieldMessage extends StatelessWidget {
  String? flag;
  String? placeholder;
  String? initialValue;

  InputMessageFieldMessage({
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
          decoration: BoxDecoration(
            color: white,
            border: flag == "not valid"
                ? Border.all(color: red)
                : Border.all(color: Colors.grey.withAlpha(150)),
            borderRadius: BorderRadius.circular(Sizes.dp1(context)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Sizes.dp4(context)),
            child: TextFormField(
              initialValue: initialValue,
              cursorColor: black,
              keyboardType: TextInputType.multiline,
              maxLines: 10,
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
                    color: Colors.grey.withAlpha(200),
                    fontSize: Sizes.dp4(context),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                border: InputBorder.none,
              ),
              onChanged: (newValue) {
                BlocProvider.of<PesanSaved>(context).add(newValue);
              },
              onSaved: (newValue) {
                BlocProvider.of<PesanSaved>(context).add(newValue!);
              },
              validator: (value) {
                if (value != "") {
                  BlocProvider.of<PesanValidator>(context).add("valid");
                } else {
                  BlocProvider.of<PesanValidator>(context)
                      .add("Pesan belum diisi");
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
