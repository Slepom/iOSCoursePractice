
import Foundation

// MARK: - Welcome
struct TMDBGenre: Codable {
    let genres: [Genre]
}

// MARK: - Genre
struct Genre: Codable {
    let id: Int
    let name: String
}
