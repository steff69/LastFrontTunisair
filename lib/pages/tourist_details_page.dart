import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class TouristDetailsPage extends StatelessWidget {
  const TouristDetailsPage({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(10),
                children: [
                  SizedBox(
                    height: size.height * 0.38,
                    width: double.maxFinite,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.vertical(
                                bottom: Radius.circular(20)),
                            image: DecorationImage(
                              image: AssetImage(image),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.4),
                                spreadRadius: 0,
                                blurRadius: 20,
                                offset: const Offset(0, 10),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 10,
                          left: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.7),
                              borderRadius: const BorderRadius.horizontal(
                                  right: Radius.circular(15)),
                            ),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  iconSize: 20,
                                  icon: const Icon(Ionicons.chevron_back),
                                ),
                                IconButton(
                                  iconSize: 20,
                                  onPressed: () {},
                                  icon: const Icon(Ionicons.heart_outline),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sea of Peace",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Portic Team 8km",
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: IconButton(
                          onPressed: () {},
                          iconSize: 20,
                          icon:
                              const Icon(Ionicons.chatbubble_ellipses_outline),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "4.6",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Icon(
                            Ionicons.star,
                            color: Colors.yellow[800],
                            size: 15,
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  const SizedBox(height: 10),
                  Text(
                    'he sky above is a brilliant blue, dotted with fluffy, white clouds that drift lazily in the gentle breeze. In the distance, majestic mountains rise, their peaks kissed by the golden rays of the setting sun, casting a warm, amber glow over the landscape.A crystal-clear river winds through the valley, its waters sparkling like diamonds in the sunlight. Along the riverbanks, wildflowers bloom in a riot of colors—vivid purples, yellows, and pinks—that sway gently in the wind, filling the air with a sweet, delicate fragrance. Birds chirp melodiously from the trees, their songs harmonizing with the soft rustle of leaves and the distant sound of a waterfall cascading over smooth stones.',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 8.0,
                  ),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: const Text(
                  "check more details",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
