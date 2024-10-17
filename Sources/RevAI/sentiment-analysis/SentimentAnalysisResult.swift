public struct SentimentAnalysisResult: Codable, Sendable {
    public var messages: [SentimentAnalysisMessage]
}

public struct SentimentAnalysisMessage: Codable, Sendable {
    public var content: String
    public var score: Double
    public var sentiment: Sentiment
    public var ts: Double?
    public var end_ts: Double?
    public var offset: Double?
    public var length: Double?
}

