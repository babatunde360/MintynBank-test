//
//  MintynBank_testTests.swift
//  MintynBank testTests
//
//  Created by Babatunde Oladotun on 24/11/2022.
//

import XCTest
@testable import MintynBank_test
@testable import FlagPhoneNumber


class MintynBank_testTests: XCTestCase {
    let textfield = FPNTextField()
    let button = UIButton()

    func testSetFlag() {
        textfield.setFlag(countryCode: FPNCountryCode(rawValue: "NG")!)
        textfield.set(phoneNumber: "08022122344")
        XCTAssertEqual(textfield.selectedCountry?.code.rawValue, "NG")
    }
    
    func testSetPhoneNumberCode() {
        textfield.setFlag(countryCode: FPNCountryCode(rawValue: "NG")!)
        textfield.set(phoneNumber: "08023162356")
        XCTAssertEqual(textfield.selectedCountry?.phoneCode, "+234")
    }
    
    func testSetPhoneNumber() {
            textfield.set(phoneNumber: "+2348173231256")
            XCTAssertEqual(textfield.selectedCountry?.phoneCode, "+234")
            XCTAssertEqual(textfield.selectedCountry?.code.rawValue, "NG")
            XCTAssertEqual(textfield.text, "817 323 1256")
    }
    


    
}
