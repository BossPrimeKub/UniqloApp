import 'package:flutter/material.dart';
import 'model/uniqlo.dart';

class UniqloDetail extends StatefulWidget {
  final Uniqlo product;

  const UniqloDetail({
    super.key,
    required this.product,
  });

  @override
  State<UniqloDetail> createState() => _UniqloDetailState();
}

class _UniqloDetailState extends State<UniqloDetail> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    final int totalPrice = widget.product.price * quantity;

    return Scaffold(
      appBar: AppBar(
        title: const Text('UNIQLO'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // รูปสินค้า
              Image.asset(
                widget.product.imgUrl,
                width: double.infinity,
                height: 260,
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 16),

              // ชื่อสินค้า
              Text(
                widget.product.name,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              // ราคาต่อชิ้น
              Text(
                '฿${widget.product.price} / piece',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 6),

              // ราคารวม (เปลี่ยนตาม Slider)
              Text(
                'Total: ฿$totalPrice',
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              // รายละเอียด
              Text(
                widget.product.description,
                style: const TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 24),

              // จำนวน
              Text(
                'Quantity: $quantity',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Slider(
                min: 1,
                max: 10,
                divisions: 9,
                label: quantity.toString(),
                value: quantity.toDouble(),
                onChanged: (value) {
                  setState(() {
                    quantity = value.toInt();
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
