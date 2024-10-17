public struct RevAiApiJob: Codable, Sendable {
    public var id: String
    public var status: JobStatus
    public var type: JobType
    public var created_on: String
    public var completed_on: String?
    public var metadata: String?
    public var name: String?
    public var callback_url: String?
    public var duration_seconds: Double?
    public var media_url: String?
    public var failure: String?
    public var failure_detail: String?
    public var delete_after_seconds: Double?
    public var skip_diarization: Bool?
    public var skip_punctuation: Bool?
    public var remove_disfluencies: Bool?
    public var filter_profanity: Bool?
    public var custom_vocabulary_id: String?
    public var speaker_channels_count: Double?
    public var speakers_count: Double?
    public var language: String?
    public var transcriber: String?
    public var verbatim: Bool?
    public var rush: Bool?
    public var segments_to_transcribe: [SegmentToTranscribe]?
    public var summarization: Summarization?
    public var translation: Translation?
}

