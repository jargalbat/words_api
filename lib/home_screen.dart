import 'package:flutter/material.dart';
import 'package:words_api/api.dart';
import 'package:words_api/csv_helper.dart';
import 'package:words_api/word_response.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
//  Future<OxfordResponse> _word;

  @override
  void initState() {
    super.initState();
    _do();
//    _word = fetchPost(wordID: 'Apple');
  }

  _do() async{
    OxfordResponse oxfordResponse = await fetchPost(wordID: 'Warehouse');
    writeCSV(oxfordResponse);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apple'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//            FutureBuilder<OxfordResponse>(
//              future: _word,
//              builder: (context, snapshot) {
//                if (snapshot.hasData) {
//                  return Column(
//                    children: <Widget>[
//                      Text('Word:' + snapshot.data.results[0].word),
//                      Text('Definition' + snapshot.data.results[0].lexicalEntries[0].entries[0].senses[0].definitions[0]),
//                      Text('Example' + snapshot.data.results[0].lexicalEntries[0].entries[0].senses[0].examples[0].text),
//                      Text('Lexical category' + snapshot.data.results[0].lexicalEntries[0].lexicalCategory.text),
//                      Text('Phonetic spelling' + snapshot.data.results[0].lexicalEntries[0].pronunciations[0].phoneticSpelling),
//                      Text('Audio file' + snapshot.data.results[0].lexicalEntries[0].pronunciations[0].audioFile),
//                    ],
//                  );
//                } else if (snapshot.hasError) {
//                  return Text("${snapshot.error}");
//                }
//
//                // By default, show a loading spinner.
//                return CircularProgressIndicator();
//              },
//            ),
          ],
        ),
      ),
    );
  }
}
