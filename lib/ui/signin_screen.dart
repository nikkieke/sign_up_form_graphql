import 'package:code_review_app/ui/widgets/button.dart';
import 'package:code_review_app/ui/widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              Text(
                'Sign In',
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
              ),
              const SizedBox(
                height: 50,
              ),
              const TextInput(
                labelText: 'Email',
                obscure: false,
              ),
              const SizedBox(
                height: 20,
              ),
              TextInput(
                labelText: 'Password',
                obscure: true,
                suffixIcon: Text(
                  'Forgot Password',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.black45,
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Button(),
              const SizedBox(
                height: 20,
              ),
              RichText(
                selectionColor: Theme.of(context).primaryColor,
                text: TextSpan(
                  text: 'Don’t have an account?',
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Sign up',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                            color:  Colors.amberAccent,
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Divider(),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'or sign in with',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.black45,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AuthOptionWidget(iconPath: 'assets/images/facebook.svg',),
                  SizedBox(width: 20,),
                  AuthOptionWidget(iconPath: 'assets/images/google.svg',),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}

class AuthOptionWidget extends StatelessWidget {
  const AuthOptionWidget({
    required this.iconPath,
    super.key,
  });
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      height: 50,
      width: 120,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black38, width: 2 ),
        borderRadius: const BorderRadius.all(Radius.circular(25))
      ),
      child: SvgPicture.asset(iconPath,),
    );
  }
}
