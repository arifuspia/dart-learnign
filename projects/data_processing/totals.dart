import 'dart:io';

/* we need a command line argument 
  that represents the path to the csv
  file that we want to process */
void main(List<String> args) {
  // note: it should be invalid to run the program without arguments.
  // we need to write some defensive code so that the program can fail gracefully.
  if (args.isEmpty) {
    print("Usage: dart totals.csv <inputFile.csv>");
    // note: program should terminate immediately when called with no arguments.
    // for this we use a special method called exit().
    // by convention: zero error code on success
    // non-zero error code no success
    exit(1);
  }
  final inputFile = args.first;
  // read the input file contents.
  final lines = File(inputFile).readAsLinesSync();
  final totalDurationByTag = <String, double>{};
  lines.removeAt(0);
  var totalDurationAllTag = 0.0;
  for (var line in lines) {
    // in the terminal when run the file dart run filename.dart then press the tab
    //to access the file that you want to access
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
    print('$tag: ${durationFormatted}h');
  }
  print(
      'Total duration for all tags: ${totalDurationAllTag.toStringAsFixed(2)}h');
}

// lines = readFile(inputFile)
// durationByTag = empty map
// lines.removeFirst()
// for (line in lines)
//   values = line.split(',')
//   duration = values[3]
//   tag = values[5]
//   update(durationByTag[tag], duration)
// end
// printAll(durationByTag)
