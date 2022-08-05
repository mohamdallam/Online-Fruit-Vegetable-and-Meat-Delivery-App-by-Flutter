import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:roman/model/sub_category.dart';
import 'package:roman/widget/main_app_bar.dart';
import 'package:roman/widget/map_buttom.dart';
import 'package:roman/widget/map_user_profile.dart';
import 'package:roman/services/category_selection_service.dart';

const LatLng SOURCE_LOCATION = LatLng(42.7477863, -71.1699932);
const LatLng DEST_LOCATION = LatLng(42.744421, -71.1698939);
const double CAMERA_ZOOM = 16;
const double CAMERA_TILT = 80;
const double CAMERA_BEARING = 30;
const double PIN_VISIBLE_POSITION = 20;
const double PIN_INVISIBLE_POSITION = -220;

class MapPage extends StatefulWidget {

  SubCategory subCategory;
  MapPage({this.subCategory});

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Completer<GoogleMapController> _controller = Completer();
  BitmapDescriptor sourceIcon;
  BitmapDescriptor destinationIcon;
  Set<Marker> _markers = Set<Marker>();
  double pinPillPosition = PIN_VISIBLE_POSITION;
  LatLng currentLocation;
  LatLng destinationLocation;
  bool userBadgeSelected = false;

  Set<Polyline> _polylines = Set<Polyline>();
  List<LatLng> polylineCoordinates = [];
  PolylinePoints polylinePoints;

  @override
  void initState() {
    super.initState();
    polylinePoints = PolylinePoints();
    // TODO:: set up the marker icon
    setSourceAndDestinationMarkerIcons();
    //TODO:: set up inital location
    setInitialLocation();
  }

//TODO:: FUNCTION setSourceAndDestinationMarkerIcons
  void setSourceAndDestinationMarkerIcons() async {
    // String parentCat = widget.subCategory.imgName.split("_")[0];

    sourceIcon = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(devicePixelRatio: 2.0),
      'assets/images/pinsou.png',
    );

    destinationIcon = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(devicePixelRatio: 2.0),
      'assets/images/pindes.png',
    );
  }

//TODO:: FUNCTION setInitialLocation
  void setInitialLocation() {
    currentLocation =
        LatLng(SOURCE_LOCATION.latitude, SOURCE_LOCATION.longitude);
    destinationLocation =
        LatLng(DEST_LOCATION.latitude, DEST_LOCATION.longitude);
  }

  @override
  Widget build(BuildContext context) {

    CategorySelectionService catSelection = Provider.of<CategorySelectionService>(context,listen: false);
    widget.subCategory=catSelection.selectedSubCategory;


    //TODO:: CameraPosition
    CameraPosition initialCameraPosition = CameraPosition(
      zoom: CAMERA_ZOOM,
      tilt: CAMERA_TILT,
      bearing: CAMERA_BEARING,
      target: SOURCE_LOCATION,
    );

    return Scaffold(
      body: Stack(
        children: [
          //TODO :: GOOLE MAP
          Positioned.fill(
            child: GoogleMap(
              myLocationEnabled: true,
              compassEnabled: false,
              tiltGesturesEnabled: false,
              polylines: _polylines,
              markers: _markers,
              mapType: MapType.normal,
              initialCameraPosition: initialCameraPosition,
              onTap: (LatLng loc) {
                //TODO:: Tapping on the map will dismiss the bottom pill
                setState(() {
                  pinPillPosition = PIN_INVISIBLE_POSITION;
                  userBadgeSelected = false;
                });
              },
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
                showPinsOnMap();
                setPolylines();
              },
            ),
          ),
          //TODO :: MAP USER PROFILE ON TOP PAGE
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: MapUserProfile(
              isSelected: userBadgeSelected,
            ),
          ),
          //TODO :: MAP BUTTOM ON LAST PAGE
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            left: 0,
            right: 0,
            //bottom: 20,
            bottom: pinPillPosition,
            child: MapButton(
            //    subCategory:widget.subCategory
            ),

          ),
          //TODO :: MAIN APP BAR
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: MainAppBar(
              showProfilePic: false,
            ),
          ),
        ],
      ),
    );
  }

//TODO:: FUNCTION showPinsOnMap
  void showPinsOnMap() {
    setState(() {
      _markers.add(Marker(
          markerId: MarkerId('sourcePin'),
          position: currentLocation,
          icon: sourceIcon,
          onTap: () {
            setState(() {
              this.userBadgeSelected = true;
            });
          }));

      _markers.add(Marker(
          markerId: MarkerId('destinationPin'),
          position: destinationLocation,
          icon: destinationIcon,
          onTap: () {
            setState(() {
              this.pinPillPosition = PIN_VISIBLE_POSITION;
            });
          }));
    });
  }

//TODO:: FUNCTION setPolylines
  void setPolylines() async {
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyDzRfWdaxKQyF68iBhNXI-0I0eBm6GWtmc",
      PointLatLng(
        currentLocation.latitude,
        currentLocation.longitude,
      ),
      PointLatLng(
        destinationLocation.latitude,
        destinationLocation.longitude,
      ),
    );

    if (result.status == 'OK') {
      print("yes");
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });

      setState(() {
        _polylines.add(
          Polyline(
            width: 10,
            polylineId: PolylineId('polyLine'),
            color: Color(0xFF08A5CB),
            points: polylineCoordinates,
          ),
        );
      });
    } else {
      print("no");
    }
  }
}
