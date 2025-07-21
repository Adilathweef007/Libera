import 'package:flutter/material.dart';

class ComplaintPage extends StatelessWidget {
  ComplaintPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => const ComplaintCard(),
      itemCount: 10,
    );
  }
}

class ComplaintCard extends StatelessWidget {
  const ComplaintCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: ExpansionTile(
        title: Text('Complaint 1'),
        subtitle: Text('05/02/2022'),
        leading: CircleAvatar(
          radius: 20,
          child: Icon(Icons.person),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
                ' Librarian Pora,AC Work cheyynilla, aake motham podi aan, bench poliyaan aayikn!'),
          )
        ],
      ),
    );
  }
}
