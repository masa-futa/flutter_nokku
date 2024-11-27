import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hogehoge Fugafuga',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(2),
            Text(
              'Profile',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        titleSpacing: 30,
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: IconButton(
              icon: const Icon(
                Icons.settings,
                size: 26,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: const CustomScrollView(
        slivers: [
          _SliverProfileHeaderWidget(),
          SliverGap(22),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 28),
            sliver: _SliverProfileBodyWidget(),
          ),
        ],
      ),
    );
  }
}

class _SliverProfileHeaderWidget extends StatelessWidget {
  const _SliverProfileHeaderWidget();

  @override
  Widget build(BuildContext context) {
    return SliverList.list(
      children: [
        SizedBox(
          height: 140,
          child: Stack(
            alignment: Alignment.center,
            children: [
              const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Divider(
                    height: 1,
                    color: Colors.black38,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.purple.shade100,
                child: const Icon(Icons.person),
              ),
            ],
          ),
        ),
        const Column(
          children: [
            Text(
              'Hoge fuga',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            Gap(4),
            Text(
              'Mobile App Developer',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ],
    );
  }
}

class _SliverProfileBodyWidget extends StatelessWidget {
  const _SliverProfileBodyWidget();

  @override
  Widget build(BuildContext context) {
    return SliverList.list(
      children: [
        InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'language English',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
              ],
            ),
          ),
        ),
        const Gap(8),
        const _ProfileInfoWidget(),
        const Gap(16),
      ],
    );
  }
}

class _ProfileInfoWidget extends StatelessWidget {
  const _ProfileInfoWidget();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Profile Description',
          style: TextStyle(fontSize: 14),
        ),
        Gap(8),
        Divider(
          height: 1,
          color: Colors.black38,
          endIndent: 40,
        ),
        Gap(12),
        _ProfileInfoTile(
          title: 'Email',
          value: 'fugafuga@gmail.com',
        ),
        Gap(4),
        _ProfileInfoTile(
          title: 'Phone Number',
          value: '090-xxxx-xxxx',
        ),
        Gap(4),
        _ProfileInfoTile(
          title: 'from',
          value: 'Los Angeles',
        ),
        Gap(4),
        _ProfileInfoTile(
          title: 'birth day',
          value: '19xx/xx/xx',
        ),
      ],
    );
  }
}

class _ProfileInfoTile extends StatelessWidget {
  const _ProfileInfoTile({
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
