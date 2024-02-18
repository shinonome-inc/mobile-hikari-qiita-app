import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qiita_app/resource/intl_resource.dart';
import 'package:qiita_app/screen/home_root/home_root_screen.dart';

class TopPageScreen extends StatelessWidget {
  const TopPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('./assets/images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.2),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  const Spacer(flex: 1),
                  Text(
                    I18n().labelAppName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontFamily: 'Pacifico-Regular',
                    ),
                  ),
                  const Gap(8),
                  Text(
                    I18n().labelPlayGround,
                    style: const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  const Spacer(flex: 2),
                  SizedBox(
                    width: double.infinity,
                    height: 50.0,
                    child: TextButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<OutlinedBorder?>(
                          const StadiumBorder(),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color?>(
                          const Color(0xFF468300),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeRootScreen(),
                          ),
                        );
                      },
                      child: Text(
                        I18n().labelLogin,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const Gap(34),
                  Text(
                    I18n().labelNotLogin,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(flex: 1),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
