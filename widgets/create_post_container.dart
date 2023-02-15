import 'package:flutter/material.dart';

import '../models/models.dart';
import 'package:intern/widgets/widgets.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;
  const CreatePostContainer({Key? key, required this.currentUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.orange,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.grey[200],
                backgroundImage: NetworkImage(currentUser.imageUrl),
              ),
              const SizedBox(width: 8.0,),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(hintText: 'What\'s on your mind?'),
                ),
              ),
              const Divider(
                height: 10.0,
                thickness: 0.5,
              ),
              Row(
                children: [
                 IconButton(
                     onPressed: ()=> print("Live"),
                     icon: Icon(Icons.videocam,color: Colors.red),

                 )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
