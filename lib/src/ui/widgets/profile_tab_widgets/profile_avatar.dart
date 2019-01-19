import "package:flutter/material.dart";
import 'package:flutter_advanced_networkimage/flutter_advanced_networkimage.dart';
import 'package:flutter_advanced_networkimage/transition_to_image.dart';

Widget buildProfileAvatar(
  String battlerProfilePictureUrl, {
  String battlerInitial,
  radius,
  minRadius,
  maxRadius,
}) {
  double radius;
  double minRadius;
  double maxRadius;
  const double _defaultRadius = 20.0;
  const double _defaultMinRadius = 0.0;
  const double _defaultMaxRadius = double.infinity;

  double getMinDiameter() {
    if (radius == null && minRadius == null && maxRadius == null) {
      return _defaultRadius * 2.0;
    }
    return 2.0 * (radius ?? minRadius ?? _defaultMinRadius);
  }

  double getMaxDiameter() {
    if (radius == null && minRadius == null && maxRadius == null) {
      return _defaultRadius * 2.0;
    }
    return 2.0 * (radius ?? maxRadius ?? _defaultMaxRadius);
  }

  return Container(
    constraints: BoxConstraints(
      minHeight: getMinDiameter(),
      minWidth: getMinDiameter(),
      maxWidth: getMaxDiameter(),
      maxHeight: getMaxDiameter(),
    ),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
    ),
    child: FractionallySizedBox(
      heightFactor: 0.7,
      widthFactor: 0.7,
      child: ClipOval(
        child: TransitionToImage(
          AdvancedNetworkImage(
            battlerProfilePictureUrl,
            loadedCallback: () {
              // showVoteButton();
              print('Image loaded!');
            },
            loadFailedCallback: () {
              // hideVoteButton();
              print('Image load failed!');
            },
            useDiskCache: true,
          ),
          loadingWidget: const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.black45),
          ),
          fit: BoxFit.cover,
          placeholder: CircleAvatar(
            radius: 50,
            backgroundColor: Colors.black54,
            child: Text(
              battlerInitial,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          enableRefresh: true,
        ),
      ),
    ),
  );
}
