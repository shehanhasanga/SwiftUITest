//
//  Uitesting_Uitest.swift
//  UitestingUITests
//
//  Created by shehan karunarathna on 2022-02-21.
//

import XCTest

class Uitesting_Uitest: XCTestCase {
    let app  = XCUIApplication()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

   
    
    func test_Uitesting_signupButton_shouldnotSignIN(){
        let textField  =  app.textFields["textField"]
        
        // when
        textField.tap()
       
        
        let returnButton  =  app/*@START_MENU_TOKEN@*/.buttons["Return"]/*[[".keyboards",".buttons[\"return\"]",".buttons[\"Return\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
        returnButton.tap()
        let signUpButton = app.buttons["sign up"]
        signUpButton.tap()
        
        let navBar  = app.navigationBars["Welcome!"]
        
        
        //Then
        XCTAssertFalse(navBar.exists)
    }
    func test_Uitesting_signupButton_shouldSignIN(){
        //given
        let textField  =  app.textFields["textField"]
        
        // when
        textField.tap()
        let aKey = app.keys["A"]
        aKey.tap()
        let aKey2 = app.keys["a"]
        aKey2.tap()
        aKey2.tap()
        aKey2.tap()
        aKey2.tap()
        
        let returnButton  =  app/*@START_MENU_TOKEN@*/.buttons["Return"]/*[[".keyboards",".buttons[\"return\"]",".buttons[\"Return\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
        returnButton.tap()
        let signUpButton = app.buttons["sign up"]
        signUpButton.tap()
        
        let navBar  = app.navigationBars["Welcome!"]
        
        
        //Then
        XCTAssertTrue(navBar.exists)
        
                
    }
    
    func test_SignInHomeView_showAlertButton_shouldDisplayAlert(){
        //given
        let textField  =  app.textFields["textField"]
        
        // when
        textField.tap()
        let aKey = app.keys["A"]
        aKey.tap()
        let aKey2 = app.keys["a"]
        aKey2.tap()
        aKey2.tap()
        aKey2.tap()
        aKey2.tap()
        
        let returnButton  =  app/*@START_MENU_TOKEN@*/.buttons["Return"]/*[[".keyboards",".buttons[\"return\"]",".buttons[\"Return\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
        returnButton.tap()
        let signUpButton = app.buttons["sign up"]
        signUpButton.tap()
        
        let navBar  = app.navigationBars["Welcome!"]
        
        
        
        //Then
        XCTAssertTrue(navBar.exists)
        
        let welcomeAlertButton = app.buttons["Show welcome alert"]
        welcomeAlertButton.tap()
        let alert = app.alerts["Welcome to the app!"]
        XCTAssertTrue(alert.exists)
        let alertButtons = alert.scrollViews.otherElements.buttons["OK"]
        sleep(1)
        alertButtons.tap()
        sleep(1)
        XCTAssertFalse(alert.exists)
    }
    func test_SignInHomeView_showAlertButton_shouldDismissAlert(){
        //given
        let textField  =  app.textFields["textField"]
        
        // when
        textField.tap()
        let aKey = app.keys["A"]
        aKey.tap()
        let aKey2 = app.keys["a"]
        aKey2.tap()
        aKey2.tap()
        aKey2.tap()
        aKey2.tap()
        
        let returnButton  =  app/*@START_MENU_TOKEN@*/.buttons["Return"]/*[[".keyboards",".buttons[\"return\"]",".buttons[\"Return\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
        returnButton.tap()
        let signUpButton = app.buttons["sign up"]
        signUpButton.tap()
        
        let navBar  = app.navigationBars["Welcome!"]
        
        
        
        //Then
        XCTAssertTrue(navBar.exists)
        
        let welcomeAlertButton = app.buttons["Show welcome alert"]
        welcomeAlertButton.tap()
        let alert = app.alerts["Welcome to the app!"]
        XCTAssertTrue(alert.exists)
    }
    
    func test_SignInHomeView_navigationLinkToDestination_shouldNavigateTodestinationAndGoBack(){
                
        //given
        let textField  =  app.textFields["textField"]
        
        // when
        textField.tap()
        let aKey = app.keys["A"]
        aKey.tap()
        let aKey2 = app.keys["a"]
        aKey2.tap()
        aKey2.tap()
        aKey2.tap()
        aKey2.tap()
        
        let returnButton  =  app/*@START_MENU_TOKEN@*/.buttons["Return"]/*[[".keyboards",".buttons[\"return\"]",".buttons[\"Return\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
        returnButton.tap()
        let signUpButton = app.buttons["sign up"]
        signUpButton.tap()
        
        let navBar  = app.navigationBars["Welcome!"]
        
        XCTAssertTrue(navBar.exists)
        
        app.buttons["Navigate"].tap()
        let destinationStaticText = app.staticTexts["Destination"]
        destinationStaticText.tap()
        
        XCTAssertTrue(destinationStaticText.exists)
        
        let backBtn = app.navigationBars.buttons["Welcome!"]
        backBtn.tap()
        
        XCTAssertTrue(navBar.exists)
      
//        app.navigationBars["Welcome!"].staticTexts["Welcome!"].tap()
        
    }
    
    func test_SignInHomeView_navigationLinkToDestination_odestinationAndGoBack(){
        
       
        //given
        let textField  =  app.textFields["textField"]
        
        // when
        textField.tap()
        let aKey = app.keys["A"]
        aKey.tap()
        let aKey2 = app.keys["a"]
        aKey2.tap()
        aKey2.tap()
        aKey2.tap()
        aKey2.tap()
        
        let returnButton  =  app/*@START_MENU_TOKEN@*/.buttons["Return"]/*[[".keyboards",".buttons[\"return\"]",".buttons[\"Return\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
        returnButton.tap()
        let signUpButton = app.buttons["sign up"]
        signUpButton.tap()
        
        let navBar  = app.navigationBars["Welcome!"]
        
        XCTAssertTrue(navBar.exists)
        
        app.buttons["Navigate"].tap()
        let destinationStaticText = app.staticTexts["Destination"]
        destinationStaticText.tap()
        
        XCTAssertTrue(destinationStaticText.exists)
      
                
    }
}
