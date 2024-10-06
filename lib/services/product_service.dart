import 'package:high_cohesion_low_coupling/models/product.dart';

class ProductService {
  final List<Product> products = [
    // Caramel
    Product(
        name: 'Caramel',
        description:
            'Caramel is an orange-brown confectionery product made by heating a range of sugars.',
        price: 1.5),
    // Hard Candy
    Product(
        name: 'Hard Candy',
        description:
            'A hard candy, or boiled sweet, is a sugar candy prepared from one or more sugar-based syrups that is heated to a temperature of 160 °C to make candy.',
        price: 2.5),
    // Bulk Candy
    Product(
        name: 'Bulk Candy',
        description:
            'Bulk candy is a go-to option for those who seek variety and value.',
        price: 20.99),
    // Chocolate
    Product(
        name: 'Chocolate',
        description:
            'Chocolate is a food made from roasted and ground cocoa beans that can be a liquid, solid, or paste, either on its own or as a flavoring in other foods.',
        price: 14.5),
    // Dark Chocolate
    Product(
        name: 'Dark Chocolate',
        description:
            'Dark chocolate is a form of chocolate made of cocoa solids, cocoa butter and sugar.',
        price: 16.5),
    // Licorice
    Product(
        name: 'Licorice',
        description:
            'Liquorice or licorice is a confection usually flavoured and coloured black with the extract of the roots of the liquorice plant Glycyrrhiza glabra.',
        price: 2.0),
    // Candy Corn
    Product(
        name: 'Candy Corn',
        description:
            'Candy corn is a small, pyramid-shaped candy, typically divided into three sections of different colors, with a waxy texture and a flavor based on honey, sugar, butter, and vanilla.',
        price: 3.15),
    // Chewy Candy
    Product(
        name: 'Chewy Candy',
        description:
            'To begin with, hard candy is a type of candy that made out of melted sugary ingredients but then later is left to cool and harden.',
        price: 4.0),
    // Jelly Beans
    Product(
        name: 'Jelly Beans',
        description:
            'Jelly beans are small bean-shaped sugar candies with soft candy shells and thick gel interiors. The confection is primarily made of sugar and sold in a wide variety of colors and flavors.',
        price: 16.99),
    // Jordan Almonds
    Product(
        name: 'Jordan Almonds',
        description:
            'A tropical escape in the form of a candy bar, Almond Joy combines the rich taste of almonds, sweet coconut, and milk chocolate candy.',
        price: 16.99),
    // Candied Roasted Nuts
    Product(
        name: 'Candied Roasted Nuts',
        description:
            'Brittle is a type of confection consisting of flat broken pieces of hard sugar candy embedded with nuts such as pecans, almonds, or peanuts, and which are usually less than 1 cm thick.',
        price: 14.99),
    // Chewing Gum
    Product(
        name: 'Chewing Gum',
        description:
            'Chewing gum, called also a gum and bubblegum, is a chewy candy.',
        price: 5.99),
  ];
}
