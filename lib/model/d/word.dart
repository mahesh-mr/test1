class Word {
  int? id;
  bool? isAudioOn;
  int? chapterId;
  String? word;
  String? translation;
  String? pronunciation;
  String? video;
  String? audio;

  Word({
    this.id,
    this.isAudioOn,
    this.chapterId,
    this.word,
    this.translation,
    this.pronunciation,
    this.video,
    this.audio,
  });

  factory Word.fromStatus200WordsId2IsAudioOnFalseChapterId1WordEnglishWordsTranslationCheckingNewPronunciationEducationVideoHttpsLanguageTutorBucketS3ApNortheast1AmazonawsCom90741a56a5db2ec5c42992458bdd92beade5f29149f477bb48c0a56538a29557Mp4AwsAccessKeyIdAkiarb33On4Eh7Vzmz6VExpires1670559481SignatureEzgnaltsgTSd30ENwJsLd9tl7Yu3DResponseContentTypeMp4AudioHttpsLanguageTutorBucketS3ApNortheast1AmazonawsCom90741a56a5db2ec5c42992458bdd92beade5f29149f477bb48c0a56538a29557Mp3AwsAccessKeyIdAkiarb33On4Eh7Vzmz6VExpires1670559481Signature9LQheqrxAg38I0FXyPmm19ljY8Y3DResponseContentTypeMp3(
      Map<String, dynamic> json) {
    return Word(
      id: json['id'] as int?,
      isAudioOn: json['isAudioOn'] as bool?,
      chapterId: json['chapterId'] as int?,
      word: json['word'] as String?,
      translation: json['translation'] as String?,
      pronunciation: json['pronunciation'] as String?,
      video: json['video'] as String?,
      audio: json['audio'] as String?,
    );
  }

  Map<String, dynamic>
      toStatus200WordsId2IsAudioOnFalseChapterId1WordEnglishWordsTranslationCheckingNewPronunciationEducationVideoHttpsLanguageTutorBucketS3ApNortheast1AmazonawsCom90741a56a5db2ec5c42992458bdd92beade5f29149f477bb48c0a56538a29557Mp4AwsAccessKeyIdAkiarb33On4Eh7Vzmz6VExpires1670559481SignatureEzgnaltsgTSd30ENwJsLd9tl7Yu3DResponseContentTypeMp4AudioHttpsLanguageTutorBucketS3ApNortheast1AmazonawsCom90741a56a5db2ec5c42992458bdd92beade5f29149f477bb48c0a56538a29557Mp3AwsAccessKeyIdAkiarb33On4Eh7Vzmz6VExpires1670559481Signature9LQheqrxAg38I0FXyPmm19ljY8Y3DResponseContentTypeMp3() {
    return {
      'id': id,
      'isAudioOn': isAudioOn,
      'chapterId': chapterId,
      'word': word,
      'translation': translation,
      'pronunciation': pronunciation,
      'video': video,
      'audio': audio,
    };
  }
}
