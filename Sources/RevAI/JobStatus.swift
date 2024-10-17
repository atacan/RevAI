public enum JobStatus: String, Codable, Sendable {
    case failed = "failed"
    case inprogress = "in_progress"
    case transcribed = "transcribed"
    case completed = "completed"
}

