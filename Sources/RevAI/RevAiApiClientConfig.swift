public struct RevAiApiClientConfig: Codable, Sendable {
    public var token: String?
    public var version: String?
    var deploymentConfig: RevAiApiDeploymentConfig?
    public var serviceApi: String?
}

struct RevAiApiDeploymentConfig: Codable, Sendable {
    var baseUrl: String
    var baseWebsocketUrl: String
}

