// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';
//
// import '../Stock/itemscreen.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final isAdmin = true;
//
//     return Scaffold(
//       backgroundColor: const Color(0xFFF9FAFB),
//       body: SafeArea(
//         child: Column(
//           children: [
//             _buildAppBar(size, isAdmin),
//             Expanded(
//               child: SingleChildScrollView(
//                 physics: const BouncingScrollPhysics(),
//                 padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     _buildWelcomeSection(isAdmin),
//                     const SizedBox(height: 20),
//                     _buildPOSStats(),
//                     const SizedBox(height: 20),
//                     _buildMainModules(isAdmin),
//                     const SizedBox(height: 20),
//                     _buildRecentSales(),
//                     const SizedBox(height: 20),
//                     _buildInventoryAlert(),
//                     const SizedBox(height: 30),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: _buildPOSBottomNav(),
//     );
//   }
//
//   Widget _buildAppBar(Size size, bool isAdmin) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//       decoration: BoxDecoration(
//         gradient: const LinearGradient(
//           colors: [Color(0xFF1E3A8A), Color(0xFF3B82F6)],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.blue.withOpacity(0.3),
//             blurRadius: 15,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: SafeArea(
//         bottom: false,
//         child: Row(
//           children: [
//             Container(
//               width: 45,
//               height: 45,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.1),
//                     blurRadius: 8,
//                   ),
//                 ],
//               ),
//               child: const Center(
//                 child: Icon(
//                   Icons.store,
//                   color: Color(0xFF3B82F6),
//                   size: 24,
//                 ),
//               ),
//             ),
//             const SizedBox(width: 12),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     "Retail Store Pro",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 16,
//                       fontWeight: FontWeight.w700,
//                     ),
//                   ),
//                   const SizedBox(height: 2),
//                   Text(
//                     isAdmin ? "Admin Dashboard" : "Cashier Panel",
//                     style: TextStyle(
//                       color: Colors.white.withOpacity(0.9),
//                       fontSize: 11,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Row(
//               children: [
//                 _buildHeaderIcon(
//                   icon: Iconsax.notification,
//                   badge: true,
//                   onTap: () {},
//                 ),
//                 const SizedBox(width: 10),
//                 Container(
//                   padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: const Row(
//                     children: [
//                       Icon(
//                         Iconsax.shopping_cart,
//                         color: Color(0xFF3B82F6),
//                         size: 14,
//                       ),
//                       SizedBox(width: 4),
//                       Text(
//                         "Sale",
//                         style: TextStyle(
//                           color: Color(0xFF3B82F6),
//                           fontSize: 11,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildHeaderIcon({
//     required IconData icon,
//     bool badge = false,
//     required VoidCallback onTap,
//   }) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: 40,
//         height: 40,
//         decoration: BoxDecoration(
//           color: Colors.white.withOpacity(0.15),
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(
//             color: Colors.white.withOpacity(0.2),
//           ),
//         ),
//         child: Stack(
//           alignment: Alignment.center,
//           children: [
//             Icon(
//               icon,
//               color: Colors.white,
//               size: 18,
//             ),
//             if (badge)
//               Positioned(
//                 top: 8,
//                 right: 8,
//                 child: Container(
//                   width: 6,
//                   height: 6,
//                   decoration: const BoxDecoration(
//                     color: Colors.red,
//                     shape: BoxShape.circle,
//                   ),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildWelcomeSection(bool isAdmin) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Good Morning 👋",
//                   style: TextStyle(
//                     fontSize: 13,
//                     color: Colors.grey[600],
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 const SizedBox(height: 2),
//                 const Text(
//                   "Welcome Back!",
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.w700,
//                     color: Color(0xFF1F2937),
//                   ),
//                 ),
//               ],
//             ),
//             Container(
//               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//               decoration: BoxDecoration(
//                 color: const Color(0xFF10B981).withOpacity(0.1),
//                 borderRadius: BorderRadius.circular(12),
//                 border: Border.all(
//                   color: const Color(0xFF10B981).withOpacity(0.2),
//                 ),
//               ),
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: const [
//                   Icon(
//                     Icons.calendar_today,
//                     color: Color(0xFF10B981),
//                     size: 11,
//                   ),
//                   SizedBox(width: 4),
//                   Text(
//                     "Today",
//                     style: TextStyle(
//                       color: Color(0xFF10B981),
//                       fontSize: 11,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(height: 16),
//         Row(
//           children: [
//             Expanded(
//               child: _buildQuickStat(
//                 title: "Today's Sales",
//                 value: "\$2,450",
//                 icon: Iconsax.wallet,
//                 color: Color(0xFF10B981),
//               ),
//             ),
//             const SizedBox(width: 8),
//             Expanded(
//               child: _buildQuickStat(
//                 title: "Transactions",
//                 value: "48",
//                 icon: Iconsax.receipt,
//                 color: Color(0xFF3B82F6),
//               ),
//             ),
//             const SizedBox(width: 8),
//             Expanded(
//               child: _buildQuickStat(
//                 title: "Customers",
//                 value: "125",
//                 icon: Iconsax.profile_2user,
//                 color: Color(0xFF8B5CF6),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
//
//   Widget _buildQuickStat({
//     required String title,
//     required String value,
//     required IconData icon,
//     required Color color,
//   }) {
//     return Container(
//       padding: const EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.05),
//             blurRadius: 6,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(5),
//             decoration: BoxDecoration(
//               color: color.withOpacity(0.1),
//               borderRadius: BorderRadius.circular(7),
//             ),
//             child: Icon(
//               icon,
//               color: color,
//               size: 14,
//             ),
//           ),
//           const SizedBox(width: 8),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   value,
//                   style: const TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w700,
//                     color: Color(0xFF1F2937),
//                   ),
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 const SizedBox(height: 2),
//                 Text(
//                   title,
//                   style: TextStyle(
//                     fontSize: 9,
//                     color: Colors.grey[600],
//                   ),
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildPOSStats() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           "Business Overview",
//           style: TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.w700,
//             color: Color(0xFF1F2937),
//           ),
//         ),
//         const SizedBox(height: 12),
//         GridView.count(
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           crossAxisCount: 2,
//           mainAxisSpacing: 10,
//           crossAxisSpacing: 10,
//           childAspectRatio: 1.2,
//           children: [
//             _buildStatCard(
//               title: "Monthly Revenue",
//               value: "\$28,450",
//               change: "+12.5%",
//               icon: Iconsax.chart,
//               color: Color(0xFF10B981),
//             ),
//             _buildStatCard(
//               title: "Avg. Order Value",
//               value: "\$85.20",
//               change: "+5.2%",
//               icon: Iconsax.shopping_cart,
//               color: Color(0xFF3B82F6),
//             ),
//             _buildStatCard(
//               title: "Inventory Value",
//               value: "\$45,800",
//               change: "-2.1%",
//               icon: Iconsax.box,
//               color: Color(0xFFF59E0B),
//             ),
//             _buildStatCard(
//               title: "Profit Margin",
//               value: "24.8%",
//               change: "+3.4%",
//               icon: Iconsax.trend_up,
//               color: Color(0xFF8B5CF6),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
//
//   Widget _buildStatCard({
//     required String title,
//     required String value,
//     required String change,
//     required IconData icon,
//     required Color color,
//   }) {
//     return Container(
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.05),
//             blurRadius: 8,
//             offset: const Offset(0, 2),
//           ),
//         ],
//         border: Border.all(
//           color: Colors.grey.withOpacity(0.1),
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(6),
//                 decoration: BoxDecoration(
//                   color: color.withOpacity(0.1),
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: Icon(
//                   icon,
//                   color: color,
//                   size: 16,
//                 ),
//               ),
//               const Spacer(),
//               Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
//                 decoration: BoxDecoration(
//                   color: change.startsWith('+')
//                       ? const Color(0xFF10B981).withOpacity(0.1)
//                       : const Color(0xFFEF4444).withOpacity(0.1),
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: Text(
//                   change,
//                   style: TextStyle(
//                     fontSize: 9,
//                     fontWeight: FontWeight.w600,
//                     color: change.startsWith('+')
//                         ? const Color(0xFF10B981)
//                         : const Color(0xFFEF4444),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 10),
//           Expanded(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   value,
//                   style: const TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w800,
//                     color: Color(0xFF1F2937),
//                   ),
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 const SizedBox(height: 2),
//                 Text(
//                   title,
//                   style: TextStyle(
//                     fontSize: 10,
//                     color: Colors.grey[600],
//                   ),
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildMainModules(bool isAdmin) {
//     final modules = !isAdmin
//         ? _getCashierModules():
//          _getAdminModules;
//
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             const Text(
//               "Quick Access Modules",
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.w700,
//                 color: Color(0xFF1F2937),
//               ),
//             ),
//             TextButton(
//               onPressed: () {},
//               style: TextButton.styleFrom(
//                 padding: EdgeInsets.zero,
//                 minimumSize: Size.zero,
//                 tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//               ),
//               child: const Text(
//                 "View All",
//                 style: TextStyle(
//                   color: Color(0xFF3B82F6),
//                   fontSize: 12,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(height: 12),
//         GridView.count(
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           crossAxisCount: 4,
//           mainAxisSpacing: 10,
//           crossAxisSpacing: 10,
//           childAspectRatio: 0.75,
//           children: modules,
//         ),
//       ],
//     );
//   }
//
//   // List<Widget> _getAdminModules() {
//   //   return [
//   //     _buildModuleCard(
//   //       icon: Iconsax.shopping_cart,
//   //       label: "Sales",
//   //       color: Color(0xFF10B981),
//   //       count: "245",
//   //     ),
//   //     _buildModuleCard(
//   //       icon: Iconsax.bag_2,
//   //       label: "Purchase",
//   //       color: Color(0xFF3B82F6),
//   //       count: "42",
//   //     ),
//   //
//   //
//   //        _buildModuleCard(
//   //         icon: Iconsax.box,
//   //         label: "Stock",
//   //         color: Color(0xFFF59E0B),
//   //         count: "1.2K",
//   //          route: MaterialPageRoute(builder: (context) => StockModuleScreen()),
//   //       ),
//   //
//   //     _buildModuleCard(
//   //       icon: Iconsax.dollar_circle,
//   //       label: "Accounts",
//   //       color: Color(0xFF8B5CF6),
//   //       count: "28",
//   //     ),
//   //     _buildModuleCard(
//   //       icon: Iconsax.building,
//   //       label: "Company",
//   //       color: Color(0xFFEC4899),
//   //     ),
//   //     _buildModuleCard(
//   //       icon: Iconsax.shield_tick,
//   //       label: "Security",
//   //       color: Color(0xFF06B6D4),
//   //     ),
//   //     _buildModuleCard(
//   //       icon: Iconsax.setting_2,
//   //       label: "Settings",
//   //       color: Color(0xFF64748B),
//   //     ),
//   //     _buildModuleCard(
//   //       context: context,
//   //       icon: Iconsax.export,
//   //       label: "Reports",
//   //       color: Color(0xFF1F2937),
//   //       count: "15",
//   //     ),
//   //   ];
//   // }
//   List<Widget> _getAdminModules(BuildContext context) {
//     return [
//       _buildModuleCard(
//         context: context,
//         icon: Iconsax.shopping_cart,
//         label: "Sales",
//         color: Color(0xFF10B981),
//         count: "245",
//       ),
//       _buildModuleCard(
//         context: context,
//         icon: Iconsax.bag_2,
//         label: "Purchase",
//         color: Color(0xFF3B82F6),
//         count: "42",
//       ),
//       _buildModuleCard(
//         context: context,
//         icon: Iconsax.box,
//         label: "Stock",
//         color: Color(0xFFF59E0B),
//         count: "1.2K",
//         route: MaterialPageRoute(builder: (context) => StockModuleScreen()),
//       ),
//       _buildModuleCard(
//         context: context,
//         icon: Iconsax.dollar_circle,
//         label: "Accounts",
//         color: Color(0xFF8B5CF6),
//         count: "28",
//       ),
//       _buildModuleCard(
//         context: context,
//         icon: Iconsax.building,
//         label: "Company",
//         color: Color(0xFFEC4899),
//       ),
//       _buildModuleCard(
//         context: context,
//         icon: Iconsax.shield_tick,
//         label: "Security",
//         color: Color(0xFF06B6D4),
//       ),
//       _buildModuleCard(
//         context: context,
//         icon: Iconsax.setting_2,
//         label: "Settings",
//         color: Color(0xFF64748B),
//       ),
//       _buildModuleCard(
//         context: context,
//         icon: Iconsax.export,
//         label: "Reports",
//         color: Color(0xFF1F2937),
//         count: "15",
//       ),
//     ];
//   }
//
//   // Widget _buildModuleCard({
//   //   required BuildContext context,
//   //   required IconData icon,
//   //   required String label,
//   //   required Color color,
//   //   String? count,
//   //   MaterialPageRoute? route,
//   // }) {
//   //   return GestureDetector(
//   //     onTap: (){
//   //       if (route != null) {
//   //         Navigator.push(context, route);
//   //       }
//   //     },
//   //     child: Column(
//   //       mainAxisSize: MainAxisSize.min,
//   //       children: [
//   //         Container(
//   //           width: 50,
//   //           height: 50,
//   //           decoration: BoxDecoration(
//   //             gradient: LinearGradient(
//   //               colors: [
//   //                 color.withOpacity(0.15),
//   //                 color.withOpacity(0.05),
//   //               ],
//   //               begin: Alignment.topLeft,
//   //               end: Alignment.bottomRight,
//   //             ),
//   //             borderRadius: BorderRadius.circular(12),
//   //             border: Border.all(
//   //               color: color.withOpacity(0.2),
//   //               width: 1,
//   //             ),
//   //           ),
//   //           child: Stack(
//   //             children: [
//   //               Center(
//   //                 child: Icon(
//   //                   icon,
//   //                   color: color,
//   //                   size: 20,
//   //                 ),
//   //               ),
//   //               if (count != null)
//   //                 Positioned(
//   //                   top: 2,
//   //                   right: 2,
//   //                   child: Container(
//   //                     padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 1),
//   //                     decoration: BoxDecoration(
//   //                       color: color.withOpacity(0.2),
//   //                       borderRadius: BorderRadius.circular(6),
//   //                     ),
//   //                     child: Text(
//   //                       count,
//   //                       style: TextStyle(
//   //                         fontSize: 7,
//   //                         color: color,
//   //                         fontWeight: FontWeight.w600,
//   //                       ),
//   //                     ),
//   //                   ),
//   //                 ),
//   //             ],
//   //           ),
//   //         ),
//   //         const SizedBox(height: 6),
//   //         Text(
//   //           label,
//   //           style: const TextStyle(
//   //             fontSize: 10,
//   //             fontWeight: FontWeight.w600,
//   //             color: Color(0xFF374151),
//   //           ),
//   //           textAlign: TextAlign.center,
//   //           maxLines: 2,
//   //           overflow: TextOverflow.ellipsis,
//   //         ),
//   //       ],
//   //     ),
//   //   );
//   // }
//   Widget _buildModuleCard({
//     required BuildContext context,
//     required IconData icon,
//     required String label,
//     required Color color,
//     String? count,
//     MaterialPageRoute? route,
//   }) {
//     return GestureDetector(
//       onTap: () {
//         if (route != null) {
//           Navigator.push(context, route);
//         }
//       },
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Container(
//             width: 50,
//             height: 50,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   color.withOpacity(0.15),
//                   color.withOpacity(0.05),
//                 ],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//               ),
//               borderRadius: BorderRadius.circular(12),
//               border: Border.all(
//                 color: color.withOpacity(0.2),
//                 width: 1,
//               ),
//             ),
//             child: Stack(
//               children: [
//                 Center(
//                   child: Icon(
//                     icon,
//                     color: color,
//                     size: 20,
//                   ),
//                 ),
//                 if (count != null)
//                   Positioned(
//                     top: 2,
//                     right: 2,
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 1),
//                       decoration: BoxDecoration(
//                         color: color.withOpacity(0.2),
//                         borderRadius: BorderRadius.circular(6),
//                       ),
//                       child: Text(
//                         count,
//                         style: TextStyle(
//                           fontSize: 7,
//                           color: color,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ),
//                   ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 6),
//           Text(
//             label,
//             style: const TextStyle(
//               fontSize: 10,
//               fontWeight: FontWeight.w600,
//               color: Color(0xFF374151),
//             ),
//             textAlign: TextAlign.center,
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildRecentSales() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           "Recent Transactions",
//           style: TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.w700,
//             color: Color(0xFF1F2937),
//           ),
//         ),
//         const SizedBox(height: 12),
//         Container(
//           padding: const EdgeInsets.all(12),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(12),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.05),
//                 blurRadius: 8,
//                 offset: const Offset(0, 2),
//               ),
//             ],
//           ),
//           child: Column(
//             children: [
//               ...List.generate(3, (index) {
//                 final sales = [
//                   {
//                     'id': 'ORD-001245',
//                     'customer': 'John Smith',
//                     'amount': '\$245.50',
//                     'time': '10:30 AM',
//                     'status': 'Completed',
//                   },
//                   {
//                     'id': 'ORD-001244',
//                     'customer': 'Sarah Johnson',
//                     'amount': '\$128.75',
//                     'time': '09:45 AM',
//                     'status': 'Pending',
//                   },
//                   {
//                     'id': 'ORD-001243',
//                     'customer': 'Mike Wilson',
//                     'amount': '\$89.99',
//                     'time': 'Yesterday',
//                     'status': 'Completed',
//                   },
//                 ];
//
//                 final sale = sales[index];
//
//                 return Container(
//                   padding: const EdgeInsets.symmetric(vertical: 10),
//                   decoration: BoxDecoration(
//                     border: index < 2
//                         ? Border(
//                       bottom: BorderSide(
//                         color: Colors.grey.withOpacity(0.1),
//                         width: 1,
//                       ),
//                     )
//                         : null,
//                   ),
//                   child: Row(
//                     children: [
//                       Container(
//                         width: 36,
//                         height: 36,
//                         decoration: BoxDecoration(
//                           color: const Color(0xFF3B82F6).withOpacity(0.1),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         child: const Center(
//                           child: Icon(
//                             Iconsax.receipt,
//                             color: Color(0xFF3B82F6),
//                             size: 16,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(width: 10),
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               sale['id'] as String,
//                               style: const TextStyle(
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.w600,
//                                 color: Color(0xFF1F2937),
//                               ),
//                               maxLines: 1,
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                             const SizedBox(height: 2),
//                             Text(
//                               sale['customer'] as String,
//                               style: TextStyle(
//                                 fontSize: 10,
//                                 color: Colors.grey[600],
//                               ),
//                               maxLines: 1,
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                           ],
//                         ),
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           Text(
//                             sale['amount'] as String,
//                             style: const TextStyle(
//                               fontSize: 12,
//                               fontWeight: FontWeight.w700,
//                               color: Color(0xFF10B981),
//                             ),
//                             maxLines: 1,
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                           const SizedBox(height: 2),
//                           Container(
//                             padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
//                             decoration: BoxDecoration(
//                               color: (sale['status'] as String) == 'Completed'
//                                   ? const Color(0xFF10B981).withOpacity(0.1)
//                                   : const Color(0xFFF59E0B).withOpacity(0.1),
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             child: Text(
//                               sale['status'] as String,
//                               style: TextStyle(
//                                 fontSize: 9,
//                                 fontWeight: FontWeight.w600,
//                                 color: (sale['status'] as String) == 'Completed'
//                                     ? const Color(0xFF10B981)
//                                     : const Color(0xFFF59E0B),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 );
//               }),
//               const SizedBox(height: 10),
//               TextButton(
//                 onPressed: () {},
//                 style: TextButton.styleFrom(
//                   minimumSize: const Size(double.infinity, 32),
//                   padding: const EdgeInsets.symmetric(vertical: 6),
//                 ),
//                 child: const Text(
//                   "View All Transactions",
//                   style: TextStyle(
//                     color: Color(0xFF3B82F6),
//                     fontWeight: FontWeight.w600,
//                     fontSize: 12,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildInventoryAlert() {
//     return Container(
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: const Color(0xFFFFFBEB),
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(
//           color: const Color(0xFFF59E0B).withOpacity(0.3),
//         ),
//       ),
//       child: Row(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               color: const Color(0xFFF59E0B).withOpacity(0.1),
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: const Icon(
//               Iconsax.info_circle,
//               color: Color(0xFFF59E0B),
//               size: 18,
//             ),
//           ),
//           const SizedBox(width: 10),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: const [
//                 Text(
//                   "Low Stock Alert",
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w600,
//                     color: Color(0xFF92400E),
//                   ),
//                 ),
//                 SizedBox(height: 2),
//                 Text(
//                   "5 products are running low",
//                   style: TextStyle(
//                     fontSize: 10,
//                     color: Color(0xFF92400E),
//                   ),
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ],
//             ),
//           ),
//           TextButton(
//             onPressed: () {},
//             style: TextButton.styleFrom(
//               padding: const EdgeInsets.symmetric(horizontal: 8),
//               minimumSize: Size.zero,
//             ),
//             child: const Text(
//               "View",
//               style: TextStyle(
//                 color: Color(0xFFF59E0B),
//                 fontWeight: FontWeight.w600,
//                 fontSize: 12,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildPOSBottomNav() {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             blurRadius: 15,
//             offset: const Offset(0, -3),
//           ),
//         ],
//         borderRadius: const BorderRadius.only(
//           topLeft: Radius.circular(15),
//           topRight: Radius.circular(15),
//         ),
//       ),
//       child: SafeArea(
//         top: false,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               _buildNavItem(Iconsax.home, "Home", true),
//               _buildNavItem(Iconsax.shopping_cart, "Sales", false),
//               _buildNavItem(Iconsax.box, "Stock", false),
//               _buildNavItem(Iconsax.chart, "Reports", false),
//               _buildNavItem(Iconsax.user, "Account", false),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildNavItem(IconData icon, String label, bool isActive) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Container(
//           padding: const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//             color: isActive ? const Color(0xFF3B82F6).withOpacity(0.1) : Colors.transparent,
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Icon(
//             icon,
//             color: isActive ? const Color(0xFF3B82F6) : Colors.grey[600],
//             size: 20,
//           ),
//         ),
//         const SizedBox(height: 2),
//         Text(
//           label,
//           style: TextStyle(
//             fontSize: 9,
//             color: isActive ? const Color(0xFF3B82F6) : Colors.grey[600],
//             fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
//           ),
//         ),
//       ],
//     );
//   }
//
//   _getCashierModules() {}
// }
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../Stock/itemscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isAdmin = true;

    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      body: SafeArea(
        child: Column(
          children: [
            _buildAppBar(size, isAdmin),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildWelcomeSection(isAdmin),
                    const SizedBox(height: 20),
                    _buildPOSStats(),
                    const SizedBox(height: 20),
                    _buildMainModules(context, isAdmin), // Pass context here
                    const SizedBox(height: 20),
                    _buildRecentSales(),
                    const SizedBox(height: 20),
                    _buildInventoryAlert(),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildPOSBottomNav(),
    );
  }

  Widget _buildAppBar(Size size, bool isAdmin) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF1E3A8A), Color(0xFF3B82F6)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.3),
            blurRadius: 15,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: SafeArea(
        bottom: false,
        child: Row(
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: const Center(
                child: Icon(
                  Icons.store,
                  color: Color(0xFF3B82F6),
                  size: 24,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Point Of Sales",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),    
                  const SizedBox(height: 2),
                  Text(
                    isAdmin ? "Admin Dashboard" : "Cashier Panel",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                _buildHeaderIcon(
                  icon: Iconsax.notification,
                  badge: true,
                  onTap: () {},
                ),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Iconsax.shopping_cart,
                        color: Color(0xFF3B82F6),
                        size: 14,
                      ),
                      SizedBox(width: 4),
                      Text(
                        "Sale",
                        style: TextStyle(
                          color: Color(0xFF3B82F6),
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderIcon({
    required IconData icon,
    bool badge = false,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.15),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.white.withOpacity(0.2),
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 18,
            ),
            if (badge)
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  width: 6,
                  height: 6,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildWelcomeSection(bool isAdmin) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good Morning 👋",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 2),
                const Text(
                  "Welcome Back!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1F2937),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: const Color(0xFF10B981).withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color(0xFF10B981).withOpacity(0.2),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.calendar_today,
                    color: Color(0xFF10B981),
                    size: 11,
                  ),
                  SizedBox(width: 4),
                  Text(
                    "Today",
                    style: TextStyle(
                      color: Color(0xFF10B981),
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: _buildQuickStat(
                title: "Today's Sales",
                value: "\$2,450",
                icon: Iconsax.wallet,
                color: Color(0xFF10B981),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: _buildQuickStat(
                title: "Transactions",
                value: "48",
                icon: Iconsax.receipt,
                color: Color(0xFF3B82F6),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: _buildQuickStat(
                title: "Customers",
                value: "125",
                icon: Iconsax.profile_2user,
                color: Color(0xFF8B5CF6),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildQuickStat({
    required String title,
    required String value,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(7),
            ),
            child: Icon(
              icon,
              color: color,
              size: 14,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1F2937),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 9,
                    color: Colors.grey[600],
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPOSStats() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Business Overview",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xFF1F2937),
          ),
        ),
        const SizedBox(height: 12),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1.2,
          children: [
            _buildStatCard(
              title: "Monthly Revenue",
              value: "\$28,450",
              change: "+12.5%",
              icon: Iconsax.chart,
              color: Color(0xFF10B981),
            ),
            _buildStatCard(
              title: "Avg. Order Value",
              value: "\$85.20",
              change: "+5.2%",
              icon: Iconsax.shopping_cart,
              color: Color(0xFF3B82F6),
            ),
            _buildStatCard(
              title: "Inventory Value",
              value: "\$45,800",
              change: "-2.1%",
              icon: Iconsax.box,
              color: Color(0xFFF59E0B),
            ),
            _buildStatCard(
              title: "Profit Margin",
              value: "24.8%",
              change: "+3.4%",
              icon: Iconsax.trend_up,
              color: Color(0xFF8B5CF6),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildStatCard({
    required String title,
    required String value,
    required String change,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border.all(
          color: Colors.grey.withOpacity(0.1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  icon,
                  color: color,
                  size: 16,
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: change.startsWith('+')
                      ? const Color(0xFF10B981).withOpacity(0.1)
                      : const Color(0xFFEF4444).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  change,
                  style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.w600,
                    color: change.startsWith('+')
                        ? const Color(0xFF10B981)
                        : const Color(0xFFEF4444),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF1F2937),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[600],
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // FIXED: Added BuildContext parameter
  Widget _buildMainModules(BuildContext context, bool isAdmin) {
    final modules = isAdmin
        ? _getAdminModules(context)
        : _getCashierModules();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Quick Access Modules",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1F2937),
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: const Text(
                "View All",
                style: TextStyle(
                  color: Color(0xFF3B82F6),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.75,
          children: modules,
        ),
      ],
    );
  }

  // FIXED: Added BuildContext parameter
  List<Widget> _getAdminModules(BuildContext context) {
    return [
      _buildModuleCard(
        context: context,
        icon: Iconsax.shopping_cart,
        label: "Sales",
        color: Color(0xFF10B981),
        count: "245",
      ),
      _buildModuleCard(
        context: context,
        icon: Iconsax.bag_2,
        label: "Purchase",
        color: Color(0xFF3B82F6),
        count: "42",
      ),
      _buildModuleCard(
        context: context,
        icon: Iconsax.box,
        label: "Stock",
        color: Color(0xFFF59E0B),
        count: "1.2K",
        route: MaterialPageRoute(builder: (context) =>StockManagementSystem()),
      ),
      _buildModuleCard(
        context: context,
        icon: Iconsax.dollar_circle,
        label: "Accounts",
        color: Color(0xFF8B5CF6),
        count: "28",
      ),
      _buildModuleCard(
        context: context,
        icon: Iconsax.building,
        label: "Company",
        color: Color(0xFFEC4899),
      ),
      _buildModuleCard(
        context: context,
        icon: Iconsax.shield_tick,
        label: "Security",
        color: Color(0xFF06B6D4),
      ),
      _buildModuleCard(
        context: context,
        icon: Iconsax.setting_2,
        label: "Settings",
        color: Color(0xFF64748B),
      ),
      _buildModuleCard(
        context: context,
        icon: Iconsax.export,
        label: "Reports",
        color: Color(0xFF1F2937),
        count: "15",
      ),
    ];
  }

  // FIXED: Added BuildContext parameter and optional route
  Widget _buildModuleCard({
    required BuildContext context,
    required IconData icon,
    required String label,
    required Color color,
    String? count,
    MaterialPageRoute? route,
  }) {
    return GestureDetector(
      onTap: () {
        if (route != null) {
          Navigator.push(context, route);
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  color.withOpacity(0.15),
                  color.withOpacity(0.05),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: color.withOpacity(0.2),
                width: 1,
              ),
            ),
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    icon,
                    color: color,
                    size: 20,
                  ),
                ),
                if (count != null)
                  Positioned(
                    top: 2,
                    right: 2,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 1),
                      decoration: BoxDecoration(
                        color: color.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        count,
                        style: TextStyle(
                          fontSize: 7,
                          color: color,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 6),
          Text(
            label,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: Color(0xFF374151),
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildRecentSales() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Recent Transactions",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xFF1F2937),
          ),
        ),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            children: [
              ...List.generate(3, (index) {
                final sales = [
                  {
                    'id': 'ORD-001245',
                    'customer': 'John Smith',
                    'amount': '\$245.50',
                    'time': '10:30 AM',
                    'status': 'Completed',
                  },
                  {
                    'id': 'ORD-001244',
                    'customer': 'Sarah Johnson',
                    'amount': '\$128.75',
                    'time': '09:45 AM',
                    'status': 'Pending',
                  },
                  {
                    'id': 'ORD-001243',
                    'customer': 'Mike Wilson',
                    'amount': '\$89.99',
                    'time': 'Yesterday',
                    'status': 'Completed',
                  },
                ];

                final sale = sales[index];

                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    border: index < 2
                        ? Border(
                      bottom: BorderSide(
                        color: Colors.grey.withOpacity(0.1),
                        width: 1,
                      ),
                    )
                        : null,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: const Color(0xFF3B82F6).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child: Icon(
                            Iconsax.receipt,
                            color: Color(0xFF3B82F6),
                            size: 16,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              sale['id'] as String,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1F2937),
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 2),
                            Text(
                              sale['customer'] as String,
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey[600],
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            sale['amount'] as String,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF10B981),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 2),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
                            decoration: BoxDecoration(
                              color: (sale['status'] as String) == 'Completed'
                                  ? const Color(0xFF10B981).withOpacity(0.1)
                                  : const Color(0xFFF59E0B).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              sale['status'] as String,
                              style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w600,
                                color: (sale['status'] as String) == 'Completed'
                                    ? const Color(0xFF10B981)
                                    : const Color(0xFFF59E0B),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  minimumSize: const Size(double.infinity, 32),
                  padding: const EdgeInsets.symmetric(vertical: 6),
                ),
                child: const Text(
                  "View All Transactions",
                  style: TextStyle(
                    color: Color(0xFF3B82F6),
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInventoryAlert() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFBEB),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFFF59E0B).withOpacity(0.3),
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFFF59E0B).withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Iconsax.info_circle,
              color: Color(0xFFF59E0B),
              size: 18,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Low Stock Alert",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF92400E),
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  "5 products are running low",
                  style: TextStyle(
                    fontSize: 10,
                    color: Color(0xFF92400E),
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              minimumSize: Size.zero,
            ),
            child: const Text(
              "View",
              style: TextStyle(
                color: Color(0xFFF59E0B),
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPOSBottomNav() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 15,
            offset: const Offset(0, -3),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildNavItem(Iconsax.home, "Home", true),
              _buildNavItem(Iconsax.shopping_cart, "Sales", false),
              _buildNavItem(Iconsax.box, "Stock", false),
              _buildNavItem(Iconsax.chart, "Reports", false),
              _buildNavItem(Iconsax.user, "Account", false),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, bool isActive) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isActive ? const Color(0xFF3B82F6).withOpacity(0.1) : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            color: isActive ? const Color(0xFF3B82F6) : Colors.grey[600],
            size: 20,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: TextStyle(
            fontSize: 9,
            color: isActive ? const Color(0xFF3B82F6) : Colors.grey[600],
            fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
          ),
        ),
      ],
    );
  }

  List<Widget> _getCashierModules() {
    // Return empty list for now
    return [];
  }
}