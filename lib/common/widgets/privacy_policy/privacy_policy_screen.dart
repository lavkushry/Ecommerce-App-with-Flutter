import 'package:ecom_app/util/constants/colors.dart';
import 'package:ecom_app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: dark ? TColors.white : TColors.primaryColor,
              decorationColor:
              dark ? TColors.white : TColors.primaryColor,
            ),
            children: const <TextSpan>[
              TextSpan(text: 'Privacy Statement for RealRoadies\n\n', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'Effective Date: [Insert Date]\n\n', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'Introduction\n\n', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'RealRoadies ("we", "us", or "our") respects the privacy of its users ("you" or "your") and is committed to protecting it through our compliance with this Privacy Statement. This statement explains how we collect, use, protect, and share your personal information when you use the RealRoadies mobile application (the "App").\n\n'),
              TextSpan(text: 'Information We Collect\n\n', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'We collect information that identifies, relates to, describes, or could reasonably be linked, directly or indirectly, with you. This may include, but is not limited to:\n\n'),
              TextSpan(text: 'How We Use Your Information\n\n', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'Your information is used to:\n\n'),
              TextSpan(text: 'Sharing Your Information\n\n', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'We share information with:\n\n'),
              TextSpan(text: 'Data Subject Rights\n\n', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'Under the GDPR, you have the right to access, correct, delete, and restrict processing of your personal data. You also have the right to object to processing and the right to data portability.\n\n'),
              TextSpan(text: 'Data Security\n\n', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'We implement measures designed to secure your personal information from unauthorized access and use. However, no security measures are perfect, and we cannot guarantee the security of your personal information.\n\n'),
              TextSpan(text: 'International Transfers\n\n', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'Your information may be transferred to, and maintained on, computers located outside of your state, province, country, or other governmental jurisdiction where the data protection laws may differ from those of your jurisdiction.\n\n'),
              TextSpan(text: 'Changes to Our Privacy Statement\n\n', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'We may update our Privacy Statement from time to time. We will notify you of any changes by posting the new Privacy Statement on this page and updating the "Effective Date" at the top.\n\n'),
              TextSpan(text: 'Contact Information\n\n', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'For questions or comments about this Privacy Statement, or to exercise your rights, contact us at: [Your Contact Information].\n\n'),
            ],
          ),
        ),
      ),
    );
  }
}