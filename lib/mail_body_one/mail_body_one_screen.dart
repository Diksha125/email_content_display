import 'package:email_content_display/constants/launcher.dart';
import 'package:email_content_display/constants/space_between_widget.dart';
import 'package:email_content_display/constants/text_widget.dart';
import 'package:flutter/material.dart';

class MailBodyOneScreen extends StatefulWidget {
  const MailBodyOneScreen({super.key});

  @override
  State<MailBodyOneScreen> createState() => _MailBodyOneScreenState();
}

class _MailBodyOneScreenState extends State<MailBodyOneScreen> {
  URLaunch urLaunch = URLaunch();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 3),
                  child: Column(
                    children: [
                      logoWidget,
                      thankYouPurchase,
                      const SpaceBetweenWidget(height: 20),
                      orderSummary,
                      const SpaceBetweenWidget(height: 60),
                      customerInformation,
                    ],
                  ),
                ),
                const SpaceBetweenWidget(height: 20),
                Divider(
                  thickness: 1,
                  color: Colors.grey.shade300,
                  indent: 20,
                  endIndent: 20,
                ),
                const SpaceBetweenWidget(height: 20),
                contactus,
                const SpaceBetweenWidget(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget get logoWidget {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.network(
            'https://cdn.shopify.com/s/files/1/0569/6867/5527/files/finalised_logo_-_cropped.jpg?14393',
            height: 200,
            width: 180),
        const TextWidget(
          text: 'ORDER #226324',
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.grey,
        ),
      ],
    );
  }

  Widget get thankYouPurchase {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextWidget(
          text: 'Thank you for your purchase!',
          fontSize: 24,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        const TextWidget(
          text:
              'Hi Sparks, we\'re getting your order ready to be shipped. We will notify you when it has been sent.',
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.grey,
        ),
        const SpaceBetweenWidget(height: 20),
        Row(
          children: [
            ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(25.0)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(color: Colors.blue)))),
              onPressed: () => urLaunch.urlLaunch(
                  'https://happilo.com/56968675527/orders/ae104d7c6bab2bc032d5791a22c1007d'),
              child: const TextWidget(text: 'View your order', fontSize: 16),
            ),
            const SpaceBetweenWidget(width: 20),
            const TextWidget(text: 'or', fontSize: 16),
            const SpaceBetweenWidget(width: 5),
            GestureDetector(
              onTap: () => urLaunch.urlLaunch('https://happilo.com/'),
              child: const TextWidget(
                text: 'Visit our store',
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget get orderSummary {
    return Column(
      children: [
        ListTile(
          leading: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade200),
                borderRadius: const BorderRadius.all(Radius.circular(6))),
            child: Image.network(
              'https://cdn.shopify.com/s/files/1/0569/6867/5527/products/1v2_bf9e06f6-cd22-4209-a932-310a869534c0_compact_cropped.png?v=1632846589',
              height: 60,
              width: 60,
            ),
          ),
          title: const TextWidget(
            text: 'Happilo 100% Natural Premium California Almonds × 1',
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          subtitle: const TextWidget(
            text: '200g',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
          trailing: const TextWidget(
            text: '₹275.00',
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        Divider(
          thickness: 1,
          color: Colors.grey.shade300,
          indent: 20,
          endIndent: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Image.network(
                'https://cdn.shopify.com/s/files/1/0569/6867/5527/products/1v2_bf9e06f6-cd22-4209-a932-310a869534c0_compact_cropped.png?v=1632846589',
                height: 60,
                width: 60,
              ),
            ),
            Expanded(
              flex: 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SpaceBetweenWidget(height: 10),
                  orderTotal('Discount', '-₹18.75'),
                  orderTotal('Subtotal', '₹256.25'),
                  orderTotal('Shipping', '₹100.00'),
                  orderTotal('Taxes', '₹0.00'),
                  Divider(
                    thickness: 1,
                    color: Colors.grey.shade300,
                  ),
                  orderTotal('Total', '₹356.25'),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: TextWidget(
                      text: 'You saved ₹18.75',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget orderTotal(String label, String price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextWidget(
          text: label,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.grey,
        ),
        TextWidget(
          text: price,
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        )
      ],
    );
  }

  Widget get customerInformation {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: TextWidget(
            text: 'Customer information',
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 6,
              child: ListTile(
                title: TextWidget(
                  text: 'Shipping address',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                subtitle: TextWidget(
                  text:
                      'Sparks .\nSparksMonk Pvt Ltd, 649, 13th Cross,\n27th Main, HSR Sector 1, Bangalore 560102 \n560102 BANGALORE KA \nIndia',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: ListTile(
                title: TextWidget(
                  text: 'Billing address',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                subtitle: TextWidget(
                  text:
                      'Sparks .\nSparksMonk Pvt Ltd, 649, 13th Cross,\n27th Main, HSR Sector 1, Bangalore 560102 \n560102 BANGALORE KA \nIndia',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 6,
              child: ListTile(
                title: TextWidget(
                  text: 'Shipping method',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                subtitle: TextWidget(
                  text: 'Standard',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: ListTile(
                title: TextWidget(
                  text: 'Payment method',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                subtitle: TextWidget(
                  text: 'Shopflo',
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget get contactus {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const TextWidget(
          text:
              'If you have any questions, reply to this email or contact us at ',
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Colors.grey,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              // urLaunch.launched = urLaunch.openUrl('mailto: ${care@happilo.com}');
            });
          },
          child: const TextWidget(
            text: 'care@happilo.com',
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Colors.blueAccent,
          ),
        ),
      ],
    );
  }
}
