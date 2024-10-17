struct LanguageIdJob: Codable, Sendable {
    var id: String
    var status: JobStatus
    var type: JobType
    var created_on: String
    var completed_on: String?
    var metadata: String?
    var callback_url: String?
    var processed_duration_seconds: Double?
    var media_url: String?
    var failure: String?
    var failure_detail: String?
    var delete_after_seconds: Double?
}

