import 'package:flutter/material.dart';
import 'package:login_ui/login.dart';
import 'social_media_button.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('asset/Welcome2.png'),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Center(
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontFamily: 'Poppins-Bold',
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 400,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'Create new account so you can explore all the existing jobs',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins-SemiBold',
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Email TextField
                  _buildTextField('Email', _emailController, TextInputType.emailAddress, 'Please enter your email', (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    } else if (!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,4}").hasMatch(value)) {
                      return 'Enter a valid email';
                    }
                    return null;
                  }),

                  const SizedBox(height: 20),

                  // Password TextField
                  _buildTextField('Password', _passwordController, TextInputType.text, 'Please enter your password', (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    } else if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  }, obscureText: true),

                  const SizedBox(height: 20),

                  // Confirm Password TextField
                  _buildTextField('Confirm Password', _confirmPasswordController, TextInputType.text, 'Please confirm your password', (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password';
                    } else if (value != _passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  }, obscureText: true),

                  const SizedBox(height: 10),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      child: Text(
                        'Forgot Your Password?',
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontFamily: 'Poppins-SemiBold',
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Proceed with signup
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 145.0, vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.blue[900],
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Poppins-SemiBold'),
                    ),
                  ),

                  const SizedBox(height: 20),

                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: const Text(
                      'Already have an account',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontFamily: 'Poppins-SemiBold',
                      ),
                    ),
                  ),

                  const SizedBox(height: 70),

                  Text(
                    'or continue with',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Poppins-SemiBold',
                      color: Colors.blue[900],
                    ),
                  ),
                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialMediaButton(iconData: Icons.g_mobiledata, onpressed: () {}),
                      const SizedBox(width: 10),
                      SocialMediaButton(iconData: Icons.facebook, onpressed: () {}),
                      const SizedBox(width: 10),
                      SocialMediaButton(iconData: Icons.apple, onpressed: () {}),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Function to build the input fields
  Widget _buildTextField(String label, TextEditingController controller, TextInputType keyboardType, String validatorMessage, FormFieldValidator<String> validator, {bool obscureText = false}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 241, 244, 255),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color.fromARGB(255, 31, 65, 187),
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            labelText: label,
            border: InputBorder.none,
          ),
          keyboardType: keyboardType,
          obscureText: obscureText,
          validator: validator,
        ),
      ),
    );
  }
}
