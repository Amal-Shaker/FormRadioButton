import 'dart:io';

import 'package:path_provider/path_provider.dart';

class FilesHelper {
  FilesHelper._();
  static FilesHelper filesHelper = FilesHelper._();
  writeInFile(String fileName) async {
    Directory directory = await getApplicationDocumentsDirectory();
    String filePath = directory.path + '/$fileName.text';
    File file = File(filePath);
    file.writeAsString('hello , you are welcome');
  }

  Future<String> readFormFile(String fileName) async {
    Directory directory = await getApplicationDocumentsDirectory();
    String filePath = directory.path + '/$fileName.text';
    File file = File(filePath);
    String fileContent = await file.readAsString();
    print(fileContent);
  }
}
