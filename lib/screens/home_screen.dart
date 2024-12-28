import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'dart:ui';

import 'package:task/screens/detail_screen.dart';

class WalletScreen extends StatelessWidget {
  final List<WalletCard> wallets = [
    WalletCard(
      color: Color(0xFF2071EE),
      balance: '\$324.00',
      username: 'aj_22',
    ),
    WalletCard(
      color: Color(0xFF58BB47),
      balance: '\$500.00',
      username: 'aj_22',
    ),
    WalletCard(
      color: Color(0xFFFFAD29),
      balance: '\$100.00',
      username: 'aj_22',
    ),
    WalletCard(
      color: Color(0xFFFA7AA2),
      balance: '\$100.00',
      username: 'aj_22',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(
              'assets/image 238.png',
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Ai_22',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('BALANCE',
                    style: TextStyle(color: Colors.grey, fontSize: 12)),
                Text(
                  '\$1582.2',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Choose Wallet',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(Icons.account_balance_wallet, color: Colors.black),
                        SizedBox(width: 16),
                        Icon(Icons.wallet_membership, color: Colors.black),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Swiper(
                      itemWidth: 400,
                      itemHeight: 200,
                      loop: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onLongPress: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                                  child: Dialog(
                                    backgroundColor: Colors.transparent,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        WalletCard(
                                          color: wallets[index].color,
                                          balance: wallets[index].balance,
                                          username: wallets[index].username,
                                        ),
                                        SizedBox(height: 32),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.wallet,
                                                color: Colors.white, size: 20),
                                            SizedBox(width: 8),
                                            Text(
                                              'Wallet Settings',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 32),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.palette,
                                                color: Colors.white, size: 20),
                                            SizedBox(width: 8),
                                            Text(
                                              'Customise Wallet',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 32),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.search,
                                                color: Colors.white, size: 20),
                                            SizedBox(width: 8),
                                            Text(
                                              'Open Wallet',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 32),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text(
                                            'Cancel',
                                            style: TextStyle(color: Colors.red),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: wallets[index],
                        );
                      },
                      itemCount: wallets.length,
                      layout: SwiperLayout.STACK,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 120,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                color: Colors.transparent,
                padding: EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.swipe, color: Colors.grey, size: 18),
                      ),
                      TextSpan(
                        text: ' Long Press ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      TextSpan(
                        text: 'on Wallets to open Wallet info',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.blueGrey[50],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                icon: Icon(
                  Icons.add_circle,
                  color: Colors.black,
                  size: 32,
                ),
                label: Text('Create / Import wallet',
                    style: TextStyle(color: Colors.black)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
