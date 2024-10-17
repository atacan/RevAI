struct SentimentAnalysisJobOptions: Codable, Sendable {
    var metadata: String?
    var notification_config: CustomerUrlData?
    var delete_after_seconds: Double?
    var language: String?
    var text: String?
    var json: RevAiApiTranscript?
}

