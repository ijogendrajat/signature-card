library signature_card;

import 'package:flutter/material.dart';

class SignatureCard extends StatefulWidget {
  const SignatureCard({super.key});

  @override
  State<SignatureCard> createState() => _SignatureCardState();
}

class _SignatureCardState extends State<SignatureCard> {
  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.amber,
      child: Padding(
        padding: EdgeInsets.all(2.0),
        child: SizedBox(height: 200, width: 400, child: Text("Signature")),
      ),
    );
  }
}
