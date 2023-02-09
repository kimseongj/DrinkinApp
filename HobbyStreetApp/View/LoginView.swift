//
//  LoginView.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/01/16.
//

import UIKit

class LoginView: UIView {
    
    let idLabel: UILabel = {
        let idLabel = UILabel()
        idLabel.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        idLabel.textColor = .black
        idLabel.text = "아이디"
        return idLabel
    }()
    
    let idTextField: UITextField = {
        let idTextField = UITextField()
        idTextField.placeholder = "아이디"
        idTextField.layer.cornerRadius = 3
        return idTextField
    }()
    
    let passwordLabel: UILabel = {
        let passwordLabel = UILabel()
        passwordLabel.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        passwordLabel.textColor = .black
        passwordLabel.text = "패스워드"
        return passwordLabel
    }()
    
    let passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.placeholder = "8자 이상"
        passwordTextField.layer.cornerRadius = 3
        return passwordTextField
    }()
    
    let nicknameLabel: UILabel = {
        let nicknameLabel = UILabel()
        nicknameLabel.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        nicknameLabel.textColor = .black
        nicknameLabel.text = "이름 또는 닉네임"
        return nicknameLabel
    }()
    
    let nicknameTextField: UITextField = {
        let nicknameTextField = UITextField()
        nicknameTextField.placeholder = "파란우산"
        nicknameTextField.layer.cornerRadius = 3
        return nicknameTextField
    }()
    
    let agreeingClauseLabel: UILabel = {
        let agreeingClauseLabel = UILabel()
        agreeingClauseLabel.font = UIFont.systemFont(ofSize: 12)
        agreeingClauseLabel.textColor = .black
        agreeingClauseLabel.text = "(필수)테이비 이용약관에 동의합니다."
        return agreeingClauseLabel
    }()
    
    let watchingClauseButton: UIButton = {
        let watchingClauseButton = UIButton()
        return watchingClauseButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureUI() {
        self.addSubview(idLabel)
        self.addSubview(idTextField)
        self.addSubview(passwordLabel)
        self.addSubview(passwordTextField)
        self.addSubview(nicknameLabel)
        self.addSubview(nicknameTextField)
        self.addSubview(agreeingClauseLabel)
        self.addSubview(watchingClauseButton)

        idLabel.snp.makeConstraints { make in
            
        }
        
    }
}

//네비게이션 스크롤뷰 
final class CheckBox: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func setChecked(_ isChecked: Bool) {
        if isChecked {
             
        }
    }
}
