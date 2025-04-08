import 'package:bookly_app/core/utils/function/custom_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

Future<void> launchCustomUrl(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if(await canLaunchUrl(uri)) {
      await launchUrlString(url);
    }else{
      customSnackBar(context, 'Could not launch $url');
    }
  }
}

