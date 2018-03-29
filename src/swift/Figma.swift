// To parse the JSON, add this file to your project and do:
//
//   let figma = try Figma(json)

import Foundation

/// A geographical coordinate
struct Figma: Codable {
    let latitude, longitude: Double?
}

// MARK: Convenience initializers

extension Figma {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Figma.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
