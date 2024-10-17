import XCTest
import Foundation
@testable import RevAI

final class RevAITests: XCTestCase {
    var referenceTestResourcesDirectory: URL! = nil
    
    /// Setup method called before the invocation of each test method in the class.
    override func setUpWithError() throws {
        self.referenceTestResourcesDirectory = try XCTUnwrap(
            Bundle.module.url(forResource: "Resources", withExtension: nil),
            "Could not find reference test resources directory."
        )
    }
    
    func testTranscriptEncoding() throws {
        let jsonData = try Data(contentsOf: referenceTestResourcesDirectory.appendingPathComponent("transcript", conformingTo: .json))
        let decoder = JSONDecoder()
        let transcript = try decoder.decode(RevAiApiTranscript.self, from: jsonData)
        print(transcript.monologues.count)
    }
}
