import XCTest
@testable import Sqlable

func documentsPath() -> String {
    FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.path
}

final class SqlableTests: XCTestCase {

    static var allTests = [
        ("testChildCreation", SqliteConcurrencyTests().testChildCreation()),
    ]
}
