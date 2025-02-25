
import UIKit

class ViewController: UIViewController {
    var imageIndex: Int = 0
    let images: [UIImage] = [ // 배열로 이미지 목록을 만들고
        UIImage(named: "1")!,
        UIImage(named: "2")!,
        UIImage(named: "3")!,
        UIImage(named: "4")!,
        UIImage(named: "5")!,
        UIImage(named: "6")!
    ]
    
    @IBOutlet weak var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.image = images[imageIndex] // 화면에 바로 표시되는 이미지는 첫 인덱스의 이미지

    }

    @IBAction func btnPrevious(_ sender: Any) {
        if imageIndex > 0 { // 현재 인덱스가 0보다 크면 이전 이미지로
            imageIndex -= 1
        } else {
            imageIndex = images.count - 1  // 첫 이미지에서 이전으로 가면 마지막 이미지로 연결
        }
        imgView.image = images[imageIndex]
        print("이전 사진: \(imageIndex + 1)")
    }
    
    @IBAction func btnNext(_ sender: Any) {
        if imageIndex < images.count - 1 { // 현재 인덱스가 마지막 이미지보다 작으면 다음 이미지로
            imageIndex += 1
        } else {
            imageIndex = 0 // 마지막 이미지에서 다음으로 가면 첫 이미지로 이동
        }
        imgView.image = images[imageIndex]
        print("다음 사진: \(imageIndex + 1)")
    }
}
