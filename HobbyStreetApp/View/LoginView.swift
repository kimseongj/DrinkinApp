//
//  LoginView.swift
//  HobbyStreetApp
//
//  Created by kimseongjun on 2023/01/16.
//

import UIKit

class LoginViewController: UIViewController {
    
    let loginView = LoginView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "회원가입"
        view.backgroundColor = .green
        configureUI()
        
    }
    
    func configureUI() {
        view.addSubview(loginView)
        
        loginView.snp.makeConstraints { make in
            make.leading.trailing.top.bottom.equalToSuperview()
        }
    }
}

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
        idTextField.layer.cornerRadius = 10
        idTextField.layer.borderWidth = 1.5
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
        passwordTextField.layer.cornerRadius = 10
        passwordTextField.layer.borderColor = UIColor.black.cgColor
        passwordTextField.layer.borderWidth = 1.5
//        passwordTextField.
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
        nicknameTextField.layer.cornerRadius = 10
        nicknameTextField.layer.borderColor = UIColor.black.cgColor
        nicknameTextField.layer.borderWidth = 1.5
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
//        self.addSubview(agreeingClauseLabel)
//        self.addSubview(watchingClauseButton)

        idLabel.snp.makeConstraints {make in
            make.top.equalToSuperview().offset(40)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(17)
        }
        idTextField.snp.makeConstraints { make in
            make.top.equalTo(idLabel.snp.bottom).offset(16)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(42)
        }
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(idTextField.snp.bottom).offset(26)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(17)
        }
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(16)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(42)
        }
        nicknameLabel.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(26)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(17)
        }
        nicknameTextField.snp.makeConstraints { make in
            make.top.equalTo(nicknameLabel.snp.bottom).offset(16)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(42)
        }
    }
}

//네비게이션 스크롤뷰 
