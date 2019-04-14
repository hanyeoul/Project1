//
//  ViewController.swift
//  project
//
//  Created by SWUCOMPUTER on 14/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination
        let button = sender as! UIButton
        
        destination.title = button.titleLabel?.text
        
        let recipeView = segue.destination as! recipeViewController
        
        if(segue.identifier == "chicken") {
            recipeView.text = "재료: 닭 1마리, 감자 1개, 양파 1/2개, 당근 1/2개, 청고추, 홍고추, 당면, 참기름, 간장, 설탕, 물, 대파, 간마늘, 생강, 미향(생략가능)\n\n1. 볼에 물, 간장, 설탕, 미향을 넣어주세요\n2. 다진대파, 다진마늘, 생강, 참기름을 넣고 저어주세요.\n3. 손질된 닭을 큰 볼에 담아 준비한 뒤, 간장을 넣고 냉장고에 30분~1시간 정도 재워주세요.\n4. 냄비에 불을 올려 숙성된 닭과 간장을 그대로 넣고, 물 1컵을 추가로 넣고 끓여주세요. 고기가 50% 익으면 감자,당근을 넣어주세요.\n5. 감자, 당근이 반정도 익었을 때 양파,고추를 넣어주세요.\n6. 재료가 다 익으면 당면을 넣고 당면이 다 익을때까지 졸이면 완성."
        } else if(segue.identifier == "pork") {
            recipeView.text = "재료: 돼지고기 600g, 양파 3개, 청양고추 5개, 대파 한 뿌리, 고추장, 고춧가루, 다진마늘, 간장, 매실액기스, 돼지갈비양념\n\n1. 고추장 한 큰술, 고추가루 세 큰술, 다진마늘 두 큰술, 간장 한 큰술, 매실액기스 두 큰술, 돼지갈비양념 두 큰술을 모두 넣어줍니다\n2. 골고루 섞어서 제육볶음 양념장을 만들어 줍니다.\n3. 청양고추와 양파는 잘게 썰어 돼지고기와 함께 양념장에 버무려줍니다.\n4. 야채와 고기에 양념이 골고루 베이면 냉장고에서 30분에서 1시간 정도 숙성시켜 줍니다.\n5. 30분 후 숙성된 고기는 중간불에서 볶아 줍니다.\n6. 10분 정도 볶아주면 완성."
        } else if(segue.identifier == "stew") {
            recipeView.text = "재료: 감자 3개, 양파 1개, 새송이버섯, 청양고추,  두부 1/2모, 대파, 마늘, 고춧가루, 된장, 멸치가루, 물\n\n1. 청양고추와 파를 제외한 모든 재료를 큼직하게 썰어놓습니다.\n2. 청양고추와 파는 쫑쫑 썰어놓습니다.\n3. 냄비에 물을 2/3정도 넣고 된장과 멸치가루를 풀어 끓기 시작하면 감자, 양파, 새송이버섯을 넣고 끓여줍니다.\n4. 감자가 적당히 익었으면 두부, 파, 청양고추, 마늘, 고춧가루를 넣고 한번 더 끓입니다.\n5. 감자가 부서지지 않도록 끓여서 뚝배기에 담아주면 완성."
        } else if(segue.identifier == "stew2") {
            recipeView.text = "재료: 김치, 물, 돼지고기, 대파, 두부, 맥주, 된장\n\n1. 김치를 먼저 익혀둔 뒤 냄비에 김치를 넣고 물이나 육수를 부어 은근히 끓여주세요.\n2. 고기는 냄새를 잡기 위해 맥주에 된장을 풀어 한 번 삶아서 준비해둡니다.\n3. 냄비에 익혀둔 김치와 고기를 넣어줍니다.\n4. 생수나 육수를 붓고 끓여주세요.\n5. 두부 한 모를 썰어 넣어주세요.\n6. 대파도 썰어 넣어주면 완성.\n"
        }
    }


}

