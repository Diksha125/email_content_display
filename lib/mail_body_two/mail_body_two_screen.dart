import 'package:email_content_display/constants/launcher.dart';
import 'package:email_content_display/constants/space_between_widget.dart';
import 'package:email_content_display/constants/text_widget.dart';
import 'package:flutter/material.dart';

class MailBodyTwoScreen extends StatefulWidget {
  const MailBodyTwoScreen({super.key});

  @override
  State<MailBodyTwoScreen> createState() => _MailBodyTwoScreenState();
}

class _MailBodyTwoScreenState extends State<MailBodyTwoScreen> {
  URLaunch urLaunch = URLaunch();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SpaceBetweenWidget(height: 20),
              card,
              const SpaceBetweenWidget(height: 20),
              contactus,
              const SpaceBetweenWidget(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget get card {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.height * 0.62, vertical: 20),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade200,
            style: BorderStyle.solid,
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            logo,
            Divider(
              thickness: 1,
              color: Colors.grey.shade300,
            ),
            orderShipped,
            const SpaceBetweenWidget(height: 20),
            Divider(
              thickness: 1,
              color: Colors.grey.shade300,
            ),
            shipmentDetails,
            Divider(
              thickness: 1,
              color: Colors.grey.shade300,
            ),
            itemOrdered,
            Divider(
              thickness: 1,
              color: Colors.grey.shade300,
            ),
            subTotal,
            Divider(
              thickness: 1,
              color: Colors.grey.shade300,
            ),
            orderTotal,
          ],
        ),
      ),
    );
  }

  Widget get logo {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.network(
          'https://static.hopscotch.in/logo.png',
          height: 45,
          width: 108,
        ),
      ),
    );
  }

  Widget get orderShipped {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextWidget(
            text: 'Order Shipped',
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.pink,
          ),
          const SpaceBetweenWidget(height: 20),
          const TextWidget(
            text: 'Dear PremierMonk,\n\n'
                'We are pleased to inform you that your Hopscotch order is on its way! We have packed it with care & couriered it.\n\n'
                'Request you to pay ₹169 to the courier associate visiting you.\n\n'
                'We look forward to seeing you again.',
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
          GestureDetector(
            onTap: () => urLaunch.urlLaunch(
                'https://www.hopscotch.in/moments/?utm_source=transactional&utm_medium=SMS&utm_campaign=Moments-Contest-SMS-25April&_branch_match_id=1141564550872625706&_branch_referrer=H4sIAAAAAAAAA8soKSkottLXz8gvKE7OL0nO0EssKNDLyczL1k8LDfMPSInMcnEGAJxz648lAAAA'),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.network(
                'https://static.hopscotch.in/moments_banner.gif',
                width: 540,
                height: 165,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget get shipmentDetails {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextWidget(
                  text: 'SHIPMENT DETAILS',
                  fontSize: 14,
                  color: Colors.grey,
                ),
                const SpaceBetweenWidget(height: 10),
                const TextWidget(
                  text: 'Tracking ID: SF321527154HO',
                  fontSize: 16,
                ),
                const TextWidget(
                  text: 'Sent through: Shadowfax',
                  fontSize: 16,
                ),
                const SpaceBetweenWidget(height: 10),
                ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.all(25.0)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.pink),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                              side: BorderSide(color: Colors.pink)))),
                  onPressed: () => urLaunch.urlLaunch('https://hopscotch.clickpost.in/?cp_id=9&waybill=SF321527154HO'),
                  child: const TextWidget(text: 'TRACK SHIPMENT', fontSize: 16),
                ),
                const SpaceBetweenWidget(height: 20),
                const TextWidget(
                  text:
                      '*Please note that tracking ID may take up to 24 hours to get activated.',
                  fontSize: 14,
                ),
                const SpaceBetweenWidget(height: 20),
              ],
            ),
          ),
          const Expanded(
            flex: 6,
            child: Padding(
              padding: EdgeInsets.only(left: 100.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: 'SHIPPED TO',
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  SpaceBetweenWidget(height: 10),
                  TextWidget(
                    text: 'PremierMonk\n'
                        'PremierMonk Pvt Ltd, 649, 13th Cross, 27th Main, mrk Sector 1, Bangalore 560102'
                        '\nBangalore, Karnataka\n560102\n9886158353',
                    fontSize: 16,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget get itemOrdered {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            'https://static.hopscotch.in/fstatic/product/201509/9b64cc3b-8ec9-450a-b2d7-4a5db398a62a_medium.jpg?version=1441100135058',
            width: 106,
            height: 106,
          ),
          const TextWidget(
            text:
                'Cutest Princess Pink Glitter Slippers On\nAlligator Clip\nQty: 1',
            fontSize: 14,
          ),
          const TextWidget(
            text: '₹69.0',
            fontSize: 14,
          )
        ],
      ),
    );
  }

  Widget get subTotal {
    return const Row(
      children: [
        Expanded(flex: 7, child: SizedBox()),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: 'Subtotal',
                  fontSize: 14,
                ),
                TextWidget(
                  text: '₹69.0',
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget get orderTotal {
    return const Row(
      children: [
        Expanded(flex: 7, child: SizedBox()),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                      text: 'Subtotal',
                      fontSize: 14,
                    ),
                    TextWidget(
                      text: '₹69.0',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                      text: 'Subtotal',
                      fontSize: 14,
                    ),
                    TextWidget(
                      text: '₹69.0',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget get contactus {
    return GestureDetector(
      onTap: () => urLaunch.urlLaunch('https://www.hopscotch.in/helpcenter/#/contact_us'),
      child: Image.network(
        'https://static.hopscotch.in/help_email_banner.jpg',
        height: 80,
        width: 600,
        color: Colors.transparent,
      ),
    );
  }
}
