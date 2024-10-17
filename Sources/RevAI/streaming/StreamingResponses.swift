public struct StreamingResponse: Codable, Sendable {
    public var type: String
}

public struct StreamingHypothesis: Codable, Sendable {
    public var ts: Double?
    public var end_ts: Double?
    public var speaker_id: Double?
    public var elements: [Element]
}

public struct StreamingConnected: Codable, Sendable {
    public var id: String
}

