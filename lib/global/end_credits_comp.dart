import 'dart:async';
import 'package:flutter/material.dart';

///Fast movement of credits
const int fastSpeedFactor = 50;

///Normal movement of credits
const int normalSpeedFactor = 30;

///Slow movement of credits
const int slowSpeedFactor = 10;

///Callback for scroll position
typedef OnScrollChange = void Function(double);

///Widget that displays credits like a movie
///
///Moves a SingleScrollChildView from bottom to top
///and restarts the scrolling when reches the bottom.
class EndCreditsScene extends StatefulWidget {
  ///Background color
  ///
  ///Default: Black
  final Color backgroundColor;

  ///Curve of scrolling
  ///
  ///Default: linear
  final Curve curve;

  ///Delay to start the scrolling
  ///
  ///Default: zero
  final Duration delay;

  ///Sections of credtis
  final List<Section> sections;

  ///Movement speed of credtis.
  ///
  ///Avaiable: fast (50), normal (30), slow (10).
  final int speedFactor;

  ///Event for position change
  final OnScrollChange? onScrollChange;

  ///Responsable text style
  final TextStyle responsableTextStyle;

  ///Role text style
  final TextStyle roleTextStyle;

  ///Section title style
  final TextStyle titleTextStyle;

  ///Main constructor
  EndCreditsScene(this.sections,
      {this.backgroundColor = Colors.black,
      this.curve = Curves.linear,
      this.delay = Duration.zero,
      this.onScrollChange,
      this.responsableTextStyle = defaultResponsableStyle,
      this.roleTextStyle = defaultRoleStyle,
      this.speedFactor = normalSpeedFactor,
      this.titleTextStyle = defaultTitleStyle});

  @override
  _EndCreditsState createState() => _EndCreditsState();
}

class _EndCreditsState extends State<EndCreditsScene> {
  bool scroll = false;
  Timer? _restartTimer;
  Timer? _toogleTimer;
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _toogleTimer = Timer(widget.delay, _toggle);

    ///When reachs the bottom, restart the scrolling
    _scrollController.addListener(_onScrollChanged);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScrollChanged);
    _scrollController.dispose();
    if (_toogleTimer != null) {
      _toogleTimer!.cancel();
    }
    if (_restartTimer != null) {
      _restartTimer!.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: widget.backgroundColor,
        constraints: BoxConstraints.expand(),
        child: GestureDetector(
            onTapDown: (details) => _toggle(),
            onTapUp: (details) => _toggle(),
            onTapCancel: _toggle,
            child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                controller: _scrollController,
                child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height,
                        bottom: MediaQuery.of(context).size.height),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          for (var section in widget.sections)
                            SectionWidget(section,
                                responsableStyle: widget.responsableTextStyle,
                                roleStyle: widget.roleTextStyle,
                                titleStyle: widget.titleTextStyle)
                        ])))));
  }

  void _onScrollChanged() {
    if (widget.onScrollChange != null) {
      widget.onScrollChange!(_scrollController.offset);
    }
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      _scrollController.jumpTo(_scrollController.initialScrollOffset);
      _restartTimer = Timer(widget.delay, _scroll);
    }
  }

  void _toggle() {
    setState(() => scroll = !scroll);
    if (scroll) {
      _scroll();
    } else {
      _scrollController.animateTo(_scrollController.offset,
          duration: Duration.zero, curve: widget.curve);
    }
  }

  void _scroll() {
    ///Calculate duration depending on speedFactor
    final maxExtent = _scrollController.position.maxScrollExtent;
    final distanceDifference = maxExtent - _scrollController.offset;
    final durationDouble = distanceDifference / widget.speedFactor;

    ///Move to end of scroll
    _scrollController.animateTo(_scrollController.position.maxScrollExtent,
        duration: Duration(seconds: durationDouble.toInt()),
        curve: widget.curve);
  }
}

///Section of credtis
class Section {
  ///Title of section
  final String title;

  ///Crew of section
  final List<Role> roles;

  ///Main constructor
  Section({required this.title, required this.roles});
}

///Roles
class Role {
  /// Role name
  final String name;

  /// Crew involved
  final List<Responsable> crew;

  ///Main constructor
  Role({required this.name, required this.crew});
}

///Responsable credit
class Responsable {
  ///Responsable name
  final String name;

  ///Responsable image
  final String? imageUrl;

  ///Main constructor
  const Responsable(this.name, {this.imageUrl});
}

///Deafult style for title
const TextStyle defaultTitleStyle =
    TextStyle(color: Colors.white, fontSize: 32.0, fontWeight: FontWeight.bold);

///Deafult style for title
const TextStyle defaultRoleStyle = TextStyle(
    color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.normal);

///Deafult style for title
const TextStyle defaultResponsableStyle =
    TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold);

///Widget that handle de section info
///
class SectionWidget extends StatefulWidget {
  ///Section to display
  final Section section;

  ///Responsable of title
  final TextStyle? responsableStyle;

  ///Role of title
  final TextStyle? roleStyle;

  ///Style of title
  final TextStyle? titleStyle;

  ///Main constructor
  SectionWidget(this.section,
      {this.responsableStyle, this.roleStyle, this.titleStyle});

  @override
  _SectionWidgetState createState() => _SectionWidgetState();
}

class _SectionWidgetState extends State<SectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        margin: const EdgeInsets.only(bottom: 24.0),
        child: Column(children: <Widget>[
          Text(widget.section.title, style: widget.titleStyle),
          SizedBox(height: 16.0),
          for (var role in widget.section.roles)
            Container(
              margin: EdgeInsets.only(bottom: role.crew.length > 1 ? 8.0 : 0.0),
              child: IntrinsicHeight(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                    Expanded(
                        child: Text(role.name,
                            style: widget.roleStyle, textAlign: TextAlign.end)),
                    SizedBox(width: 16.0),
                    Expanded(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                          for (var person in role.crew)
                            Container(
                                margin: const EdgeInsets.only(bottom: 4.0),
                                child: Text(person.name,
                                    style: widget.responsableStyle,
                                    textAlign: TextAlign.start))
                        ]))
                  ])),
            )
        ]));
  }
}
