struct RevAiApiTranscript: Codable, Sendable {
    var monologues: [Monologue]
}

struct SpeakerInfo: Codable, Sendable {
    var id: String
    var display_name: String
}

struct Monologue: Codable, Sendable {
    var speaker: Double
    var speaker_info: SpeakerInfo?
    var elements: [Element]
}

struct Element: Codable, Sendable {
    var type: String
    var value: String
    var ts: Double?
    var end_ts: Double?
    var confidence: Double?
}

