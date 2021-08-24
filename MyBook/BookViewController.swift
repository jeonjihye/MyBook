//
//  BookViewController.swift
//  MyBook
//
//  Created by Admin on 2021/08/24.
//

import UIKit

class BookViewController: UIViewController {
    
    var book:Book?

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var writerLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        book = Book(title: "열혈C++", writer: "홍길동", price: 3000)
        
        if let currentBook = book{
            titleLabel.text = currentBook.title
            writerLabel.text = currentBook.writer
            // Int > String 해당타입으로 새롭게 만들어줌
            priceLabel.text = String(currentBook.price)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let currentBook = book{
            titleLabel.text = currentBook.title
            writerLabel.text = currentBook.writer
            // Int > String 해당타입으로 새롭게 만들어줌
            priceLabel.text = String(currentBook.price)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let bookDetailViewController = segue.destination as? BookDetailViewController{
            bookDetailViewController.book = self.book
        }
    }
    

    @IBAction func modify(_ sender: Any) {
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
