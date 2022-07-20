import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox.fromSize(
            size: const Size(25, 25),
            child: ClipOval(
              child: Material(
                color: Colors.transparent,

                // splashColor: Colors.green,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.location_on_outlined,
                      size: 25,
                      color: Colors.grey,
                    ), // <-- Icon
                    // <-- Text
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: const Text(
                'Select a Location',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(25, 25),
            child: ClipOval(
              child: Material(
                color: Colors.transparent,

                // splashColor: Colors.green,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.chevron_right,
                      size: 25,
                      color: Colors.grey,
                    ), // <-- Icon
                    // <-- Text
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
