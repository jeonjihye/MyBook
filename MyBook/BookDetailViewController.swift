//
//  BookDetailViewController.swift
//  MyBook
//
//  Created by Admin on 2021/08/24.
//

import UIKit

class BookDetailViewController: UIViewController {
    
    // 프로퍼티 생성
    var book:Book?

    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var writerTextField: UITextField!
    
    @IBOutlet weak var priceTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let currentBook = book{
            self.titleTextField.text = currentBook.title
            self.writerTextField.text = currentBook.writer
            self.priceTextField.text = String(currentBook.price)
        }
    
    }
    
    @IBAction func save(_ sender: Any) {
        
        // text 가 nil인 경우 물음표 뒤의 문자열 넣기
        book?.title = self.titleTextField.text ?? ""
        book?.writer = self.writerTextField.text ?? ""
        book?.price = Int(self.priceTextField.text ?? "0") ?? 0
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
