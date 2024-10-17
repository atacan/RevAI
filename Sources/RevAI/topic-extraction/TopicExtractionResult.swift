public struct TopicExtractionResult: Codable, Sendable {
    public var topics: [Topic]
}

public struct Topic: Codable, Sendable {
    public var topic_name: String
    public var score: Double
    public var informants: [Informant]
}

public struct Informant: Codable, Sendable {
    public var content: String
    public var ts: Double?
    public var end_ts: Double?
    public var offset: Double?
    public var length: Double?
}

