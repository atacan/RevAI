struct SegmentToTranscribe: Codable, Sendable {
    var start: Double
    var end: Double
}

struct SpeakerName: Codable, Sendable {
    var display_name: String
}

struct RevAiJobOptions: Codable, Sendable {
    var media_url: String?
    var source_config: CustomerUrlData?
    var metadata: String?
    var callback_url: String?
    var notification_config: CustomerUrlData?
    var skip_diarization: Bool?
    var skip_punctuation: Bool?
    var skip_postprocessing: Bool?
    var diarization_type: String?
    var speaker_channels_count: Double?
    var speakers_count: Double?
    var custom_vocabulary_id: String?
    var custom_vocabularies: [CustomVocabulary]?
    var filter_profanity: Bool?
    var remove_disfluencies: Bool?
    var delete_after_seconds: Double?
    var language: String?
    var transcriber: String?
    var verbatim: Bool?
    var rush: Bool?
    var test_mode: Bool?
    var segments_to_transcribe: [SegmentToTranscribe]?
    var speaker_names: [SpeakerName]?
    var summarization_config: SummarizationOptions?
    var translation_config: TranslationOptions?
}

