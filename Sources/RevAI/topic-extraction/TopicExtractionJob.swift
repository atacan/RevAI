public struct TopicExtractionJob: Codable, Sendable {
    public var id: String
    public var status: JobStatus
    public var type: JobType
    public var created_on: String
    public var completed_on: String?
    public var metadata: String?
    public var callback_url: String?
    public var delete_after_seconds: Double?
    public var failure: String?
    public var failure_detail: String?
    public var word_count: Double?
    public var language: String?
}

