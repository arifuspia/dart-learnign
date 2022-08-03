import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    print("Usage: dart test.dart <inputFile>");
    exit(1);
  }

  final inputFile = args.first;
  final lines = File(inputFile).readAsLinesSync();
  final totalDurationByTag = <String, double>{};
  var totalDurationAllTag = 0.0;
  lines.removeAt(0);
  for (var line in lines) {
    final values = line.split(",");
    final durationStr = values[3].replaceAll('"', '');
    final duration = double.parse(durationStr);
    final tag = values[5].replaceAll('"', '');
    final previousTotal = totalDurationByTag[tag];
    if (previousTotal == null) {
      totalDurationByTag[tag] = duration;
    } else {
      totalDurationByTag[tag] = previousTotal + duration;
    }
    totalDurationAllTag += duration;
  }
  for (var entry in totalDurationByTag.entries) {
    final durationFormatted = entry.value.toStringAsFixed(1);
    final tag = entry.key == '' ? 'unlocated' : entry.key;
    print('$tag : ${durationFormatted}h');
  }
  print('Total by all tags: ${totalDurationAllTag.toStringAsFixed(2)}h');
}
