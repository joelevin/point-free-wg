struct AppState {
    var todaysWord: EnglishWord

    var recents: [EnglishWord]
    var favorites: [EnglishWord]

    var currentLanguage: Language

    var search: Search
}

struct Search {
    var searchQuery: String
    var searchResults: [Word]
}

typealias EnglishWord = (String, Language)
typealias Word = String

enum Language {
    case en
    case jp
    case fr
}