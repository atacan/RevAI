struct StreamingResponse: Codable, Sendable {
    var type: String
}

struct StreamingHypothesis: Codable, Sendable {
    var ts: Double?
    var end_ts: Double?
    var speaker_id: Double?
    var elements: [Element]
}

struct StreamingConnected: Codable, Sendable {
    var id: String
}

