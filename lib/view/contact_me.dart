import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/widgets/assets.dart';
import 'package:portfolio_website/widgets/colors.dart';
import 'package:portfolio_website/widgets/text_theme.dart';

class ContactUs extends StatelessWidget {
  ContactUs({Key? key}) : super(key: key);

  // Method to handle form submission (placeholder implementation)
  void sendEmail(String fullName, String emailAddress, String phoneNumber,
      String emailSubject, String message) {
    // Placeholder implementation - You would replace this with actual email sending logic on the server
    // print('Form Data:');
    // print('Full Name: $fullName');
    // print('Email Address: $emailAddress');
    // print('Phone Number: $phoneNumber');
    // print('Email Subject: $emailSubject');
    // print('Message: $message');
    // Now, you would send this data to your server, which will handle the email sending.
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: size.width,
        height: size.height,
        padding:
            EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.1),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInRight(
                  duration: const Duration(milliseconds: 1600),
                  child: RichText(
                    text: TextSpan(
                      text: "Contact ",
                      style: AppTheme.bodytextstyle(
                        fontWeight: FontWeight.w900,
                        color: AppColors.textcolor,
                        size: 50,
                      ),
                      children: [
                        TextSpan(
                          text: 'Me!',
                          style: AppTheme.bodytextstyle(
                            fontWeight: FontWeight.w900,
                            size: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(12),
                    elevation: 8,
                    child: TextField(
                      controller: fullNameController,
                      cursorColor: AppColors.darkBackgroundColor,
                      style: AppTheme.bodytextstyle(
                          size: 15, fontWeight: FontWeight.w600),
                      decoration: inputDecoration(name: "Full Name"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(12),
                    elevation: 8,
                    child: TextField(
                      controller: emailAddressController,
                      cursorColor: AppColors.secondarycolor,
                      style: AppTheme.bodytextstyle(
                          size: 15, fontWeight: FontWeight.w600),
                      decoration: inputDecoration(name: "Email Address"),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(12),
                    elevation: 8,
                    child: TextField(
                      controller: phoneNumberController,
                      cursorColor: Colors.black,
                      style: AppTheme.headertextstyle(
                          size: 15, fontWeight: FontWeight.w600),
                      decoration: inputDecoration(name: "Phone Number"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(12),
                    elevation: 8,
                    child: TextField(
                      controller: emailSubjectController,
                      cursorColor: AppColors.secondarycolor,
                      style: AppTheme.bodytextstyle(
                          size: 15, fontWeight: FontWeight.w600),
                      decoration: inputDecoration(name: "Email Subject"),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(12),
                elevation: 8,
                child: TextField(
                  controller: messageController,
                  maxLines: 5,
                  style: AppTheme.bodytextstyle(
                      size: 15, fontWeight: FontWeight.w500),
                  decoration: inputDecoration(name: "Your Message"),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                sendEmail(
                  fullNameController.text,
                  emailAddressController.text,
                  phoneNumberController.text,
                  emailSubjectController.text,
                  messageController.text,
                );
              },
              style: ElevatedButton.styleFrom(
                primary: AppColors.containercolor,
                elevation: 6,
                minimumSize: Size(130, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              ),
              child: Text(
                "Send",
                style: AppTheme.bodytextstyle(
                  fontWeight: FontWeight.w800,
                  color: AppColors.secondarycolor,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration inputDecoration({required String name}) {
    return InputDecoration(
      hintText: name,
      hintStyle: AppTheme.bodytextstyle(
        fontWeight: FontWeight.w600,
        color: AppColors.textcolor,
        size: 17,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
      filled: true,
      fillColor: Colors.white38,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 12,
      ),
    );
  }

  // Define TextEditingController for each TextField to capture user input
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController emailSubjectController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
}
