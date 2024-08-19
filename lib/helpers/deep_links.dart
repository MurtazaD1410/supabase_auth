import 'package:uni_links/uni_links.dart';

void initUniLinks() async {
  try {
    // For app launch via deep link
    final initialLink = await getInitialLink();
    if (initialLink != null) {
      // Handle the deep link
      _handleDeepLink(initialLink);
    }

    // For app already running in background
    linkStream.listen((String? link) {
      if (link != null) {
        _handleDeepLink(link);
      }
    });
  } catch (e) {
    print('Failed to get deep link: $e');
  }
}

void _handleDeepLink(String link) {
  // Handle the deep link here
  print('Received deep link: $link');
  // Navigate or perform actions based on the link
}
