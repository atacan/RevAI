public struct LanguageIdJobOptions: Codable, Sendable {
    public var media_url: String?
    public var source_config: CustomerUrlData?
    public var metadata: String?
    public var callback_url: String?
    public var notification_config: CustomerUrlData?
    public var delete_after_seconds: Double?
}

