import 'package:codink_coop/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsSection extends StatelessWidget {
  const MapsSection({super.key, required this.mapsSectionKey});
  final GlobalKey mapsSectionKey;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: mapsSectionKey,
      height: verticalSpace(context, .75),
      width: horizontalSpace(context, 1),
      child: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(-1.286389, 36.817223),
        ),
      ),
    );
  }
}