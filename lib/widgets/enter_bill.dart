import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../utils/providers.dart';
import '../utils/styles/colors.dart';

class EnterBillWidget extends ConsumerWidget {
  const EnterBillWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Enter bill total",
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 16,
              letterSpacing: 0.5,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 150,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                        color: textColor,
                        fontFamily: 'Karmilla',
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        letterSpacing: 0.5,
                      ),
                      onChanged: (value) {
                        ref.read(totalBillProvider.notifier).state =
                            double.tryParse(value) ?? 0.0;
                      },
                      decoration: const InputDecoration(
                        hintText: "59.46",
                        border: UnderlineInputBorder(),
                      ),
                      expands: false,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'ETB',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
