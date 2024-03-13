import 'package:blocks/config/routes/routes_names.dart';
import 'package:blocks/features/cart/presentation/pages/cart_page.dart';
import 'package:blocks/features/home/presentation/pages/home_page.dart';
import 'package:blocks/features/order_details/presentation/pages/order_details_page.dart';
import 'package:blocks/features/product_details/presentation/pages/product_details_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      name: 'TEST',
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      name: RoutesNames.home,
      path: '/home',
      builder: (context, state) => const HomePage(),
      routes: <RouteBase>[
        GoRoute(
          name: RoutesNames.cart,
          path: 'cart',
          builder: (context, state) {
            return const CartPage();
          },
        ),
        GoRoute(
          name: RoutesNames.productDetails,
          path: RoutesNames.productDetails,
          builder: (context, state) {
            return const ProductDetailsPage();
          },
        ),
        GoRoute(
          name: RoutesNames.orderDetails,
          path: RoutesNames.orderDetails,
          builder: (context, state) {
            return const OrderDetailsPage();
          },
        ),
      ],
    ),
  ],
);
