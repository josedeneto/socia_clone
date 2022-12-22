// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:socia_clone/core/app_colors.dart';
import 'package:socia_clone/core/app_typography.dart';

import 'package:socia_clone/pages/home_page/components/item_tile.dart';
import 'package:socia_clone/repositories/category_repository.dart';
import 'package:socia_clone/repositories/item_repository.dart';

import 'components/category_tile.dart';
import 'components/section.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  final _itemRepository = ItemRepository();
  final categoryRepository = CategoryRepository();
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(245),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    padding: const EdgeInsets.only(left: 12, top: 0, right: 12),
                    margin: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Endereço de entrega',
                                style:
                                    AppTypography.locationAdressText(context),
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      const Icon(Icons.location_on_outlined,
                                          color: AppColors.primaryColor,
                                          size: 20),
                                      Text(
                                        'Morro bento, gamek',
                                        style: AppTypography.myLocationTet(
                                            context),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  const Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    size: 16,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 70,
                          padding: const EdgeInsets.only(
                              top: 20, left: 10, right: 10),
                          child: Stack(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: const [
                                  Icon(
                                    Icons.shopping_cart_outlined,
                                    size: 25,
                                  ), SizedBox(width: 3,),
                                  Icon(
                                    Icons.notifications_none_rounded,
                                    size: 25,
                                  )
                                ],
                              ),
                              Positioned(
                                bottom: 40,
                                right: 2,
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  alignment: Alignment.center,
                                  width: 9,
                                  height: 9,
                                  decoration: const BoxDecoration(
                                      color: AppColors.red,
                                      shape: BoxShape.circle),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 6, right: 6),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 45,
                      child: TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          filled: true,
                          hintText: 'O que voce deseja...',
                          hintStyle: const TextStyle(
                              fontSize: 13,
                              color: AppColors.defaultGreyShade500),
                          prefixIcon: const Icon(
                            Icons.search_rounded,
                            size: 25,
                            color: AppColors.defaultGreyShade500,
                          ),
                          suffixIcon: const Icon(
                            Icons.tune_rounded,
                            size: 25,
                            color: AppColors.defaultGreyShade500,
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(25)),
                        ),
                      ),
                    ),
                  ),
                  //CATEGORY TILE
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.only(left: 8, top: 10),
                    height: 40,
                    child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, item) {
                          final category = categoryRepository.categories;
                          return CategoryTile(
                            nameCategory: category[item].name,
                            isSelected: category[item].isSelected,
                          );
                        },
                        separatorBuilder: (_, i) => const SizedBox(
                              width: 10,
                            ),
                        itemCount: categoryRepository.categories.length),
                  ),
const SizedBox(height: 10,),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                      const  Text('Explore os produtos',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white, fontSize: 11)),
                                                const SizedBox(height: 15,),
                                      const  Text('O papá Noel chegou cedo',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 16,
                                                color: Colors.white),),
                                                const SizedBox(height:5),
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
                                                color: Colors.white, fontSize: 11),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                 const Expanded(flex: 4, child: Image(image: AssetImage('assets/images/clients/1.png'), fit: BoxFit.cover,))
                                ],
                              ),
                            ),
                            color: AppColors.defaultBlue,
                          ),

                          
                          
                        ),
                        //second item scroll
                          SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                      const  Text('Explore os produtos',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white, fontSize: 11)),
                                                const SizedBox(height: 15,),
                                      const  Text('Há preços surpreendentes',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 16,
                                                color: Colors.white),),
                                                const SizedBox(height:5),
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
                                                color: Colors.white, fontSize: 11),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                 const Expanded(flex: 4, child: Image(image: AssetImage('assets/images/clients/3.png'), fit: BoxFit.cover,))
                                ],
                              ),
                            ),
                            color: AppColors.pinkShade700,
                          ),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),
                  Section(
                      titleSection: 'Produtos recentes',
                      subtitleSection: 'As melhores promoções do mercado',
                      onTap: () {},
                      showAll: 'Ver todos'),

                  //Recents products
                  Row(mainAxisSize: MainAxisSize.min, children: [
                    Flexible(
                      child: SizedBox(
                        height: 200.0,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: _itemRepository.itemDataRecents.length,
                          itemBuilder: (_, int index) {
                            return ItemTile(
                              item: _itemRepository.itemDataRecents[index],
                            );
                          },
                        ),
                      ),
                    ),
                  ]),

                  const SizedBox(height: 20),
                  Section(
                    titleSection: 'Todos os produtos',
                    subtitleSection: 'Tenha o poder de fazer uma compra',
                    onTap: () {},
                    showAll: 'Ver todos',
                  ),
                  //all products
                  Row(mainAxisSize: MainAxisSize.min, children: [
                    Flexible(
                      child: SizedBox(
                        height: 200.0,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: _itemRepository.itemData.length,
                          itemBuilder: (_, int index) {
                            return ItemTile(
                              item: _itemRepository.itemData[index],
                            );
                          },
                        ),
                      ),
                    ),
                  ]),

                  const SizedBox(height: 20),
                  Section(
                      titleSection: 'Promoções',
                      subtitleSection: 'As melhores promoções do mercado',
                      onTap: () {},
                      showAll: 'Ver todas'),
                  //promoçoes
                  Row(mainAxisSize: MainAxisSize.min, children: [
                    Flexible(
                      child: SizedBox(
                        height: 200.0,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: _itemRepository.itemDataPromotion.length,
                          itemBuilder: (_, int index) {
                            return ItemTile(
                              item: _itemRepository.itemDataPromotion[index],
                            );
                          },
                        ),
                      ),
                    ),
                  ]),
                  //sócias da semana
                  const SizedBox(height: 20),
                  Section(
                      titleSection: 'Sócia da semana',
                      subtitleSection: 'Esteja a par de todos os produtos',
                      onTap: () {},
                      showAll: 'Ver todos'),
                  //semanal sócia
                  Row(mainAxisSize: MainAxisSize.min, children: [
                    Flexible(
                      child: SizedBox(
                        height: 200.0,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: _itemRepository.itemData.length,
                          itemBuilder: (_, int index) {
                            return ItemTile(
                              item: _itemRepository.itemData[index],
                            );
                          },
                        ),
                      ),
                    ),
                  ])
                ],
              ),
            ),
            Positioned(
              top: 50,
              left: 2,
              right: 2,
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: BottomNavigationBar(
                          selectedLabelStyle: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 12),
                          elevation: 4,
                          backgroundColor: AppColors.white,
                          iconSize: 30,
                          unselectedItemColor: AppColors.defaultGreyShade500,
                          type: BottomNavigationBarType.fixed,
                          items: const [
                            BottomNavigationBarItem(
                                icon: Icon(Icons.ballot_outlined),
                                label: 'Produtos'),
                            BottomNavigationBarItem(
                                icon: Icon(Icons.receipt_long_rounded),
                                label: 'Minhas lista'),
                            BottomNavigationBarItem(
                                icon: Icon(Icons.person_outline_rounded),
                                label: 'Conta'),
                          ]),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
