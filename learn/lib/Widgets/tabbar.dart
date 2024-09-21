// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade600,
          title: Text('Baatein'),
          bottom: TabBar(
            indicatorColor: Colors.blue.shade200,
            indicatorWeight: 3,
            tabs: [
              Tab(
                icon: Icon(Icons.chat),
                text: 'Chats'
              ),
              Tab(
                icon: Icon(Icons.circle_notifications_outlined),
                text: 'Status',
              ),
              Tab(
                icon: Icon(Icons.call),
                text: 'Calls',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: Center(
                child: Text(
                  'CHATS',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  'STATUS',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  'CALLS',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}