import 'package:blocks/config/routes/routes_names.dart';
import 'package:blocks/features/store/presentation/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_null_safety_icons/flutter_icons.dart';
import 'package:go_router/go_router.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  final List<String> _productsTypes = <String>[
    'Tous',
    'Briques',
    'Pavés',
    'Ballustres',
    'Carreaux',
  ];

  @override
  void initState() {
    _tabController = TabController(
      length: _productsTypes.length,
      vsync: this,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Magasin',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FlutterIcons.search1_ant,
              color: Colors.white,
            ),
          ),
          Badge(
            backgroundColor: Colors.white,
            label: const Text(
              '2',
              style: TextStyle(color: Colors.black),
            ),
            child: IconButton(
              onPressed: () => context.pushNamed(RoutesNames.cart),
              icon: const Icon(
                FlutterIcons.shopping_bag_fea,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                      width: double.infinity,
                      height: 160,
                      decoration: const BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TabBar(
                      controller: _tabController,
                      isScrollable: true,
                      indicator: const BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.all(Radius.circular(32)),
                      ),
                      indicatorSize: TabBarIndicatorSize.label,
                      dividerColor: Colors.transparent,
                      tabAlignment: TabAlignment.start,
                      labelPadding: EdgeInsets.zero,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.grey,
                      tabs: _productsTypes
                          .map((type) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Tab(
                                  text: type,
                                  height: 40,
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            SizedBox(
              height: 304,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ProductItem(
                    productImageUrl:
                        'https://firebasestorage.googleapis.com/v0/b/cerello-81465.appspot.com/o/pave_beton_autobloquant_rouge_l_x_l_x_ep_cm_le_m_255766_picture_01.jpeg?alt=media&token=d6b2054b-2534-4eb3-a48c-7005451c2691',
                  ),
                  ProductItem(
                    productImageUrl:
                        'https://firebasestorage.googleapis.com/v0/b/cerello-81465.appspot.com/o/images.jpg?alt=media&token=381e0883-2622-4514-9561-cffac8816fda',
                  ),
                  ProductItem(
                    productImageUrl:
                        'https://firebasestorage.googleapis.com/v0/b/cerello-81465.appspot.com/o/image22s.jpg?alt=media&token=4fd12c00-13d6-4d89-b33d-d93bfde72ba3',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
