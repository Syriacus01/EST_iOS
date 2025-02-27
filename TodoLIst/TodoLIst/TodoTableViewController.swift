//
//  TodoTableViewController.swift
//  TodoLIst
//
//  Created by 조수원 on 2/27/25.
//

import UIKit

class TodoTableViewController: UITableViewController {
    
    var tasks = ["공부하기", "산책하기", "운동하기"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // 테이블 유의 섹션당 row의 개수를 반환하는 메서드
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count // tasks 배열의 요소 개수만큼의 행을 표시함
    }
    // 테이블 뷰의 각 셀을 설정하는 메서드
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 재사용 가능한 셀을 가져오거나, 없으면 새로 생성
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // 현재 indexPath.row에 해당하는 tasks 배열의 값을 셀에 표시
        cell.textLabel?.text = tasks[indexPath.row]

        return cell // 설정된 셀 반환
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    // 테이블 뷰에서 row를 삭제할 때 호출되는 메서드
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        // 삭제 동작이 감지되었을 경우
        if editingStyle == .delete {
            
            // tasks 배열에서 해당 인덱스의 데이터 삭제
            tasks.remove(at: indexPath.row)
            // 테이블 뷰에서 해당 행을 애니메이션과 함께 삭제
            tableView.deleteRows(at: [indexPath], with: .fade)
        }    
    }


    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
