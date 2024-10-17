public struct SentimentAnalysisJobOptions: Codable, Sendable {
    public var metadata: String?
    public var notification_config: CustomerUrlData?
    public var delete_after_seconds: Double?
    public var language: String?
    public var text: String?
    public var json: RevAiApiTranscript?
}

