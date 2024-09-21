import 'package:flutter/material.dart';

class ParsedTextWidget extends StatelessWidget {
  const ParsedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Text(
              textAlign: TextAlign.center,
              '\$GNRMC,,V,,,,,,,,,,N*4D\n\$GNVTG,,,,,,,,,N*2E\n\$GNGGA,,,,,,0,00,99.99,,,,,,*56\n\$GNGSA,A,1,,,,,,,,,,,,,99.99,99.99,99.99*2E\n\$GPGLL,4717.11634,N,00833.91297,E,124923.00,A,A*6E\n\$GNGSA,A,1,,,,,,,,,,,,,99.99,99.99,99.99*2E\n\$GPGSV,1,1,00*79\n\$GLGSV,1,1,00*65\n\$GNGLL,,,,,,V,N*7A\n\$GNRMC,,V,,,,,,,,,,N*4D\n\$GNVTG,,,,,,,,,N*2E\n\$GNGGA,,,,,,0,00,99.99,,,,,,*56\n\$GNGSA,A,1,,,,,,,,,,,,,99.99,99.99,99.99*2E\n\$GPGLL,4717.11634,N,00833.\n\$GNRMC,,V,,,,,,,,,,N*4D\n\$GNVTG,,,,,,,,,N*2E\n\$GNGGA,,,,,,0,00,99.99,,,,,,*56\n\$GNGSA,A,1,,,,,,,,,,,,,99.99,99.99,99.99*2E\n\$GPGLL,4717.11634,N,00833.91297,E,124923.00,A,A*6E\n\$GNGSA,A,1,,,,,,,,,,,,,99.99,99.99,99.99*2E\n\$GPGSV,1,1,00*79\n\$GLGSV,1,1,00*65\n\$GNGLL,,,,,,V,N*7A\n\$GNRMC,,V,,,,,,,,,,N*4D\n\$GNVTG,,,,,,,,,N*2E\n\$GNGGA,,,,,,0,00,99.99,,,,,,*56\n\$GNGSA,A,1,,,,,,,,,,,,,99.99,99.99,99.99*2E\n\$GPGLL,4717.11634,N,00833.')
        ],
      ),
    );
  }
}
