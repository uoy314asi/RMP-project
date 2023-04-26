import 'package:flutter/material.dart';
import 'package:ninebot_app/components/card.dart';
import 'package:ninebot_app/models/card_model.dart';
import 'package:ninebot_app/utils/styles.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<BndCard> cards = [
      BndCard('assets/images/card-1.png', 'Передняя Подцветка', 20000),
      BndCard('assets/images/card-2.png', 'Аэродинамическое крыло', 50000),
      BndCard('assets/images/card-3.png', 'Металлические', 90000),
      BndCard('assets/images/card-4.png', 'Боковое крыло', 15000),
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 52),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Доп.Тюнинг', style: h2),
          const SizedBox(height: 13),
          SizedBox(
            height: 160,
            child: ListView.builder(
              itemCount: cards.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                var card = cards[index];

                return BundleCard(
                    image: card.image, name: card.name, price: card.price);
              },
            ),
          )
        ],
      ),
    );
  }
}
