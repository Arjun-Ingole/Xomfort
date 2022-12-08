import 'package:xomfort/core/app_export.dart';import 'package:xomfort/presentation/hotel_details_screen/models/hotel_details_model.dart';class HotelDetailsController extends GetxController {Rx<HotelDetailsModel> hotelDetailsModelObj = HotelDetailsModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; hotelDetailsModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); hotelDetailsModelObj.value.dropdownItemList.refresh(); } 
 }
