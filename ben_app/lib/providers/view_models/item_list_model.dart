import 'package:ben_app/providers/view_models/responding_model.dart';
import 'package:ben_app/providers/services/item_list_service.dart';
import 'package:ben_app/plugins/bank_card/bank_card.dart';

class ItemListViewModel extends RespondingModel {
  final ItemListService _itemListService;
  List<BankCard> data;

  ItemListViewModel(ItemListService service)
      : _itemListService = service,
        data = [],
        super(State.IDLE) {
    this.fetch();
  }

  Future<void> fetch() async {
    state = State.BUSY;
    data = await _itemListService.fetch();
    state = State.IDLE;
  }
}
