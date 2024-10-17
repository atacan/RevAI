public struct SegmentToTranscribe: Codable, Sendable {
    public var start: Double
    public var end: Double
}

public struct SpeakerName: Codable, Sendable {
    public var display_name: String
}

public struct RevAiJobOptions: Codable, Sendable {
    public var media_url: String?
    public var source_config: CustomerUrlData?
    public var metadata: String?
    public var callback_url: String?
    public var notification_config: CustomerUrlData?
    public var skip_diarization: Bool?
    public var skip_punctuation: Bool?
    public var skip_postprocessing: Bool?
    public var diarization_type: String?
    public var speaker_channels_count: Double?
    public var speakers_count: Double?
    public var custom_vocabulary_id: String?
    public var custom_vocabularies: [CustomVocabulary]?
    public var filter_profanity: Bool?
    public var remove_disfluencies: Bool?
    public var delete_after_seconds: Double?
    public var language: String?
    public var transcriber: String?
    public var verbatim: Bool?
    public var rush: Bool?
    public var test_mode: Bool?
    public var segments_to_transcribe: [SegmentToTranscribe]?
    public var speaker_names: [SpeakerName]?
    public var summarization_config: SummarizationOptions?
    public var translation_config: TranslationOptions?
}

