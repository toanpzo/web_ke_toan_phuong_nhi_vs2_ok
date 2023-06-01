import 'package:dashboard_ui/components/header.dart';
import 'package:dashboard_ui/components/images.dart';
import 'package:dashboard_ui/constants.dart';
import 'package:flutter/material.dart';


class GioiThieuScreen extends StatefulWidget {
  const GioiThieuScreen({Key key}) : super(key: key);

  @override
  State<GioiThieuScreen> createState() => _GioiThieuScreenState();
}

class _GioiThieuScreenState extends State<GioiThieuScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(),
        SizedBox(height: defaultPadding),
        ImageWidget(path: "assets/images/baner.JPEG",),
        SizedBox(height: defaultPadding),
        Text("CÔNG TY TNHH TƯ VẤN KẾ TOÁN PHƯƠNG NHI",
          textAlign: TextAlign.left,
          style: TextStyle(color: Colors.orange,fontSize: 32),

        ),

        Text('''Với đội ngũ dày dặn kinh nghiệm hơn 10 năm trong nghề, đã từng giữ các chức vụ chủ chốt trong các công ty lớn cũng như đang hỗ trợ cho nhiều doanh nghiệp vừa và nhỏ chúng tôi tự tin mình có thể làm hài lòng các vị khách khó tính nhất. 
            Đặc biệt: Chúng tôi có thể linh hoạt sử dụng nhiều loại phần mềm khác nhau hoặc có thể giới thiệu giúp khách hàng và nhân viên công ty sử dụng những phần mềm với giao diện dễ sử dụng và cho ra số liệu chuẩn xác cùng mức chi phí phải chăng!
              ''',
          textAlign: TextAlign.justify,
          style: TextStyle(color: Colors.white,fontSize: 24),


        ),

        Text("*****Các Dịch Vụ Nổi Bật Ở Công Ty Chúng Tôi",
          textAlign: TextAlign.left,
          style: TextStyle(color: Colors.blue,fontSize: 32),

        ),

        Text('''' 
            - Đăng ký mới Giấy Phép Kinh Doanh/Cấp lại do mất/ Sửa đổi thông tin..
            - Setup quy trình giữa các bộ phận trong công ty.
            - Hỗ trợ về mặt pháp lý hợp đồng lao động - hợp đồng kinh tế ...v..v..
            - Phân tích số liệu tài chính, tư vấn và đưa ra giải pháp hỗ trợ chiến lược cho doanh nghiệp.
            - Hỗ trợ lập kế hoạch tài chính theo hàng tuần và hàng tháng.''',
          textAlign: TextAlign.left,
          style: TextStyle(color: Colors.white,fontSize: 24),

        ),








        // Row(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Expanded(flex: 5, child: MyFiles()),
        //     if (!CustomResponsive.isMobile(context))
        //       SizedBox(width: defaultPadding),
        //     if (!CustomResponsive.isMobile(context))
        //       Expanded(flex: 2, child: StorageDetails())
        //   ],
        // )
      ],
    );
  }
}
