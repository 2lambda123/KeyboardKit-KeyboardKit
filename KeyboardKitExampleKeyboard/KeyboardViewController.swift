//
//  KeyboardViewController.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2018-03-04.
//  Copyright © 2018 Daniel Saidi. All rights reserved.
//

/*
 
 In the demo app, the keyboard will handle system actions as
 normal (e.g. change keyboard, space, new line etc.), inject
 plain string characters into the proxy and handle emojis by
 copying them on tap and saving them to photos on long press.
 
 IMPORTANT: To use this demo keyboard, you have to enable it
 in system settings ("Settings/General/Keyboards") then give
 it full access (this requires enabling `RequestsOpenAccess`
 in `Info.plist`) if you want to use image buttons. You must
 also add a `NSPhotoLibraryAddUsageDescription`  to the host
 app's `Info.plist` if you want to be able to save images to
 the photo album. This is already taken care of in this demo
 app, so you can just copy the setup.
 
 */

import UIKit
import KeyboardKit

class KeyboardViewController: KeyboardInputViewController {
    
    
    // MARK: - View Controller Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        keyboardActionHandler = DemoKeyboardActionHandler(inputViewController: self)
        setupKeyboard()
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        setupKeyboard(with: size.width)
    }
    
    override func viewWillSyncWithTextDocumentProxy() {
        super.viewWillSyncWithTextDocumentProxy()
//        let isDark = textDocumentProxy.keyboardAppearance == .dark
//        view.tintColor = isDark ? .white : .black
    }
    
    override func handleInputModeList(from view: UIView, with event: UIEvent) {
        super.handleInputModeList(from: view, with: event)
    }
    
    
    // MARK: - Setup
    
    func setupKeyboard(with width: CGFloat? = nil) {
        keyboardStackView.removeAllArrangedSubviews()
        setupTopSystemButtons()
        setupCollectionView(with: width)
        setupBottomSystemButtons()
    }
    
    func setupTopSystemButtons() {
        let actions: [KeyboardAction] = [.switchKeyboard, .character("2"), .character("3"), .character("4"), .character("5")]
        let row = KeyboardButtonRow(height: 50, actions: actions) { return button(for: $0) }
        row.buttonStackView.distribution = .equalSpacing
        keyboardStackView.addArrangedSubview(row)
    }
    
    func setupCollectionView(with width: CGFloat? = nil) {
        let actions: [KeyboardAction] = [.switchKeyboard, .dismissKeyboard, .character("3"), .character("4"), .character("5")]
        let config = KeyboardButtonRowCollectionView.Configuration(rowHeight: 50, rowsPerPage: 3, buttonsPerRow: 6)
        let view = KeyboardButtonRowCollectionView(actions: actions + actions + actions, configuration: config) { [unowned self] in return self.button(for: $0) }
        keyboardStackView.addArrangedSubview(view)
    }
    
    func setupBottomSystemButtons() {
        let actions: [KeyboardAction] = [.switchKeyboard, .character("2"), .character("3"), .character("4"), .character("5")]
        let row = KeyboardButtonRow(height: 50, actions: actions) { return button(for: $0) }
        row.buttonStackView.distribution = .equalSpacing
        keyboardStackView.addArrangedSubview(row)
    }
//    
//    func setupKeyboard(for size: CGSize) {
//        let isLandscape = size.width > 400
//        let height: CGFloat = isLandscape ? 150 : 200
//        let rowsPerPage = isLandscape ? 3 : 4
//        let buttonsPerRow = isLandscape ? 8 : 6
//        gridPresenter.setup(withHeight: height, rowsPerPage: rowsPerPage, buttonsPerRow: buttonsPerRow)
//    }
    
    
    // MARK: - Properties
    
    var alerter = ToastAlert()
}


// MARK: - Private Functions

extension KeyboardViewController {
    
    func button(for action: KeyboardAction) -> UIView {
        let view = DemoButton.initWithDefaultNib(owner: self)
        view.setup(with: action, in: self, appearance: textDocumentProxy.keyboardAppearance ?? .dark, tintColor: .black)
        view.width = 50
        return view
    }
}
