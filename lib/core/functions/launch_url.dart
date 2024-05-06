import 'package:bookly_app/core/functions/show_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl(context, {required String url}) async {
  final Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    launchUrl(uri);
  } else {
    customShowSnackBar(context, message: "Can't preview this book");
  }
}
