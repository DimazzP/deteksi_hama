// import 'package:deteksi_hama/configs/app_colors.dart';
// import 'package:deteksi_hama/configs/font_family.dart';
// import 'package:deteksi_hama/screens/serangan_screen.dart';
// import 'package:deteksi_hama/widgets/listdata.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:firebase_database/ui/firebase_animated_list.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:page_animation_transition/animations/left_to_right_faded_transition.dart';
// import 'package:page_animation_transition/page_animation_transition.dart';

// class DashboardScreen extends StatefulWidget {
//   const DashboardScreen({super.key});

//   @override
//   State<DashboardScreen> createState() => _DashboardScreenState();
// }

// class _DashboardScreenState extends State<DashboardScreen> {
//   Query dbRef = FirebaseDatabase.instance.ref().child('data');
//   DatabaseReference reference = FirebaseDatabase.instance.ref().child('data');
//   final storage = FirebaseStorage.instance;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 15.w),
//             child: Column(
//               children: [
//                 SizedBox(height: 8.h),
//                 Container(
//                   alignment: Alignment.topLeft,
//                   child: Text("Hai, \nSelamat Datang",
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                           fontFamily: FontFamily.bold, fontSize: 28.sp)),
//                 ),
//                 SizedBox(height: 20.h),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       width: 160.w,
//                       height: 110.h,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10.r),
//                         color: Colors
//                             .white, // Ganti dengan warna latar belakang yang Anda inginkan
//                         boxShadow: [
//                           BoxShadow(
//                             color:
//                                 Colors.black.withOpacity(0.2), // Warna bayangan
//                             spreadRadius: 1, // Lebar bayangan
//                             blurRadius: 5, // Tingkat blur
//                             offset: const Offset(0, 3), // Geser bayangan (x, y)
//                           ),
//                         ],
//                       ),
//                       child: Padding(
//                         padding: EdgeInsets.only(top: 8.h, left: 10.w),
//                         child: Column(
//                           children: [
//                             Container(
//                               alignment: Alignment.topLeft,
//                               child: Text(
//                                 "Kondisi Lingkungan",
//                                 style: TextStyle(
//                                     fontSize: 16.sp, color: AppColors.textgrey),
//                               ),
//                             ),
//                             SizedBox(height: 10.h),
//                             Row(
//                               children: [
//                                 Image.asset('assets/images/world.png',
//                                     width: 50.w, height: 50.h),
//                                 Text(
//                                   "Gelap",
//                                   style: TextStyle(
//                                     fontSize: 20.sp,
//                                   ),
//                                 ),
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: 160.w,
//                       height: 110.h,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10.r),
//                         color: Colors.white,
//                         boxShadow: [
//                           BoxShadow(
//                             color:
//                                 Colors.black.withOpacity(0.2), // Warna bayangan
//                             spreadRadius: 1, // Lebar bayangan
//                             blurRadius: 5, // Tingkat blur
//                             offset: const Offset(0, 3), // Geser bayangan (x, y)
//                           ),
//                         ],
//                       ),
//                       child: Padding(
//                         padding: EdgeInsets.only(top: 8.h, left: 10.w),
//                         child: Column(
//                           children: [
//                             Container(
//                               alignment: Alignment.topLeft,
//                               child: Text(
//                                 "Jumlah Perangkat",
//                                 style: TextStyle(
//                                     fontSize: 16.sp, color: AppColors.textgrey),
//                               ),
//                             ),
//                             SizedBox(height: 10.h),
//                             Row(
//                               children: [
//                                 Image.asset('assets/images/iot.png',
//                                     width: 50.w, height: 50.h),
//                                 Text(
//                                   "4",
//                                   style: TextStyle(
//                                     fontSize: 20.sp,
//                                   ),
//                                 ),
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//                 SizedBox(height: 15.h),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       width: 160.w,
//                       height: 110.h,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10.r),
//                         color: Colors
//                             .white, // Ganti dengan warna latar belakang yang Anda inginkan
//                         boxShadow: [
//                           BoxShadow(
//                             color:
//                                 Colors.black.withOpacity(0.2), // Warna bayangan
//                             spreadRadius: 1, // Lebar bayangan
//                             blurRadius: 5, // Tingkat blur
//                             offset: const Offset(0, 3), // Geser bayangan (x, y)
//                           ),
//                         ],
//                       ),
//                       child: Padding(
//                         padding: EdgeInsets.only(top: 8.h, left: 10.w),
//                         child: Column(
//                           children: [
//                             Container(
//                               alignment: Alignment.topLeft,
//                               child: Text(
//                                 "Deteksi Gerakan",
//                                 style: TextStyle(
//                                     fontSize: 16.sp, color: AppColors.textgrey),
//                               ),
//                             ),
//                             SizedBox(height: 10.h),
//                             Container(
//                               alignment: Alignment.centerLeft,
//                               child: Text(
//                                 "Ada",
//                                 style: TextStyle(
//                                     fontSize: 20.sp,
//                                     fontFamily: FontFamily.bold),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: 160.w,
//                       height: 110.h,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10.r),
//                         color: Colors
//                             .white, // Ganti dengan warna latar belakang yang Anda inginkan
//                         boxShadow: [
//                           BoxShadow(
//                             color:
//                                 Colors.black.withOpacity(0.2), // Warna bayangan
//                             spreadRadius: 1, // Lebar bayangan
//                             blurRadius: 5, // Tingkat blur
//                             offset: const Offset(0, 3), // Geser bayangan (x, y)
//                           ),
//                         ],
//                       ),
//                       child: Padding(
//                         padding: EdgeInsets.only(top: 8.h, left: 10.w),
//                         child: Column(
//                           children: [
//                             Container(
//                               alignment: Alignment.topLeft,
//                               child: Text(
//                                 "Tikus Terdeteksi",
//                                 style: TextStyle(
//                                     fontSize: 16.sp, color: AppColors.textgrey),
//                               ),
//                             ),
//                             SizedBox(height: 10.h),

//                             // Row(
//                             //   children: [

//                             //     Text(
//                             //       "10",
//                             //       style: TextStyle(
//                             //           fontSize: 20.sp,
//                             //           fontFamily: FontFamily.bold,
//                             //           color: AppColors.black),
//                             //     ),
//                             //     SizedBox(width: 8.w),
//                             //     Text(
//                             //       "Serangan",
//                             //       style: TextStyle(
//                             //           fontSize: 20.sp,
//                             //           fontFamily: FontFamily.bold,
//                             //           color: AppColors.textgrey),
//                             //     ),
//                             //   ],
//                             // ),
//                             SizedBox(height: 8.h),
//                             // InkWell(
//                             //   onTap: () {
//                             // Navigator.of(context).push(
//                             //     PageAnimationTransition(
//                             //         page: const SeranganScreen(),
//                             //         pageAnimationType:
//                             //             LeftToRightFadedTransition()));
//                             //   },
//                             //   child: Row(
//                             //     mainAxisAlignment: MainAxisAlignment.end,
//                             //     children: [
//                             //       Text(
//                             //         "Lihat Selengkapnya",
//                             //         style: TextStyle(
//                             //           fontSize: 12.sp,
//                             //           color: AppColors.primary,
//                             //         ),
//                             //       ),
//                             //       Icon(
//                             //         Icons.arrow_circle_right,
//                             //         color: AppColors.primary,
//                             //         size: 14.sp,
//                             //       ),
//                             //       SizedBox(width: 8.w),
//                             //     ],
//                             //   ),
//                             // ),
//                           ],
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//                 SizedBox(height: 20.h),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text("Riwayat Ancaman",
//                         style: TextStyle(
//                             fontSize: 22.sp, fontFamily: FontFamily.semibold)),
//                     // Row(
//                     //   children: [
//                     //     TextButton(
//                     //         onPressed: () {
//                     //           Navigator.of(context).push(MaterialPageRoute(
//                     //               builder: (context) =>
//                     //                   const RiwayatAncamanScreen()));
//                     //         },
//                     //         child: Row(
//                     //           children: [
//                     //             const Text("Selengkapnya",
//                     //                 style: TextStyle(color: AppColors.primary)),
//                     //             SizedBox(width: 6.h),
//                     //             Icon(Icons.arrow_forward_outlined,
//                     //                 size: 15.h, color: AppColors.primary)
//                     //           ],
//                     //         )),
//                     //   ],
//                     // )
//                   ],
//                 ),
//                 SizedBox(height: 20.h),
//                 FirebaseAnimatedList(
//                   shrinkWrap: true,
//                   physics: const NeverScrollableScrollPhysics(),
//                   query: dbRef,
//                   itemBuilder: (context, snapshotData, animation, index) {
//                     Map data = snapshotData.value as Map;
//                     return FutureBuilder(
//                         future: urlImages(data['gambar']),
//                         builder: (context, AsyncSnapshot snapshot) {
//                           return InkWell(
//                             onTap: () {},
//                             child: Container(
//                               padding: EdgeInsets.only(bottom: 8.h),
//                               decoration: BoxDecoration(
//                                   border: Border(
//                                       bottom: BorderSide(
//                                           width: 1, color: Colors.grey))),
//                               child: ListTile(
//                                 leading: Container(
//                                   padding: EdgeInsets.symmetric(vertical: 6.h),
//                                   decoration: BoxDecoration(
//                                       border: Border.all(color: Colors.grey),
//                                       borderRadius: BorderRadius.circular(8.r)),
//                                   child: Image.network(
//                                     snapshot.data,
//                                     width: 60.w,
//                                     height: 60.h,
//                                   ),
//                                 ),
//                                 title: Text(data['tanggal']),
//                                 subtitle: Text(data['jam']),
//                                 trailing: Text(
//                                   '${index + 1}',
//                                   style: TextStyle(color: Colors.grey[600]),
//                                 ),
//                               ),
//                             ),
//                           );
//                         });
//                   },
//                 )
//                 // Container(
//                 // height: 250.h,
//                 //   child: ListView.builder(
//                 //     shrinkWrap: true,
//                 //     physics: const NeverScrollableScrollPhysics(),
//                 //     padding: EdgeInsets.symmetric(horizontal: 2.w),
//                 //     itemCount: attackDataList.length,
//                 //     itemBuilder: (context, index) {
//                 //       AttackData data = attackDataList[index];
//                 //       return ListTile(
//                 //         title: Row(
//                 //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 //           children: [
//                 //             Text("${data.attackCount} Serangan"),
//                 //             Text("${data.time}"),
//                 //             Text("${data.hour}"),
//                 //           ],
//                 //         ),
//                 //       );
//                 //     },
//                 //   ),
//                 // )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Future<String> urlImages(linkUrl) async {
//     final ref = storage.ref().child(linkUrl);
//     final url = await ref.getDownloadURL();
//     return url;
//   }
// }
