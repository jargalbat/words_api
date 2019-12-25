class OxfordResponse {
  String id;
  List<WordData> results;
  String word;

  OxfordResponse({this.id, this.results, this.word});

  OxfordResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['results'] != null) {
      results = new List<WordData>();
      json['results'].forEach((v) {
        results.add(new WordData.fromJson(v));
      });
    }
    word = json['word'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    data['word'] = this.word;
    return data;
  }
}

class WordData {
  String id;
  List<LexicalEntries> lexicalEntries;
  String type;
  String word;

  WordData({this.id, this.lexicalEntries, this.type, this.word});

  WordData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['lexicalEntries'] != null) {
      lexicalEntries = new List<LexicalEntries>();
      json['lexicalEntries'].forEach((v) {
        lexicalEntries.add(new LexicalEntries.fromJson(v));
      });
    }
    type = json['type'];
    word = json['word'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.lexicalEntries != null) {
      data['lexicalEntries'] =
          this.lexicalEntries.map((v) => v.toJson()).toList();
    }
    data['type'] = this.type;
    data['word'] = this.word;
    return data;
  }
}

class LexicalEntries {
  List<Entries> entries;
  String language;
  LexicalCategory lexicalCategory;
  List<Pronunciations> pronunciations;
  String text;

  LexicalEntries(
      {this.entries,
      this.language,
      this.lexicalCategory,
      this.pronunciations,
      this.text});

  LexicalEntries.fromJson(Map<String, dynamic> json) {
    if (json['entries'] != null) {
      entries = new List<Entries>();
      json['entries'].forEach((v) {
        entries.add(new Entries.fromJson(v));
      });
    }
    language = json['language'];
    lexicalCategory = json['lexicalCategory'] != null
        ? new LexicalCategory.fromJson(json['lexicalCategory'])
        : null;
    if (json['pronunciations'] != null) {
      pronunciations = new List<Pronunciations>();
      json['pronunciations'].forEach((v) {
        pronunciations.add(new Pronunciations.fromJson(v));
      });
    }
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.entries != null) {
      data['entries'] = this.entries.map((v) => v.toJson()).toList();
    }
    data['language'] = this.language;
    if (this.lexicalCategory != null) {
      data['lexicalCategory'] = this.lexicalCategory.toJson();
    }
    if (this.pronunciations != null) {
      data['pronunciations'] =
          this.pronunciations.map((v) => v.toJson()).toList();
    }
    data['text'] = this.text;
    return data;
  }
}

class Entries {
  List<Senses> senses;

  Entries({this.senses});

  Entries.fromJson(Map<String, dynamic> json) {
    if (json['senses'] != null) {
      senses = new List<Senses>();
      json['senses'].forEach((v) {
        senses.add(new Senses.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.senses != null) {
      data['senses'] = this.senses.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Senses {
  List<String> definitions;
  List<Examples> examples;
  List<String> shortDefinitions;

  Senses({this.definitions, this.examples, this.shortDefinitions});

  Senses.fromJson(Map<String, dynamic> json) {
    definitions = json['definitions'].cast<String>();
    if (json['examples'] != null) {
      examples = new List<Examples>();
      json['examples'].forEach((v) {
        examples.add(new Examples.fromJson(v));
      });
    }
    shortDefinitions = json['shortDefinitions'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['definitions'] = this.definitions;
    if (this.examples != null) {
      data['examples'] = this.examples.map((v) => v.toJson()).toList();
    }
    data['shortDefinitions'] = this.shortDefinitions;
    return data;
  }
}

class Examples {
  List<Notes> notes;
  String text;

  Examples({this.notes, this.text});

  Examples.fromJson(Map<String, dynamic> json) {
    if (json['notes'] != null) {
      notes = new List<Notes>();
      json['notes'].forEach((v) {
        notes.add(new Notes.fromJson(v));
      });
    }
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.notes != null) {
      data['notes'] = this.notes.map((v) => v.toJson()).toList();
    }
    data['text'] = this.text;
    return data;
  }
}

class Notes {
  String text;
  String type;

  Notes({this.text, this.type});

  Notes.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['type'] = this.type;
    return data;
  }
}

class LexicalCategory {
  String id;
  String text;

  LexicalCategory({this.id, this.text});

  LexicalCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['text'] = this.text;
    return data;
  }
}

class Pronunciations {
  String audioFile;
  List<String> dialects;
  String phoneticNotation;
  String phoneticSpelling;

  Pronunciations(
      {this.audioFile,
      this.dialects,
      this.phoneticNotation,
      this.phoneticSpelling});

  Pronunciations.fromJson(Map<String, dynamic> json) {
    audioFile = json['audioFile'];
    dialects = json['dialects'].cast<String>();
    phoneticNotation = json['phoneticNotation'];
    phoneticSpelling = json['phoneticSpelling'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['audioFile'] = this.audioFile;
    data['dialects'] = this.dialects;
    data['phoneticNotation'] = this.phoneticNotation;
    data['phoneticSpelling'] = this.phoneticSpelling;
    return data;
  }
}
