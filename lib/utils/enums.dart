enum WetroResourceType {
  file,
  text,
  json,
  web,
  youtube,
  audio,
}

extension WetroResourceTypeExtension on WetroResourceType {
  String get name {
    switch (this) {
      case WetroResourceType.file:
        return 'file';
      case WetroResourceType.text:
        return 'text';
      case WetroResourceType.json:
        return 'json';
      case WetroResourceType.web:
        return 'web';
      case WetroResourceType.youtube:
        return 'youtube';
      case WetroResourceType.audio:
        return 'audio';
    }
  }
}

//! example usage
// await wetroCloud.insertResource(
//   collectionId: 'abc123',
//   resource: 'https://mybucket.com/resource.pdf',
//   type: WetroResourceType.file,
// );


extension Logger on Object {
  void log() => print('[LOG] $this');
}