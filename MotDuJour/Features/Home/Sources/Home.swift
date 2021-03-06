import Models

public struct HomeState {
    public var language: Language

    public init(
        language: Language
    ) {
        self.language = language
    }

}

public enum HomeAction {
    case didTapLanguage(language: Language)
    case didTapTodaysWord
    case didTapRecentlyViewed
    case didTapFavorites
    case didTapSearch(query: String)
}


public func reducer(value: inout Language, action: HomeAction) {
    switch action {
    case .didTapLanguage(let language):
        value = language
    case .didTapTodaysWord:
        print("didTapTodaysWord")
    case .didTapRecentlyViewed:
        print("didTapRecentlyViewed")
    case .didTapFavorites:
        print("didTapFavorites")
    case .didTapSearch(let query):
        print(query)
    }
}
