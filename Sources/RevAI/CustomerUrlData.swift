public struct CustomerUrlData: Codable, Sendable {
    public var url: String
    public var auth_headers: [String: String]?
}

