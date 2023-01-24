import 'package:file_picker/file_picker.dart';
import 'package:pdftron_flutter/pdftron_flutter.dart';

void openFile(List<String> index) async {
  final result = await FilePicker.platform.pickFiles(allowMultiple: false, type: FileType.custom, allowedExtensions: index);
  if (result == null) return;
  final file = result.files.first;
  var config = Config();
  config.disabledElements = [
    Buttons.shareButton,
    Buttons.searchButton,
    Buttons.moreItemsButton,
    Buttons.toolsButton,
    Buttons.viewControlsButton,
    Buttons.userBookmarkListButton
  ];
  config.followSystemDarkMode = true;
  config.quickBookmarkCreation = false;
  await PdftronFlutter.openDocument(file.path!, config: config);
}
