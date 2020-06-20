//
//  main.swift
//  QLSV
//
//  Created by Tung on 6/15/20.
//  Copyright © 2020 Tung. All rights reserved.
//

import Foundation

class sinhvien {
    var ten : String
    var tuoi : Int
    var sdt : String?
    init(ten : String, tuoi : Int, sdt : String?) {
        self.ten = ten
        self.tuoi = tuoi
        self.sdt = sdt
    }
    func getinforsinhvien() -> String {
        if self.sdt != nil
        {
            return "Ten :" + self.ten + ", Tuoi : " + String(self.tuoi) + ", So dien thoai : " + self.sdt!
        }
        else {
            return "Ten :" + self.ten + ", Tuoi : " + String(self.tuoi)
        }
        
    }
}
class Lop {
    var tenlop : String
    var gvcn : String
    var listsv = [sinhvien]()
    init(tenlop : String, gvcn : String) {
        self.tenlop = tenlop
        self.gvcn = gvcn
    }
    func addsinhvien(ten : String, tuoi : Int, sdt : String?)
    {
        let sv = sinhvien(ten : ten, tuoi : tuoi, sdt : sdt)
        listsv.append(sv)
    }
    
    func addSV(_ arrSV: [sinhvien]){
        listsv.append(contentsOf: arrSV)
    }
    func updategiaovien(gvcn : String)
    {
       self.gvcn = gvcn
    }
    func timsinhvientheoten(ten : String) {
        
        if listsv.count == 0 {
           print("ko co sinh vien trong lop nay !")
        } else {
            for index in 0..<listsv.count
            {
                if listsv[index].ten == ten{
                   listsv[index].ten = "Đông"
                    break
                }
            }
           
            
        }
    }
    func deletesinhvientheoten(ten : String) -> Bool{
        if listsv.count == 0 {
            return false
        } else {
            for index in 0..<listsv.count
            {
                if listsv[index].ten == ten{
                    listsv.remove(at: index)
                    break
                }
            }
            return true
        }

    }
    func updatesinhvientheoten(ten : String) -> String {
        return ""
    }
    func getinforgiaovien() -> String {
        
            return "Ten lop :" + self.tenlop + ", Giao vien : " + self.gvcn
        }
    
    func thongTinHocVien() {
        var str = ""
        if listsv.count > 0 {
            for item in listsv {
               str += item.getinforsinhvien()
                str += "\n"
            }
        }
        print(str)
    }
}

func taoSinhVien(){
    let sv1 = sinhvien(ten: "Nam", tuoi: 12, sdt: "")
    let sv2 = sinhvien(ten: "Hoàng", tuoi: 12, sdt: "")
    let sv3 = sinhvien(ten: "Linh", tuoi: 12, sdt: "")
    let sv4 = sinhvien(ten: "Huyền", tuoi: 12, sdt: "")
    let sv5 = sinhvien(ten: "Đức", tuoi: 12, sdt: "")
    let sv6 = sinhvien(ten: "Dương", tuoi: 12, sdt: "123456")
    let sv7 = sinhvien(ten: "Tùng", tuoi: 12, sdt: "123456")
    let sv8 = sinhvien(ten: "Bằng", tuoi: 12, sdt: "123456")
    let sv9 = sinhvien(ten: "Bắc", tuoi: 12, sdt: "123456")
    let sv10 = sinhvien(ten: "Thanh", tuoi: 12, sdt: "123456")
    
    let class1 = Lop(tenlop: "Techmaster", gvcn: "Quỳnh")
    class1.updategiaovien(gvcn: "Quỳnh Xinh")
    print(class1.getinforgiaovien())
    class1.addSV([sv1, sv2, sv3, sv4, sv5, sv6, sv7, sv8, sv9, sv10])
    
    print(class1.listsv.count)
    class1.deletesinhvientheoten(ten: "Đức")
    class1.deletesinhvientheoten(ten: "Lan")
    print(class1.listsv.count)
    class1.timsinhvientheoten(ten: "Nam")
    class1.timsinhvientheoten(ten: "Bắc")
    class1.thongTinHocVien()
    
}

taoSinhVien()
//var lop  = Lop(tenlop : "techmaster", gvcn : "Quynh")
//lop.addsinhvien(ten : "Duc Anh", tuoi : 27, sdt : nil)
//lop.updategiaovien(gvcn: "Quynhxinh")
//
//var sinhVien1 = sinhvien(ten: "tung", tuoi: 44, sdt: nil)
//print(sinhVien1.getinforsinhvien())


//func timkiemtheoten(ten : String) -> Array<String>
//{
//    var mang : [String] = ["Nam", "Hoàng", "Linh", "Huyền", "Đức", "Dương", "Tùng", "Bằng", "Bắc", "Thanh"]
//    for index in 0..<mang.count
//    {
//        if mang[index] == "Nam" || mang[index] == "Bắc"{
//            mang[index] = "Đông"
//        }
//        mang.remove(at: 4)
//
//    }
//    return mang
//}
//func deletetheoten(ten : String) -> Array<String>{
//    var mang : [String] = ["Nam", "Hoàng", "Linh", "Huyền", "Đức", "Dương", "Tùng", "Bằng", "Bắc", "Thanh"]
//    for index in 0..<mang.count
//    {
//        if mang[index] == "Đức"{
//            mang.remove(at: index)
//            break
//        }
//    }
//
//    return mang
//}
//print(timkiemtheoten(ten: "Nam"))
//print(deletetheoten(ten: "Đức"))



