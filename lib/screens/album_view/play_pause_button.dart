
import 'package:flutter/material.dart';
import 'package:flutter_spotify/constants/const.dart';

class PlayPauseButton extends StatefulWidget {
  const PlayPauseButton({
    Key? key,
    required this.scrollController,
    required this.maxAppBarHeight,
    required this.minAppBarHeight,
    required this.playPauseButtonSize,
    required this.infoBoxHeight,
  }) : super(key: key);

  final ScrollController scrollController;
  final double maxAppBarHeight;
  final double minAppBarHeight;
  final double playPauseButtonSize;
  final double infoBoxHeight;

  @override
  State<PlayPauseButton> createState() => _PlayPauseButtonState();
}

class _PlayPauseButtonState extends State<PlayPauseButton> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    widget.scrollController.addListener(() {
      setState(() {});
    });
  }

  double get getPositionFromTop {
    double position = widget.maxAppBarHeight;
    double finalPosition =
        widget.minAppBarHeight - widget.playPauseButtonSize / 2;

    if (widget.scrollController.hasClients) {
      double offset = widget.scrollController.offset;
      //When adjusting position, add/subtract in addOrSubtractValue
      double addOrSubtractValue =
          widget.infoBoxHeight - widget.playPauseButtonSize - 10;
      final bool isFinalPosition =
          offset > (position - finalPosition + addOrSubtractValue);
      if (!isFinalPosition) {
        position = position - offset + addOrSubtractValue;
      } else {
        position = finalPosition;
      }
    }
    return position;
  }

  @override
  Widget build(BuildContext context) {
  return Positioned(
    top: getPositionFromTop,
    right: 15,
    child: ElevatedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: kPlayPauseButtonColor,
        fixedSize:
            Size(widget.playPauseButtonSize, widget.playPauseButtonSize),
        shape: const CircleBorder(),
      ),
      onPressed: () {},
      child: Transform.translate(
        offset: const Offset(-10, 0), // Adjust the offset as needed
        child: const Icon(
          Icons.play_arrow,
          size: 40,
          color: Colors.black,
        ),
      ),
    ),
  );
}
}
