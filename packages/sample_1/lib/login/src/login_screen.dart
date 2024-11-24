import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/sample.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              return CustomScrollView(
                // 不要なbounceを抑制
                physics: const ClampingScrollPhysics(),
                slivers: [
                  const SliverGap(200),
                  const SliverAppBar(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                    ),
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      title: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SliverList.list(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 32,
                          horizontal: 38,
                        ),
                        height: constraints.maxHeight,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            const _FormWidget(title: 'name'),
                            const Gap(16),
                            const _FormWidget(title: 'password'),
                            const Gap(8),
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                                children: [
                                  const TextSpan(
                                    text: 'パスワードをお忘れですか？ > ',
                                  ),
                                  TextSpan(
                                    text: 'Create Account',
                                    style: const TextStyle(
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        print('再設定');
                                      },
                                  ),
                                ],
                              ),
                            ),
                            const Gap(22),
                            ElevatedButton(
                              onPressed: () => print('ログイン'),
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.brown,
                                minimumSize: const Size(
                                  200,
                                  56,
                                ),
                              ),
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Gap(12),
                            const Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    color: Colors.grey,
                                    height: 1,
                                  ),
                                ),
                                Gap(4),
                                Text(
                                  'or',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                                Gap(4),
                                Expanded(
                                  child: Divider(
                                    color: Colors.grey,
                                    height: 1,
                                  ),
                                ),
                              ],
                            ),
                            const Gap(18),
                            _LoginButton(
                              icon: Icons.g_mobiledata_rounded,
                              title: 'Login with Google',
                              onTapped: () {},
                            ),
                            const Gap(16),
                            _LoginButton(
                              icon: Icons.facebook,
                              title: 'Login with facebook',
                              onTapped: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({
    required this.icon,
    required this.title,
    required this.onTapped,
  });

  final IconData icon;
  final String title;
  final VoidCallback onTapped;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTapped,
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.brown,
        iconColor: Colors.deepOrange,
        minimumSize: const Size(
          double.infinity,
          56,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 28,
          ),
          const Gap(12),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class _FormWidget extends StatelessWidget {
  const _FormWidget({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Gap(4),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ],
    );
  }
}
