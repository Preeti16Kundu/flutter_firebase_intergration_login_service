import 'dart:ffi';
import 'package:cached_network_image/cached_network_image.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostDetailWidget extends StatefulWidget {
  String title = '';
  double price;
  String description = '';
  String image_url = '';
  PostDetailWidget(String t, double p, String d, String img) {
    title = t;
    price = p;
    description = d;
    image_url = img;
  }

  @override
  _PostDetailWidgetState createState() => _PostDetailWidgetState();
}

class _PostDetailWidgetState extends State<PostDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF009688),
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
          "Post Detail",
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'poppins',
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Title',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    widget.title,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Divider(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Price',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    widget.price.toString(),
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Divider(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Description',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    widget.description,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Divider(
                  height: 25,
                ),
                InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: FlutterFlowExpandedImageView(
                          image: CachedNetworkImage(
                            imageUrl: valueOrDefault<String>(
                              widget.image_url,
                              'https://picsum.photos/seed/514/600',
                            ),
                            fit: BoxFit.contain,
                          ),
                          tag: valueOrDefault<String>(
                            widget.image_url,
                            'https://picsum.photos/seed/514/600',
                          ),
                          useHeroAnimation: true,
                        ),
                      ),
                    );
                  },
                  child: Hero(
                    tag: valueOrDefault<String>(
                      widget.image_url,
                      'https://picsum.photos/seed/514/600',
                    ),
                    transitionOnUserGestures: true,
                    child: Container(
                      width: 120,
                      height: 120,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: CachedNetworkImage(
                        imageUrl: valueOrDefault<String>(
                          widget.image_url,
                          'https://picsum.photos/seed/514/600',
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
