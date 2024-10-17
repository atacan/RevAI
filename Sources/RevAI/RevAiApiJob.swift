struct RevAiApiJob: Codable, Sendable {
    var id: String
    var status: JobStatus
    var type: JobType
    var created_on: String
    var completed_on: String?
    var metadata: String?
    var name: String?
    var callback_url: String?
    var duration_seconds: Double?
    var media_url: String?
    var failure: String?
    var failure_detail: String?
    var delete_after_seconds: Double?
    var skip_diarization: Bool?
    var skip_punctuation: Bool?
    var remove_disfluencies: Bool?
    var filter_profanity: Bool?
    var custom_vocabulary_id: String?
    var speaker_channels_count: Double?
    var speakers_count: Double?
    var language: String?
    var transcriber: String?
    var verbatim: Bool?
    var rush: Bool?
    var segments_to_transcribe: [SegmentToTranscribe]?
    var summarization: Summarization?
    var translation: Translation?
}

