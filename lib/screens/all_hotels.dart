import 'package:flutter/material.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Hotels'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('All Tickets'),
      ),
    );
  }
}
