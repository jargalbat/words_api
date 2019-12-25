import 'package:csv/csv.dart';
import 'package:words_api/word_response.dart';

// #		Pronunciation	Meaning	Word level	Part of speech 	Definition	Translation to Mongolia	Usage	Synonym 	Antonym 	 Example in sentence	 Mongolian translation of Sentence 	Picture

class WordData {
  String number;
  String word;
  String pronunciation;
  String meaning;
  String level;
  String lexicalCategory; // part of speech
  String definition;
  String translation;
  String usage;
  String synonym;
  String antonym;
  String example;
  String exampleTranslation;
}

writeCSV(OxfordResponse oxfordResponse) {
  // Str to list
  // List<List<dynamic>> rowsAsListOfValues = const CsvToListConverter().convert(yourString);

  WordData wordData = new WordData();
  wordData.number = 'A';
  wordData.word = 'b';
  wordData.pronunciation = 'c';
  wordData.meaning = 'd';
  wordData.level = 'f';
  wordData.lexicalCategory = 'A'; // part of speech
  wordData.definition = 'A';
  wordData.translation = 'A';
  wordData.usage = 'A';
  wordData.synonym = 'A';
  wordData.antonym = 'A';
  wordData.example = 'A';
  wordData.exampleTranslation = 'A';

//  List<List<WordData>> list;
//
//  String csv = const ListToCsvConverter().convert(rowsAsListOfValues);
}
