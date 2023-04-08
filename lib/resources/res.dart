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
    description: 'This pizza uses 100% natural stuff in fillings inside it.',
    image: 'assets/images/burger/b2.PNG',
    quantity: 1,
    price: 329,
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
    id: 1,
    name: 'Paneer Pizza',
    category: 'Panner Masti 🍛',
    description: 'This pizza uses 100% natural stuff in fillings inside it.',
    image: 'assets/images/pizzas/6.PNG',
    quantity: 1,
    price: 859,
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
];
