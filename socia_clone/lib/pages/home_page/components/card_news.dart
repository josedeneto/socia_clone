
import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';

class CardNews extends StatelessWidget {
  const CardNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 180,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment:
                            MainAxisAlignment.start,
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          const Text('Explore os produtos',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 11)),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'O papá Noel chegou cedo',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 5),
                          Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius:
                                    BorderRadius.circular(20)),
                            child: const Text(
                              'Ver mais',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 11,),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Expanded(
                        flex: 4,
                        child: Image(
                          image: AssetImage(
                              'assets/images/clients/1.png'),
                          fit: BoxFit.cover,
                        ))
                  ],
                ),
              ),
              color: AppColors.defaultBlue,
            ),
          ),
          //second item scroll
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 180,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment:
                            MainAxisAlignment.start,
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          const Text('Explore os produtos',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 11)),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Fiquei de boca aberta',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 5),
                          Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius:
                                    BorderRadius.circular(20)),
                            child: const Text(
                              'Ver mais',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 11),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Expanded(
                        flex: 4,
                        child: Image(
                          image: AssetImage(
                              'assets/images/clients/3.png'),
                          fit: BoxFit.cover,
                        ))
                  ],
                ),
              ),
              color: AppColors.pinkShade700,
            ),
          )
        ],
      ),
    );
  }
}
