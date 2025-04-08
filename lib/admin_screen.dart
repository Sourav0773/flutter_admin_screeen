import 'package:flutter/material.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() {
    return AdminScreenState();
  }
}

class AdminScreenState extends State<AdminScreen> {
  bool notificationOFF = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.menu, size: 28),
                      const Text(
                        'Admin Dashboard',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          notificationOFF
                              ? Icons.notifications_none_outlined
                              : Icons.notifications,
                          color: notificationOFF ? null : Colors.red,
                          size: 28,
                        ),
                        onPressed: () {
                          setState(() {
                            notificationOFF = !notificationOFF;
                          });
                        },
                      ),
                      CircleAvatar(
                        backgroundColor: const Color.fromARGB(
                          255,
                          210,
                          191,
                          237,
                        ),
                        radius: 22,
                        child: Center(
                          child: const Text(
                            'SP',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(right: 52),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Welcome back, Admin!',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "Here's what's happening with your store today.",
                          style: TextStyle(
                            color: Color.fromARGB(255, 126, 125, 125),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      StatusCards(
                        statusName: 'Products',
                        icon: const Icon(Icons.shopping_bag),
                        parameters: '234',
                        iconColor: Colors.blue,
                        bgColor: const Color.fromARGB(255, 232, 236, 239),
                      ),
                      const SizedBox(width: 20),
                      StatusCards(
                        statusName: 'Orders',
                        icon: const Icon(Icons.receipt_long),
                        parameters: '89',
                        iconColor: Colors.green,
                        bgColor: const Color.fromARGB(255, 228, 240, 229),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      StatusCards(
                        statusName: 'Customers',
                        icon: const Icon(Icons.people),
                        parameters: '1,254',
                        iconColor: Colors.orange,
                        bgColor: const Color.fromARGB(255, 247, 236, 221),
                      ),
                      const SizedBox(width: 20),
                      StatusCards(
                        statusName: 'Revenue',
                        icon: const Icon(Icons.money),
                        parameters: '₹2.8L',
                        iconColor: Colors.purple,
                        bgColor: const Color.fromARGB(255, 242, 226, 245),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Recently Added Products',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 35),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        AddedProducts(
                          mainText: 'W',
                          productName: 'Headphones(Wired)',
                          productType: 'Electronics',
                          price: '₹2333',
                          inStock: 'in Stock',
                          inStockColor: const Color.fromARGB(255, 72, 181, 76),
                          background: const Color.fromARGB(255, 218, 239, 218),
                        ),
                        AddedProducts(
                          mainText: 'S',
                          productName: 'Smartphone X',
                          productType: 'Electronics',
                          price: '₹15,000',
                          inStock: 'in Stock',
                          inStockColor: const Color.fromARGB(255, 72, 181, 76),
                          background: const Color.fromARGB(255, 218, 239, 218),
                        ),
                        AddedProducts(
                          mainText: 'R',
                          productName: 'Running Shoes',
                          productType: 'Sports',
                          price: '₹4999',
                          inStock: 'out of Stock',
                          inStockColor: Colors.red,
                          background: const Color.fromARGB(255, 233, 203, 201),
                        ),
                        AddedProducts(
                          mainText: 'i',
                          productName: 'iPhone 20 pro',
                          productType: 'Electronics',
                          price: '₹1,20,00',
                          inStock: 'in Stock',
                          inStockColor: const Color.fromARGB(255, 72, 181, 76),
                          background: const Color.fromARGB(255, 218, 239, 218),
                        ),
                        AddedProducts(
                          mainText: 'N',
                          productName: 'Nivo Trimmer',
                          productType: 'Electronics',
                          price: '₹7999',
                          inStock: 'out of Stock',
                          inStockColor: Colors.red,
                          background: const Color.fromARGB(255, 233, 203, 201),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 345,
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 66, 80, 233),
              ),
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}

class StatusCards extends StatelessWidget {
  final String statusName;
  final Icon icon;
  final String parameters;
  final Color iconColor;
  final Color bgColor;
  const StatusCards({
    super.key,
    required this.statusName,
    required this.icon,
    required this.parameters,
    required this.iconColor,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(1, 1),
            blurRadius: 7,
            color: const Color.fromARGB(255, 232, 230, 230),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  statusName,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 10),
                CircleAvatar(
                  radius: 22,
                  backgroundColor: bgColor,
                  child: Center(child: Icon(icon.icon, color: iconColor)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              parameters,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class AddedProducts extends StatelessWidget {
  final String mainText;
  final String productName;
  final String productType;
  final String price;
  final String inStock;
  final Color inStockColor;
  final Color background;

  const AddedProducts({
    super.key,
    required this.mainText,
    required this.productName,
    required this.productType,
    required this.price,
    required this.inStock,
    required this.inStockColor,
    required this.background,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 450,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: const Color.fromARGB(255, 230, 227, 227),
            width: 1.5,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 62,
              width: 62,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: const Color.fromARGB(255, 229, 226, 226),
              ),
              child: Center(
                child: Text(
                  mainText,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(productType, style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  price,
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 30,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: background,
                  ),
                  child: Center(
                    child: Text(
                      inStock,
                      style: TextStyle(
                        color: inStockColor,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
