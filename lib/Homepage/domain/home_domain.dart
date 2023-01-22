import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';

void openFile(PlatformFile file) {
  OpenFile.open(file.path);
}
