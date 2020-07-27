import 'package:smtutorial/models/drink.dart';
import 'package:state_notifier/state_notifier.dart';

class DrinkList extends StateNotifier<List<Drink>> {
  DrinkList(List<Drink> initialDrinks) : super(initialDrinks ?? []);

  void selectDrink(Drink drink, bool selected) {
    state = [
      for (final d in state)
        if (d.name == drink.name) Drink(d.name, selected) else d,
    ];
  }

  List<Drink> get selectedDrinks =>
      state.where((element) => element.selected).toList();

  List<Drink> get drinks => state;
}
