import 'package:flutter/material.dart';
import 'package:vs_flutter/models/models.dart';

class FriendPostTile extends StatefulWidget {
  const FriendPostTile({Key? key, required this.post}) : super(key: key);
  final Post post;
  @override
  _FriendPostTileState createState() => _FriendPostTileState();
}

class _FriendPostTileState extends State<FriendPostTile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.white, width: 5)),
          child: ClipOval(
            child: Image.asset(
              'assets/image/author_katz.jpeg',
              width: 50,
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.post.comment),
              Text(
                '${widget.post.timestamp} mins ago ',
                style: const TextStyle(fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
      ],
    );
  }
}
