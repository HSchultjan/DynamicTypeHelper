import XCTest
@testable import DynamicTypeHelper

class FallbackTests: XCTestCase {

    func testBodyFallback() {
        let helper = DynamicTypeHelper()
        let label = UILabel(frame: .zero)
        helper.body = [label]
        XCTAssertEqual(label.font, UIFont.preferredFont(forTextStyle: .body))
    }

    func testCalloutFallback() {
        let helper = DynamicTypeHelper()
        let label = UILabel(frame: .zero)
        helper.callout = [label]
        XCTAssertEqual(label.font, UIFont.preferredFont(forTextStyle: .callout))
    }

    func testCaption1Fallback() {
        let helper = DynamicTypeHelper()
        let label = UILabel(frame: .zero)
        helper.caption1 = [label]
        XCTAssertEqual(label.font, UIFont.preferredFont(forTextStyle: .caption1))
    }

    func testCaption2Fallback() {
        let helper = DynamicTypeHelper()
        let label = UILabel(frame: .zero)
        helper.caption2 = [label]
        XCTAssertEqual(label.font, UIFont.preferredFont(forTextStyle: .caption2))
    }

    func testFootnoteFallback() {
        let helper = DynamicTypeHelper()
        let label = UILabel(frame: .zero)
        helper.footnote = [label]
        XCTAssertEqual(label.font, UIFont.preferredFont(forTextStyle: .footnote))
    }

    func testHeadlineFallback() {
        let helper = DynamicTypeHelper()
        let label = UILabel(frame: .zero)
        helper.headline = [label]
        XCTAssertEqual(label.font, UIFont.preferredFont(forTextStyle: .headline))
    }

    func testLargeTitleFallback() {
        let helper = DynamicTypeHelper()
        let label = UILabel(frame: .zero)
        helper.largeTitle = [label]
        if #available(iOS 11.0, *) {
            XCTAssertEqual(label.font, UIFont.preferredFont(forTextStyle: .largeTitle))
        } else {
            XCTFail()
        }
    }

    func testSubheadlineFallback() {
        let helper = DynamicTypeHelper()
        let label = UILabel(frame: .zero)
        helper.subheadline = [label]
        XCTAssertEqual(label.font, UIFont.preferredFont(forTextStyle: .subheadline))
    }

    func testTitle1Fallback() {
        let helper = DynamicTypeHelper()
        let label = UILabel(frame: .zero)
        helper.title1 = [label]
        XCTAssertEqual(label.font, UIFont.preferredFont(forTextStyle: .title1))
    }

    func testTitle2Fallback() {
        let helper = DynamicTypeHelper()
        let label = UILabel(frame: .zero)
        helper.title2 = [label]
        XCTAssertEqual(label.font, UIFont.preferredFont(forTextStyle: .title2))
    }

    func testTitle3Fallback() {
        let helper = DynamicTypeHelper()
        let label = UILabel(frame: .zero)
        helper.title3 = [label]
        XCTAssertEqual(label.font, UIFont.preferredFont(forTextStyle: .title3))
    }

}
