struct SentimentAnalysisResult: Codable, Sendable {
    var messages: [SentimentAnalysisMessage]
}

struct SentimentAnalysisMessage: Codable, Sendable {
    var content: String
    var score: Double
    var sentiment: Sentiment
    var ts: Double?
    var end_ts: Double?
    var offset: Double?
    var length: Double?
}

