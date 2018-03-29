// To parse the JSON, add this file to your project and do:
//
//   let comment = try Comment(json)
//   let user = try User(json)

import Foundation

/// A comment or reply left by a user
struct Comment: Codable {
    /// Unique identifier for comment
    let id: String
    /// The file in which the comment lives
    let fileKey: String
    /// If present, the id of the comment to which this is the reply
    let parentID: String?
    let user: CommentUser

    enum CodingKeys: String, CodingKey {
        case id
        case fileKey = "file_key"
        case parentID = "parent_id"
        case user
    }
}

/// A description of a user
struct CommentUser: Codable {
    let handle, imgURL: String

    enum CodingKeys: String, CodingKey {
        case handle
        case imgURL = "img_url"
    }
}

/// A description of a user
struct User: Codable {
    let handle, imgURL: String

    enum CodingKeys: String, CodingKey {
        case handle
        case imgURL = "img_url"
    }
}

// MARK: Convenience initializers

extension Comment {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Comment.self, from: data)
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

extension CommentUser {
    init(data: Data) throws {
        self = try JSONDecoder().decode(CommentUser.self, from: data)
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

extension User {
    init(data: Data) throws {
        self = try JSONDecoder().decode(User.self, from: data)
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
