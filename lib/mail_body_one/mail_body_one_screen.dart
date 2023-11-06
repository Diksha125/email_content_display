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
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Column(
                children: [
                  //logo widget
                  logoWidget,

                  // Thank you for your purchase text Widget
                  thankYouPurchase,
                  const SpaceBetweenWidget(height: 20),

                  // Order Summary Widget
                  orderSummary,
                  const SpaceBetweenWidget(height: 20),

                  //customer information Widget
                  customerInformation,
                ],
              ),
              const SpaceBetweenWidget(height: 10),
              Divider(
                thickness: 1,
                color: Colors.grey.shade300,
              ),
              const SpaceBetweenWidget(height: 20),

              //contact us Widget
              contactus,
              const SpaceBetweenWidget(height: 20),
            ],
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
            height: 100,
            width: 150),
        const TextWidget(
          text: 'ORDER #226324',
          fontSize: 14,
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
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        const TextWidget(
          text:
              'Hi Sparks, we\'re getting your order ready to be shipped. We will notify you when it has been sent.',
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: Colors.grey,
        ),
        const SpaceBetweenWidget(height: 20),
        Row(
          children: [
            ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(16.0)),
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
              child: const TextWidget(text: 'View your order', fontSize: 14),
            ),
            const SpaceBetweenWidget(width: 10),
            const TextWidget(text: 'or ', fontSize: 14),
            GestureDetector(
              onTap: () => urLaunch.urlLaunch('https://happilo.com/'),
              child: const TextWidget(
                text: 'Visit our store',
                fontSize: 14,
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextWidget(
          text: 'Order Summary',
          fontSize: 16,
        ),
        const SpaceBetweenWidget(width: 20),
        ListTile(
          leading: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade200),
                borderRadius: const BorderRadius.all(Radius.circular(6))),
            child: Image.network(
              'https://cdn.shopify.com/s/files/1/0569/6867/5527/products/1v2_bf9e06f6-cd22-4209-a932-310a869534c0_compact_cropped.png?v=1632846589',
              height: 100,
              width: 70,
            ),
          ),
          title: const TextWidget(
            text: 'Happilo 100% Natural Premium California Almonds × 1',
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          subtitle: const TextWidget(
            text: '200g',
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
          trailing: const TextWidget(
            text: '₹275.00',
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        Divider(
          thickness: 1,
          color: Colors.grey.shade300,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
              flex: 6,
              child: SizedBox(
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
                      fontSize: 12,
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
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.grey,
        ),
        TextWidget(
          text: price,
          fontSize: 12,
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
            fontSize: 16,
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
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                subtitle: TextWidget(
                  text:
                      'Sparks .\nSparksMonk Pvt Ltd, 649, 13th Cross,\n27th Main, HSR Sector 1, Bangalore 560102 \n560102 BANGALORE KA \nIndia',
                  fontSize: 12,
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
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                subtitle: TextWidget(
                  text:
                      'Sparks .\nSparksMonk Pvt Ltd, 649, 13th Cross,\n27th Main, HSR Sector 1, Bangalore 560102 \n560102 BANGALORE KA \nIndia',
                  fontSize: 12,
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
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                subtitle: TextWidget(
                  text: 'Standard',
                  fontSize: 12,
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
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                subtitle: TextWidget(
                  text: 'Shopflo',
                  fontSize: 12,
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
    return const Text.rich(
      TextSpan(
          text:
              'If you have any questions, reply to this email or contact us at ',
          children: <InlineSpan>[
            TextSpan(
              text: 'care@happilo.com',
              style: TextStyle(fontSize: 12, color: Colors.blue),
            )
          ]),
    );
  }
}
