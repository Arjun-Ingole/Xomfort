import 'package:get/get.dart';import 'listcut_item_model.dart';import 'listellipseone_item_model.dart';import 'package:xomfort/data/models/selectionPopupModel/selection_popup_model.dart';class HotelDetailsModel {RxList<ListcutItemModel> listcutItemList = RxList.filled(2,ListcutItemModel());

RxList<ListellipseoneItemModel> listellipseoneItemList = RxList.filled(3,ListellipseoneItemModel());

RxList<SelectionPopupModel> dropdownItemList = [SelectionPopupModel(id:1,title:"test",isSelected:true,),SelectionPopupModel(id:2,title:"test1",),SelectionPopupModel(id:3,title:"test2",)].obs;

 }
