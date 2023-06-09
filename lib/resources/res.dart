import 'package:flutter/material.dart';
import 'package:food_ordering_app_getx/models/product_modal_calss.dart';

List category = [
  {
    'id': 1,
    'name': 'Pizza',
    'img': '🍕',
  },
  {
    'id': 2,
    'name': 'Burger',
    'img': '🍔',
  },
  {
    'id': 3,
    'name': 'Coffee',
    'img': '☕️',
  },
  {
    'id': 4,
    'name': 'Ice-Cream',
    'img': '🍦',
  },
];
List viewCategory = [
  {
    'id': 1,
    'name': 'All',
    'img': '🍽',
  },
  {
    'id': 2,
    'name': 'Pizza',
    'img': '🍕',
  },
  {
    'id': 3,
    'name': 'Burger',
    'img': '🍔',
  },
  {
    'id': 4,
    'name': 'Coffee',
    'img': '☕️',
  },
  {
    'id': 5,
    'name': 'Ice-Cream',
    'img': '🍦',
  },
];
List AllProducts = [
  products(
    id: 2,
    name: 'Italian Burger',
    category: 'Cheesy Tomato 🍕',
    description: 'This Burger uses 100% natural stuff in fillings inside it.',
    image: 'assets/images/burger/b2.PNG',
    quantity: 1,
    price: 329,
  ),
  products(
    id: 3,
    name: 'Frappachino',
    category: 'Hot Crushed ☕️',
    description: 'This pizza uses 100% natural stuff in fillings inside it.',
    image: 'assets/images/coffee/c1.PNG',
    quantity: 1,
    price: 59,
  ),
  products(
    id: 4,
    name: 'Pista Masti',
    category: 'Hot crunched 🍨️',
    description: 'This icecream uses 100% natural stuff in fillings inside it.',
    image: 'assets/images/icecream/i3.PNG',
    quantity: 1,
    price: 129,
  ),
  products(
    id: 1,
    name: 'Italian Pizza',
    category: 'Cheesy Tomato 🍕',
    description: 'This pizza uses 100% natural stuff in fillings inside it.',
    image: 'assets/images/pizzas/1.PNG',
    quantity: 1,
    price: 459,
  ),
  products(
    id: 2,
    name: 'Mexican Burger',
    category: 'Mexican Feels 🥗',
    description:
        'This pizza is very spicy and enjoyable in taste and can enjoy with family.',
    image: 'assets/images/burger/b3.PNG',
    quantity: 1,
    price: 659,
  ),
  products(
    id: 4,
    name: 'Mixed Masti',
    category: 'Cold Crushed 🥗',
    description: 'This icecream uses 100% natural stuff in fillings inside it.',
    image: 'assets/images/icecream/i2.PNG',
    quantity: 1,
    price: 259,
  ),
  products(
    id: 3,
    name: 'Black Latte',
    category: 'Bitter Toast 🍪',
    description:
        'This pizza is very spicy and enjoyable in taste and can enjoy with family.',
    image: 'assets/images/coffee/c2.PNG',
    quantity: 1,
    price: 69,
  ),
  products(
    id: 1,
    name: 'Mexican Pizza',
    category: 'Mexican Feels 🥗',
    description:
        'This pizza is very spicy and enjoyable in taste and can enjoy with family.',
    image: 'assets/images/pizzas/2.PNG',
    quantity: 1,
    price: 699,
  ),
  products(
    id: 2,
    name: 'Beefy Burger',
    category: 'Double Beef 🍖',
    description: 'This pizza is of 100% fresh beef from courtyard.',
    image: 'assets/images/burger/b4.PNG',
    quantity: 1,
    price: 269,
  ),
  products(
    id: 3,
    name: 'Bru Burratee',
    category: 'Double caremal 🍩',
    description: 'This Coffee is of 100% fresh beef from courtyard.',
    image: 'assets/images/coffee/c3.PNG',
    quantity: 1,
    price: 69,
  ),
  products(
    id: 4,
    name: 'Cold Choclate',
    category: 'Cold Munch 🍩',
    description: 'This icecream uses 100% natural stuff in fillings inside it.',
    image: 'assets/images/icecream/i1.PNG',
    quantity: 1,
    price: 29,
  ),
  products(
    id: 1,
    name: 'Beefy Pizza',
    category: 'Double Beef 🍖',
    description: 'This pizza is of 100% fresh beef from courtyard.',
    image: 'assets/images/pizzas/3.PNG',
    quantity: 1,
    price: 369,
  ),
  products(
    id: 1,
    name: 'Spicy Toasted',
    category: 'Crunched Potato 🥔',
    description: 'This pizza uses 100% natural stuff in fillings inside it.',
    image: 'assets/images/pizzas/4.PNG',
    quantity: 1,
    price: 569,
  ),
  products(
    id: 4,
    name: 'Candy Munch',
    category: 'Crunched Flakes 🍖',
    description: 'This pizza uses 100% natural stuff in fillings inside it.',
    image: 'assets/images/icecream/i5.PNG',
    quantity: 1,
    price: 69,
  ),
  products(
    id: 3,
    name: 'Caffechino',
    category: 'Crunched cakes 🧋',
    description: 'This Coffee uses 100% natural stuff in fillings inside it.',
    image: 'assets/images/coffee/c4.PNG',
    quantity: 1,
    price: 99,
  ),
  products(
    id: 1,
    name: 'Tomato Crunchex',
    category: 'Crunched Bosed 🌮',
    description: 'This pizza uses 100% natural stuff in fillings inside it.',
    image: 'assets/images/pizzas/5.PNG',
    quantity: 1,
    price: 999,
  ),
  products(
    id: 2,
    name: 'Spicy Burger',
    category: 'Crunched Potato 🥔',
    description: 'This pizza uses 100% natural stuff in fillings inside it.',
    image: 'assets/images/burger/b5.PNG',
    quantity: 1,
    price: 369,
  ),
  products(
    id: 4,
    name: 'Softy Stick',
    category: 'Crunched Choco 🥔',
    description: 'This pizza uses 100% natural stuff in fillings inside it.',
    image: 'assets/images/icecream/i6.PNG',
    quantity: 1,
    price: 69,
  ),
  products(
    id: 1,
    name: 'Paneer Pizza',
    category: 'Panner Masti 🍛',
    description: 'This pizza uses 100% natural stuff in fillings inside it.',
    image: 'assets/images/pizzas/6.PNG',
    quantity: 1,
    price: 859,
  ),
  products(
    id: 3,
    name: 'Roasted coffee',
    category: 'Roast Almonds 🍛',
    description: 'This Coffee uses 100% natural stuff in fillings inside it.',
    image: 'assets/images/coffee/c5.PNG',
    quantity: 1,
    price: 19,
  ),
  products(
    id: 4,
    name: 'Cold Waxy',
    category: 'Crunched cakes 🧋',
    description: 'This Coffee uses 100% natural stuff in fillings inside it.',
    image: 'assets/images/icecream/i4.PNG',
    quantity: 1,
    price: 99,
  ),
  products(
    id: 2,
    name: 'Paneer Burger',
    category: 'Panner Masti 🍛',
    description: 'This pizza uses 100% natural stuff in fillings inside it.',
    image: 'assets/images/burger/b1.PNG',
    quantity: 1,
    price: 159,
  ),
  products(
    id: 2,
    name: 'Tomato Burger',
    category: 'Crunched Bosed 🌮',
    description: 'This pizza uses 100% natural stuff in fillings inside it.',
    image: 'assets/images/burger/b6.PNG',
    quantity: 1,
    price: 789,
  ),
  products(
    id: 3,
    name: 'Hot Burattee',
    category: 'Hot Beans 🫖',
    description: 'This Coffee uses 100% natural stuff in fillings inside it.',
    image: 'assets/images/coffee/c6.PNG',
    quantity: 1,
    price: 79,
  ),
];
