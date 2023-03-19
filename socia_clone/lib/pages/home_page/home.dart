import 'package:flutter/material.dart';
import 'package:socia_clone/core/app_colors.dart';

import 'package:socia_clone/pages/home_page/components/item_tile.dart';
import 'package:socia_clone/repositories/category_repository.dart';
import 'package:socia_clone/repositories/item_repository.dart';

import 'components/actions_buttons.dart';
import 'components/card_news.dart';
import 'components/category_list.dart';
import 'components/delivery_address.dart';
import 'components/search_bar.dart';
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
                      children: const [
                        DeliveryAddress(),
                        ActionButtons(),
                      ],
                    ),
                  ),
                  const SearchBar(),
                  CategoryList(categoryRepository: categoryRepository),
                  const SizedBox(height: 10),
                  const CardNews(),

                  const SizedBox(height: 10),
                  Section(
                    titleSection: 'Produtos recentes',
                    subtitleSection: 'As melhores promoções do mercado',
                    onTap: () {},
                    showAll: 'Ver todos',
                  ),

                  //Recents products
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
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
                    ],
                  ),

                  const SizedBox(height: 20),
                  Section(
                    titleSection: 'Todos os produtos',
                    subtitleSection: 'Tenha o poder de fazer uma compra',
                    onTap: () {},
                    showAll: 'Ver todos',
                  ),
                  //all products
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
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
                    ],
                  ),

                  const SizedBox(height: 20),
                  Section(
                    titleSection: 'Promoções',
                    subtitleSection: 'As melhores promoções do mercado',
                    onTap: () {},
                    showAll: 'Ver todas',
                  ),
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
                    showAll: 'Ver todos',
                  ),
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
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                        ),
                        elevation: 4,
                        backgroundColor: AppColors.white,
                        iconSize: 30,
                        unselectedItemColor: AppColors.defaultGreyShade500,
                        type: BottomNavigationBarType.fixed,
                        items: const [
                          BottomNavigationBarItem(
                            icon: Icon(Icons.ballot_outlined),
                            label: 'Produtos',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(Icons.receipt_long_rounded),
                            label: 'Minha lista',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(Icons.person_outline_rounded),
                            label: 'Conta',
                          ),
                        ],
                      ),
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
