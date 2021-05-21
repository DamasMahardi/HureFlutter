
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uihure/Components/custom_appbar.dart';
import 'package:uihure/Components/entry_field.dart';
import 'package:uihure/Locale/locales.dart';
import 'package:uihure/Themes/colors.dart';
import 'package:uihure/Themes/style.dart';

class ChatPage extends StatelessWidget {
  final String orderId = 'orderId-1';
  @override
  Widget build(BuildContext context) {
    return ChatWidget();
  }
}

class ChatWidget extends StatefulWidget {
  @override
  _ChatWidgetState createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  TextEditingController _messageController = TextEditingController();
  //ChatBloc _chatBloc;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(144.0),
            child: CustomAppBar(
              leading: IconButton(
                icon: Hero(
                  tag: 'arrow',
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    size: 30,
                  ),
                ),
                onPressed: () => Navigator.pop(context),
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(0.0),
                child: Hero(
                  tag: 'Delivery Boy',
                  child: Container(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: ListTile(
                      leading: 
                        CircleAvatar(
                          radius: 22.0,
                          backgroundImage: AssetImage('images/profile.jpg'),
                        ),
                       
                      title: Text(
                        'George Anderson',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      subtitle: Text(
                        'Delivery Partner',
                        style: Theme.of(context).textTheme.headline6.copyWith(
                            fontSize: 11.7,
                            color: Color(0xffc2c2c2),
                            fontWeight: FontWeight.w500),
                      ),
                      trailing:
                        IconButton(
                          icon: Icon(Icons.phone, color: kMainColor),
                          onPressed: () {
                            /*.........*/
                          },
                        ),
                        
                    ),
                  ),
                ),
              ),
            )),
        body: Stack(
          children: [
            Opacity(
              opacity: 0.15,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'images/map1.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                MessageStream(),
                Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: EntryField(
                    controller: _messageController,
                    hint: AppLocalizations.of(context).enterMessage,
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.send,
                        color: kMainColor,
                      ),
                      onPressed: () {
                        _messageController.clear();
                      },
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

class MessageStream extends StatelessWidget {
  final List<MessageBubble> messageBubbles = [
    MessageBubble(
      sender: 'delivery_partner',
      text: 'Hey there?\nHow much time?',
      time: '11:59 am',
      isDelivered: false,
      isMe: true,
    ),
    MessageBubble(
      sender: 'user',
      text: 'On my way ma’m.\nWill reach in 10 mins.',
      time: '11:58 am',
      isDelivered: false,
      isMe: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: messageBubbles,
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final bool isMe;
  final String text;
  final String sender;
  final String time;
  final bool isDelivered;

  MessageBubble(
      {this.sender, this.text, this.time, this.isMe, this.isDelivered});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Material(
            elevation: 4.0,
            color:
                isMe ? kMainColor : Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(6.0),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
              child: Column(
                crossAxisAlignment:
                    isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    text,
                    textAlign: TextAlign.right,
                    style: isMe
                        ? bottomBarTextStyle.copyWith()
                        : Theme.of(context)
                            .textTheme
                            .caption
                            .copyWith(fontSize: 15.0),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        time,
                        style: TextStyle(
                          fontSize: 10.0,
                          color: isMe
                              ? kWhiteColor.withOpacity(0.75)
                              : kLightTextColor,
                        ),
                      ),
                      // isMe
                      //     ? Icon(
                      //         Icons.check_circle,
                      //         color: isDelivered ? Colors.blue : kDisabledColor,
                      //         size: 12.0,
                      //       )
                      //     : SizedBox.shrink(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
