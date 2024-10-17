enum JobType: String, Codable, Sendable {
    case async = "async"
    case stream = "stream"
    case human = "human_tc"
    case topicextraction = "topic_extraction"
    case sentimentanalysis = "sentiment_analysis"
    case languageid = "language_id"
}

