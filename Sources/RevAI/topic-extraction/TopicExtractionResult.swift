struct TopicExtractionResult: Codable, Sendable {
    var topics: [Topic]
}

struct Topic: Codable, Sendable {
    var topic_name: String
    var score: Double
    var informants: [Informant]
}

struct Informant: Codable, Sendable {
    var content: String
    var ts: Double?
    var end_ts: Double?
    var offset: Double?
    var length: Double?
}

