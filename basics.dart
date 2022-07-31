void main() {
  var languages = [
    'Dart',
    'Python',
    'C programming',
    'JavaScript',
  ];

  for (var language in languages) {
    print(language);
  }

  print(languages.length);
  print(languages.isEmpty);
  print(languages.isNotEmpty);

  languages.add('PHP');
  print(languages);
  languages.insert(0, 'Java');
  print(languages);
  languages.removeAt(3);
  print(languages);
  print(languages.contains('Python'));
  print(languages.indexOf('Python'));
}
