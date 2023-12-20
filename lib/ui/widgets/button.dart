import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow:  const [
          BoxShadow(
              color: Colors.black12, offset: Offset(0, 4), blurRadius: 5.0)
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const [0.0, 2.0],
          colors: [
            Colors.amberAccent.shade400,
            Colors.amberAccent.shade200,
          ],
        ),
        color: Colors.amberAccent.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ElevatedButton(
        onPressed: (){},
        style: ButtonStyle(
          shadowColor: MaterialStateProperty.all<Color>( Colors.transparent,),
          elevation: MaterialStateProperty.all(7),
          backgroundColor: MaterialStateProperty.all<Color>( Colors.transparent,),
          minimumSize: MaterialStateProperty.all( const Size(376, 50)),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30), // Border radius
            ),
          ),
        ),
        child: Text(
          'SIGN IN',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}