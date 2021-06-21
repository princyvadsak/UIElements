//
//  ViewController.swift
//  UIElements
//
//  Created by DCS on 16/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let lbltitle:UILabel = {
        let lbl1 = UILabel()
        lbl1.text = "Registration For Jobs"
        lbl1.textAlignment = .left
        lbl1.textColor = .blue
        lbl1.backgroundColor = .white
        return lbl1
    }()
    private let lblName:UILabel = {
        let lbl1 = UILabel()
        lbl1.text = "Name:"
        lbl1.textAlignment = .left
        lbl1.textColor = .blue
        lbl1.backgroundColor = .white
        return lbl1
    }()
    private let lbldob:UILabel = {
        let lbl1 = UILabel()
        lbl1.text = "Date Of Birth::"
        lbl1.textAlignment = .left
        lbl1.textColor = .blue
        lbl1.backgroundColor = .white
        return lbl1
    }()
    private let lbladdress:UILabel = {
        let lbl1 = UILabel()
        lbl1.text = "Address:"
        lbl1.textAlignment = .left
        lbl1.textColor = .blue
        lbl1.backgroundColor = .white
        return lbl1
    }()
    private let lblgender:UILabel = {
        let lbl1 = UILabel()
        lbl1.text = "Select Gender:"
        lbl1.textAlignment = .left
        lbl1.textColor = .blue
        lbl1.backgroundColor = .white
        return lbl1
    }()
    private let lbltitleage:UILabel = {
        let lbl1 = UILabel()
        lbl1.text = "Age:"
        lbl1.textAlignment = .left
        lbl1.textColor = .blue
        lbl1.backgroundColor = .white
        return lbl1
    }()
    private let lblage:UILabel = {
        let lbl1 = UILabel()
        lbl1.text = "18"
        lbl1.textAlignment = .left
        lbl1.textColor = .blue
        lbl1.backgroundColor = .white
        return lbl1
    }()
    
    private let lbltitleexp:UILabel = {
        let lbl1 = UILabel()
        lbl1.text = "Experience:"
        lbl1.textAlignment = .left
        lbl1.textColor = .blue
        lbl1.backgroundColor = .white
        return lbl1
    }()
    private let lblexp:UILabel = {
        let lbl1 = UILabel()
        lbl1.text = "0"
        lbl1.textAlignment = .left
        lbl1.textColor = .blue
        lbl1.backgroundColor = .white
        return lbl1
    }()
    
    private let lbljobtype:UILabel = {
        let lbl1 = UILabel()
        lbl1.text = "Do You like Full Time Job?"
        lbl1.textAlignment = .left
        lbl1.textColor = .blue
        lbl1.backgroundColor = .white
        return lbl1
    }()
    
    private let lblstate:UILabel = {
        let lbl1 = UILabel()
        lbl1.text = "Select State:"
        lbl1.textAlignment = .left
        lbl1.textColor = .blue
        lbl1.backgroundColor = .white
        return lbl1
    }()
    
    
    private let txtName:UITextField = {
        let txtname = UITextField()
        txtname.placeholder = "Enter Your Name"
        txtname.textAlignment = .center
        txtname.borderStyle = .roundedRect
        txtname.backgroundColor = .yellow
        return txtname
    }()
    
    private let myTextView:UITextView = {
        let textView = UITextView()
        textView.text = "Enter Your Address"
        textView.textAlignment = .center
        textView.backgroundColor = .yellow
        return textView
    }()
    
    private let BtnRegister:UIButton = {
        let button = UIButton()
        button.setTitle("Next", for: .normal)
        button.addTarget(self, action: #selector(handleButtonClick), for: .touchUpInside)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 6
        return button
    }()
    private let dob:UIDatePicker = {
        let dob1 = UIDatePicker()
        dob1.datePickerMode = .dateAndTime
        dob1.timeZone = TimeZone(secondsFromGMT: 0)
        //dob1.addTarget(self, action: #selector(handleDateChange), for: .valueChanged)
        return dob1
    }()
    private let gender:UISegmentedControl = {
        let gen = UISegmentedControl()
        gen.insertSegment(withTitle: "Male", at: 0, animated: true)
        gen.insertSegment(withTitle: "Female", at: 1, animated: true)
        gen.selectedSegmentIndex = 0
        //gen.addTarget(self, action: #selector(handleSegmentedControl), for: .valueChanged)
        return gen
    }()
    private let age:UIStepper = {
        let stepper = UIStepper()
        stepper.minimumValue = 18
        stepper.maximumValue = 50
        stepper.addTarget(self, action: #selector(handleStepper), for: .valueChanged)
        return stepper
    }()
    private let experience:UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 30
        slider.addTarget(self, action: #selector(handleSlider), for: .valueChanged)
        return slider
    }()
    

    private let page:UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = 2
        //pageControl.backgroundStyle = .prominent
        pageControl.addTarget(self, action: #selector(handlePageControl), for: .valueChanged)
        return pageControl
    }()
    
    private let jobtype:UISwitch = {
        let switcher = UISwitch()
        //switcher.addTarget(self, action: #selector(handleSwitch), for: .valueChanged)
        return switcher
    }()
    
    @objc func handleActivity() {
        DispatchQueue.main.async {
            self.myActivityIndicatorView.isHidden = !self.myActivityIndicatorView.isHidden
            self.myActivityIndicatorView.isHidden ? self.myActivityIndicatorView.stopAnimating() : self.myActivityIndicatorView.startAnimating()
        }
    }
    
    private let myActivityIndicatorView:UIActivityIndicatorView = {
        let activity = UIActivityIndicatorView()
        //activity.style = .large
        activity.color = .blue
        return activity
    }()
    private let myPickerView = UIPickerView()
    private let pickerData = ["Andhra Pradesh", "Arunachal Pradesh", "Assam", "Bihar", "Chhattisgarh", "Goa", "Gujarat", "Haryana", "Himachal Pradesh", "Jammu and Kashmir", "Jharkhand", "Karnataka", "Kerala", "Madhya Pradesh", "Maharashtra", "Manipur", "Meghalaya", "Mizoram", "Nagaland", "Odisha", "Punjab", "Rajasthan", "Sikkim", "Tamil Nadu", "Telangana", "Tripura", "Uttarakhand", "Uttar Pradesh", "West Bengal", "Andaman and Nicobar Islands", "Chandigarh", "Dadra and Nagar Haveli", "Daman and Diu", "Delhi", "Lakshadweep", "Puducherry"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("test")
        title="Registration Form"
        
        view.addSubview(lblName)
        view.addSubview(lbldob)
        view.addSubview(lblgender)
        view.addSubview(lbladdress)
        view.addSubview(lblexp)
        view.addSubview(lbltitleexp)
        view.addSubview(lblage)
        view.addSubview(lbltitleage)
        view.addSubview(lblstate)
        view.addSubview(page)
        view.addSubview(experience)
        view.addSubview(age)
        view.addSubview(jobtype)
        view.addSubview(lbljobtype)
        view.addSubview(txtName)
        view.addSubview(dob)
        view.addSubview(gender)
        view.addSubview(myTextView)
        view.addSubview(myPickerView)
        
        myPickerView.dataSource = self
        myPickerView.delegate = self
        
        view.addSubview(BtnRegister)
        
        view.addSubview(myActivityIndicatorView)
    }
    override func viewDidLayoutSubviews() {
        lbltitle.frame = CGRect(x: 20, y: 30, width: view.width - 40, height: 40)
        
        lblName.frame = CGRect(x: 20, y: lbltitle.bottom + 20, width: view.width - 300, height: 40)
        txtName.frame = CGRect(x: 20 + lblName.width, y: lbltitle.bottom + 20, width: view.width - lblName.width - 40, height: 40)
        
        lbldob.frame = CGRect(x: 20, y: lblName.bottom + 20, width: view.width - 250, height: 40)
        dob.frame = CGRect(x: 20 + lbldob.width, y: txtName.bottom + 20, width: view.width - lbldob.width - 40, height: 40)
        
        
        lbltitleage.frame = CGRect(x: 20, y: lbldob.bottom + 20, width: view.width - 300, height: 40)
        lblage.frame = CGRect(x: 20 + lbltitleage.width, y: lbldob.bottom + 20, width: view.width - lbltitleage.width - 200, height: 40)
        age.frame = CGRect(x: 20 + lbltitleage.width + lblage.width, y: lbldob.bottom + 20, width: view.width - lbltitleage.width - 40, height: 40)
        
        lblgender.frame = CGRect(x: 20, y: lblage.bottom + 20, width: view.width - 300, height: 40)
        gender.frame = CGRect(x: 20 + lblgender.width, y: lblage.bottom + 20, width: view.width - lblgender.width - 40, height: 40)
        
        
        lbladdress.frame = CGRect(x: 20, y: lblgender.bottom + 20, width: view.width - 300, height: 40)
        myTextView.frame = CGRect(x: 20 + lbladdress.width, y: gender.bottom + 20, width: view.width - lbladdress.width - 40, height: 40)
        
        lblstate.frame = CGRect(x: 20, y: lbladdress.bottom + 20, width: view.width - 190, height: 80)
        myPickerView.frame = CGRect(x: 20, y: lbladdress.bottom + 20, width: view.width - 40, height: 80)
        
        
        lbltitleexp.frame = CGRect(x: 20, y: lblstate.bottom + 20, width: view.width - 280, height: 40)
        lblexp.frame = CGRect(x: 20 + lbltitleexp.width, y: lblstate.bottom + 20, width: view.width - lbltitleexp.width - 160, height: 40)
        experience.frame = CGRect(x: 60 + lblexp.width, y: lblstate.bottom + 20, width: view.width - lblexp.width - lbltitleexp.width - 40 , height: 40)
        
        jobtype.frame = CGRect(x: 20 , y: lblexp.bottom + 20, width: view.width - 300, height: 40)
        lbljobtype.frame = CGRect(x: 20 + jobtype.width, y: lblexp.bottom + 20, width: view.width - jobtype.width  - 40 , height: 40)
        
        BtnRegister.frame = CGRect(x: 20, y: jobtype.bottom + 20, width: view.width - 40, height: 40)
        myActivityIndicatorView.frame = CGRect(x: 20, y:BtnRegister.bottom + 20, width: view.width - 40, height: 40)
        page.frame = CGRect(x: 20, y: myActivityIndicatorView.bottom + 20, width: view.width - 40, height: 40)
        
    }
    
    @objc func handleButtonClick() {
        print("Clicked!")
        
        let vc = page2()
        
        navigationController?.pushViewController(vc, animated: true)
    }

    @objc func handleStepper() {
        lblage.text = String(age.value)
    }
    
    @objc func handleSlider() {
        lblexp.text = String(experience.value)
    }
    
    @objc func handlePageControl() {
        
        if page.currentPage == 1
        {
            let vc = ViewController()
            navigationController?.pushViewController(vc, animated: true)

        }
        if page.currentPage == 2
        {
           let vc = page2()
            navigationController?.pushViewController(vc, animated: true)

        }
    }
    
    
}


extension ViewController : UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(pickerData[row])
    }
}
