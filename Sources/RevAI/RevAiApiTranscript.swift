public struct RevAiApiTranscript: Codable, Sendable {
    public var monologues: [Monologue]
}

public struct SpeakerInfo: Codable, Sendable {
    public var id: String
    public var display_name: String
}

public struct Monologue: Codable, Sendable {
    public var speaker: Double
    public var speaker_info: SpeakerInfo?
    public var elements: [Element]
}

public struct Element: Codable, Sendable {
    public var type: String
    public var value: String
    public var ts: Double?
    public var end_ts: Double?
    public var confidence: Double?
}

