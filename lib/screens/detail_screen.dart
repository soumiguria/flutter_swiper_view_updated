import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  final Color color;
  final String balance;
  final String username;

  const WalletCard({
    required this.color,
    required this.balance,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.all(16),
      width: 300,
      height: 180,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.8),
                ),
                child: ClipOval(
                  child: Container(
                    width: 24,
                    height: 24,
                    child: Image.asset(
                      'assets/star-struck.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Business',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    username,
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
              Spacer(),
              Icon(
                Icons.more,
                color: Colors.white,
              ),
            ],
          ),
          Spacer(),
          Text(
            'Total Balance',
            style: TextStyle(color: Colors.white70, fontSize: 12),
          ),
          Text(
            balance,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
