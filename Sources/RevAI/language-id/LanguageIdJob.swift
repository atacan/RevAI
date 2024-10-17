public struct LanguageIdJob: Codable, Sendable {
    public var id: String
    public var status: JobStatus
    public var type: JobType
    public var created_on: String
    public var completed_on: String?
    public var metadata: String?
    public var callback_url: String?
    public var processed_duration_seconds: Double?
    public var media_url: String?
    public var failure: String?
    public var failure_detail: String?
    public var delete_after_seconds: Double?
}

