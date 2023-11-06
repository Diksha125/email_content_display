import 'package:email_content_display/constants/launcher.dart';
import 'package:email_content_display/constants/space_between_widget.dart';
import 'package:email_content_display/constants/text_widget.dart';
import 'package:flutter/material.dart';

class MailBodyThreeScreen extends StatefulWidget {
  const MailBodyThreeScreen({super.key});

  @override
  State<MailBodyThreeScreen> createState() => _MailBodyThreeScreenState();
}

class _MailBodyThreeScreenState extends State<MailBodyThreeScreen> {
  URLaunch urLaunch = URLaunch();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //logo Widget
              logo,

              //Thank you text Widget
              thankYou,

              //Registered Address Widget
              registeredAdd,

              //Order here details Widget
              hereOrder,

              //Images to view details Widget
              onClickImages,

              //Contact us Widget
              connectWithUs,
            ],
          ),
        ),
      ),
    );
  }

  Widget get logo {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 20),
      width: double.infinity,
      color: Colors.black,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Image.network(
          'https://cdn.shopify.com/s/files/1/0997/6284/files/noise_logo_white.png?v=1588831048',
          height: 47,
        ),
      ),
    );
  }

  Widget get thankYou {
    return const Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            text: 'THANK YOU FOR PLACING YOUR ORDER WITH US.',
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          SpaceBetweenWidget(height: 10),
          TextWidget(
            text: 'Your order number: 2343881 has been confirmed.',
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          SpaceBetweenWidget(height: 20),
          TextWidget(
            text: 'NOTE:',
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          SpaceBetweenWidget(height: 10),
          TextWidget(
            text:
                'Please be aware that if your address lies within a designated COVID-19 containment and under lockdown zone, Noise will only be able to deliver your order as soon as government regulations allow.',
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          SpaceBetweenWidget(height: 20),
        ],
      ),
    );
  }

  Widget get registeredAdd {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      color: Colors.grey.shade100,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            text: 'REGISTERED ADDRESS:',
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          TextWidget(
            text:
                'Mesh ., MeshMonk Pvt Ltd, 649, 13th Cross, 27th Main, HSR Sector 1, Bangalore 560102, BANGALORE, Karnataka, 560102, India',
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }

  Widget get hereOrder {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextWidget(
            text: 'Here\'s your order:',
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
          Center(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: Expanded(
                child: Table(
                  columnWidths: const {
                    0: FlexColumnWidth(2),
                    1: FlexColumnWidth(6),
                    2: FlexColumnWidth(3),
                    3: FlexColumnWidth(3),
                  },
                  border: TableBorder.all(color: Colors.grey.shade300),
                  children: const [
                    TableRow(
                      children: [
                        Row(
                          children: [
                            SpaceBetweenWidget(width: 5),
                            Expanded(
                              child: TextWidget(
                                text: 'Item',
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SpaceBetweenWidget(width: 5),
                            Expanded(
                              child: TextWidget(
                                text: 'Name',
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SpaceBetweenWidget(width: 5),
                            Expanded(
                              child: TextWidget(
                                text: 'Quantity',
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SpaceBetweenWidget(width: 5),
                            Expanded(
                              child: TextWidget(
                                text: 'Price',
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Row(
                          children: [
                            SpaceBetweenWidget(width: 5),
                            TextWidget(
                              text: '1',
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SpaceBetweenWidget(width: 5),
                            Expanded(
                              child: TextWidget(
                                text:
                                    'Noise Nerve Neckband Earphones with Mic - Cobalt Blue',
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SpaceBetweenWidget(width: 5),
                            Expanded(
                              child: TextWidget(
                                text: '1',
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SpaceBetweenWidget(width: 5),
                            Expanded(
                              child: TextWidget(
                                text: 'Rs. 999.00',
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextWidget(
                text: 'Total: ',
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              TextWidget(text: 'Rs.999.0', fontSize: 12),
            ],
          )
        ],
      ),
    );
  }

  Widget get onClickImages {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: GestureDetector(
            onTap: () => urLaunch
                .urlLaunch('https://www.gonoise.com/collections/smart-watches'),
            child: Image.network(
              'https://cdn.shopify.com/s/files/1/0997/6284/files/Noise-Smart-watch-Emailer.png?v=1618995912',
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SpaceBetweenWidget(height: 20),
        Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () => urLaunch.urlLaunch(
                'https://www.gonoise.com/collections/wireless-audio'),
            child: Image.network(
              'https://cdn.shopify.com/s/files/1/0997/6284/files/Noise-Smart-Audio-Emailer-Category_2_1.png?v=1617199844',
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }

  Widget get connectWithUs {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      color: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextWidget(
            text:
                'We will let you know as soon as your order is shipped. In the meantime, if there’s anything we can help you with, just fill out a form HERE and we’ll get right back to you! We’re available from 9:30AM to 6:00PM from Monday to Saturday.'
                '\n\nStay safe and thank you for your patience.',
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          const SpaceBetweenWidget(height: 30),
          const TextWidget(
            text: 'Please Note:',
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          const TextWidget(
            text:
                'Noise or its employees will never contact you with any special offers including lucky draws, lotteries or exclusive prizes. Please do not share your personal or bank account details over the phone or via email to stay protected against any kind of fraudulent deals.',
            fontSize: 10,
          ),
          const SpaceBetweenWidget(height: 20),
          Divider(
            thickness: 1,
            color: Colors.grey.shade300,
          ),
          const SpaceBetweenWidget(height: 10),
          const Center(
            child: TextWidget(
              text: 'CONNECT WITH US',
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SpaceBetweenWidget(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () =>
                    urLaunch.urlLaunch('https://www.facebook.com/gonoise/'),
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.network(
                    'https://cdn.shopify.com/s/files/1/0997/6284/files/fb_icon_png_480921.png?46198',
                  ),
                ),
              ),
              GestureDetector(
                onTap: () =>
                    urLaunch.urlLaunch('https://www.instagram.com/go_noise/'),
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.network(
                    'https://cdn.shopify.com/s/files/1/0997/6284/files/instagram-Logo-PNG-Transparent-Background-download-768x768.png?46198',
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => urLaunch.urlLaunch('https://twitter.com/gonoise'),
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.network(
                    'https://cdn.shopify.com/s/files/1/0997/6284/files/logo-twitter-transparent-background-10.png?46198',
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => urLaunch.urlLaunch(
                    'https://www.youtube.com/channel/UCF9puX2jalk1fh14ns_npMw'),
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.network(
                    'https://cdn.shopify.com/s/files/1/0997/6284/files/youtube_PNG15.png?46198',
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => urLaunch
                    .urlLaunch('https://www.linkedin.com/company/gonoise-com/'),
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.network(
                    'https://cdn.shopify.com/s/files/1/0997/6284/files/linkedin-linkedin-button-social-media-icon-png-pictures-7.png?46198',
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
