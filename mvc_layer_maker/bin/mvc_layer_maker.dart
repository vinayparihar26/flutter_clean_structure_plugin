import 'dart:io';

void main(List<String> arguments) {
  final root = Directory('lib');

  final structure = {
    'data': ['data_source', 'models', 'repositories'],
    'domain': ['entities', 'repositories', 'usecases'],
    'presentation': {
      'bloc': ['bloc.dart', 'event.dart', 'state.dart'],
      'di': [],
      'pages': [],
    },
    'util': []
  };

  print('📦 Creating clean architecture, bloc folders...');

  structure.forEach((key, value) {
    final baseDir = Directory('${root.path}/$key')..createSync(recursive: true);

    if (value is List) {
      for (var sub in value) {
        Directory('${baseDir.path}/$sub').createSync(recursive: true);
      }
    } else if (value is Map) {
      value.forEach((subKey, subList) {
        final subDir = Directory('${baseDir.path}/$subKey')..createSync(recursive: true);
        for (var subSub in subList) {
          Directory('${subDir.path}/$subSub').createSync(recursive: true);
        }
      });
    }
  });

  print('✅ Folder structure created successfully!');
}
