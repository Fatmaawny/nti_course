import 'package:flutter/material.dart';
class Customtextform extends StatelessWidget {
  const Customtextform({super.key,required this.text,required this.iconn, this.preiconn});
  final String?text;
  final IconData?iconn;
  final IconData?preiconn;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(color: Colors.grey,fontSize: 14),

          filled: true,
          fillColor: Colors.white,

          suffixIcon: Icon(iconn, color: Color(0xFF1380A5)),
          prefixIcon: Icon(preiconn, color: Color(0xFF1380A5)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
