struct LanguageIdJobOptions: Codable, Sendable {
    var media_url: String?
    var source_config: CustomerUrlData?
    var metadata: String?
    var callback_url: String?
    var notification_config: CustomerUrlData?
    var delete_after_seconds: Double?
}

