import 'package:xomfort/core/app_export.dart';import 'package:xomfort/presentation/bookmark_removal_bottomsheet/models/bookmark_removal_model.dart';class BookmarkRemovalController extends GetxController {Rx<BookmarkRemovalModel> bookmarkRemovalModelObj = BookmarkRemovalModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
