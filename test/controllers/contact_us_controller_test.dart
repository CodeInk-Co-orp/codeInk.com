import 'package:codink_coop/controllers/contact_us_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:url_launcher/url_launcher.dart';

class MockitoClass extends Mock implements ContactUsController{}

void main(){
  late ContactUsController contactUsController;
  setUp((){
    contactUsController = MockitoClass();
  });

  group("Testing all functions in contact us controller", (){
    test("Launch URL testing.", () async {
      when(contactUsController.launchURL("http://example.com")).thenAnswer((_) async => true);
      await contactUsController.launchURL("https://wa.me/+254742143102");
      verify(launchUrl(Uri.parse("https://wa.me/+254742143102"))).called(1);
    });
  });
}