import 'package:flutter/material.dart';
import 'signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Background image for the login page
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('asset/Welcome2.png'),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              // Title of the login page
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: Text(
                    'Login Here',
                    style: TextStyle(
                      color: Colors.blue[900],
                      fontFamily: 'Poppins-Bold',
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ),
              // Subtitle of the login page
              const Center(
                child: SizedBox(
                  width: 250,
                  child: Text(
                    'Welcome back you\'ve been missed!',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins-SemiBold',
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 40,
              ),
              // Email input field
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                margin: const EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 244, 255),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color.fromARGB(255, 31, 65, 187),
                    width: 2,
                  ),
                ),
                child: const Row(
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              // Password input field
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                margin: const EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 244, 255),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  children: [
                    Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Forgot password link
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20),
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
                ],
              ),
              const SizedBox(height: 15),
              // Sign in button
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 150.0, vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.blue[900],
                ),
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Poppins-SemiBold'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Create new account link
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignupPage()),
                  );
                },
                child: const Text(
                  'Create new account',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 14,
                    fontFamily: 'Poppins-SemiBold',
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              // Continue with social media text
              Text(
                'or continue with',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Poppins-SemiBold',
                  color: Colors.blue[900],
                ),
              ),
              const SizedBox(height: 20,),
              // Social media buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5,),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 219, 217, 217),
                        borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.g_mobiledata,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5,),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 219, 217, 217),
                        borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.facebook,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5,),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 219, 217, 217),
                        borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.apple,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
