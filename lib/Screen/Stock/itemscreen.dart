// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';
//
// class StockModuleScreen extends StatefulWidget {
//   const StockModuleScreen({super.key});
//
//   @override
//   State<StockModuleScreen> createState() => _StockModuleScreenState();
// }
//
// class _StockModuleScreenState extends State<StockModuleScreen> with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   final TextEditingController _searchController = TextEditingController();
//
//   List<ItemCategory> categories = [
//     ItemCategory(name: "Electronics", description: "Electronic items and gadgets"),
//     ItemCategory(name: "Clothing", description: "Apparel and fashion items"),
//     ItemCategory(name: "Groceries", description: "Food and household items"),
//     ItemCategory(name: "Stationery", description: "Office and school supplies"),
//     ItemCategory(name: "Medicine", description: "Pharmaceutical products"),
//   ];
//
//   List<Item> items = [
//     Item(
//       category: "Electronics",
//       name: "Smartphone X",
//       purchase: 299.99,
//       sales: 399.99,
//       openingStock: 50,
//       barcode: "8901234567890",
//       status: "Enabled",
//     ),
//     Item(
//       category: "Clothing",
//       name: "Cotton T-Shirt",
//       purchase: 15.99,
//       sales: 29.99,
//       openingStock: 120,
//       barcode: "8901234567891",
//       status: "Enabled",
//     ),
//     Item(
//       category: "Groceries",
//       name: "Rice 5kg",
//       purchase: 8.99,
//       sales: 12.99,
//       openingStock: 200,
//       barcode: "8901234567892",
//       status: "Enabled",
//     ),
//     Item(
//       category: "Stationery",
//       name: "Notebook A4",
//       purchase: 2.99,
//       sales: 4.99,
//       openingStock: 300,
//       barcode: "8901234567893",
//       status: "Disabled",
//     ),
//   ];
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 3, vsync: this);
//   }
//
//   @override
//   void dispose() {
//     _tabController.dispose();
//     _searchController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF9FAFB),
//       body: Column(
//         children: [
//           // Header
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
//             decoration: BoxDecoration(
//               gradient: const LinearGradient(
//                 colors: [Color(0xFF1E3A8A), Color(0xFF3B82F6)],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//               ),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.blue.withOpacity(0.3),
//                   blurRadius: 15,
//                   offset: const Offset(0, 3),
//                 ),
//               ],
//             ),
//             child: SafeArea(
//               bottom: false,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       IconButton(
//                         onPressed: () => Navigator.pop(context),
//                         icon: const Icon(
//                           Icons.arrow_back,
//                           color: Colors.white,
//                         ),
//                       ),
//                       const SizedBox(width: 12),
//                       const Text(
//                         "Stock Management",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                       const Spacer(),
//                       IconButton(
//                         onPressed: () {},
//                         icon: const Icon(
//                           Iconsax.notification,
//                           color: Colors.white,
//                           size: 22,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 8),
//                   // Tabs
//                   Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.1),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: TabBar(
//                       controller: _tabController,
//                       indicator: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(6),
//                       ),
//                       labelColor: const Color(0xFF3B82F6),
//                       unselectedLabelColor: Colors.white,
//                       labelStyle: const TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w600,
//                       ),
//                       unselectedLabelStyle: const TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w500,
//                       ),
//                       tabs: const [
//                         Tab(text: "Items"),
//                         Tab(text: "Categories"),
//                         Tab(text: "Stock"),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//
//           // Tab Content
//           Expanded(
//             child: TabBarView(
//               controller: _tabController,
//               children: [
//                 _buildItemsTab(),
//                 _buildCategoriesTab(),
//                 _buildStockTab(),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildItemsTab() {
//     return SingleChildScrollView(
//       padding: const EdgeInsets.all(16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Search and Add Button
//           Row(
//             children: [
//               Expanded(
//                 child: Container(
//                   height: 48,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(12),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black.withOpacity(0.05),
//                         blurRadius: 8,
//                         offset: const Offset(0, 2),
//                       ),
//                     ],
//                   ),
//                   child: TextField(
//                     controller: _searchController,
//                     decoration: InputDecoration(
//                       hintText: "Search items...",
//                       hintStyle: TextStyle(color: Colors.grey[500]),
//                       prefixIcon: Icon(Iconsax.search_normal, color: Colors.grey[500]),
//                       border: InputBorder.none,
//                       contentPadding: const EdgeInsets.symmetric(horizontal: 16),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(width: 12),
//               Container(
//                 height: 48,
//                 decoration: BoxDecoration(
//                   gradient: const LinearGradient(
//                     colors: [Color(0xFF10B981), Color(0xFF34D399)],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                   ),
//                   borderRadius: BorderRadius.circular(12),
//                   boxShadow: [
//                     BoxShadow(
//                       color: const Color(0xFF10B981).withOpacity(0.3),
//                       blurRadius: 8,
//                       offset: const Offset(0, 2),
//                     ),
//                   ],
//                 ),
//                 child: TextButton.icon(
//                   onPressed: () {
//                     _showAddItemDialog(context);
//                   },
//                   icon: const Icon(Iconsax.add, color: Colors.white, size: 20),
//                   label: const Text(
//                     "Add Item",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   style: TextButton.styleFrom(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//
//           const SizedBox(height: 20),
//
//           // Filters
//           Row(
//             children: [
//               _buildFilterChip("All Items", true),
//               const SizedBox(width: 8),
//               _buildFilterChip("Enabled", false),
//               const SizedBox(width: 8),
//               _buildFilterChip("Disabled", false),
//               const Spacer(),
//               TextButton.icon(
//                 onPressed: () {},
//                 icon: Icon(Iconsax.filter, color: Colors.grey[600], size: 16),
//                 label: Text(
//                   "Filter",
//                   style: TextStyle(color: Colors.grey[600], fontSize: 12),
//                 ),
//               ),
//             ],
//           ),
//
//           const SizedBox(height: 20),
//
//           // Items Table
//           Container(
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(12),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.05),
//                   blurRadius: 8,
//                   offset: const Offset(0, 2),
//                 ),
//               ],
//             ),
//             child: SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: DataTable(
//                 columnSpacing: 24,
//                 headingRowColor: MaterialStateProperty.all(
//                   const Color(0xFFF3F4F6),
//                 ),
//                 headingTextStyle: const TextStyle(
//                   fontWeight: FontWeight.w700,
//                   color: Color(0xFF374151),
//                   fontSize: 12,
//                 ),
//                 dataTextStyle: const TextStyle(
//                   fontSize: 12,
//                   color: Color(0xFF6B7280),
//                 ),
//                 columns: const [
//                   DataColumn(label: Text("Sr#")),
//                   DataColumn(label: Text("Category")),
//                   DataColumn(label: Text("Item Name")),
//                   DataColumn(label: Text("Purchase"), numeric: true),
//                   DataColumn(label: Text("Sales"), numeric: true),
//                   DataColumn(label: Text("Opening Stock")),
//                   DataColumn(label: Text("Barcode")),
//                   DataColumn(label: Text("Actions")),
//                 ],
//                 rows: items.asMap().entries.map((entry) {
//                   final index = entry.key;
//                   final item = entry.value;
//                   return DataRow(
//                     cells: [
//                       DataCell(Text((index + 1).toString())),
//                       DataCell(Text(item.category)),
//                       DataCell(Text(item.name)),
//                       DataCell(Text("\$${item.purchase.toStringAsFixed(2)}")),
//                       DataCell(Text("\$${item.sales.toStringAsFixed(2)}")),
//                       DataCell(Text(item.openingStock.toString())),
//                       DataCell(Text(item.barcode)),
//                       DataCell(
//                         Row(
//                           children: [
//                             IconButton(
//                               onPressed: () {},
//                               icon: Icon(Iconsax.edit, color: Colors.blue[600], size: 16),
//                             ),
//                             IconButton(
//                               onPressed: () {},
//                               icon: Icon(Iconsax.trash, color: Colors.red[600], size: 16),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   );
//                 }).toList(),
//               ),
//             ),
//           ),
//
//           const SizedBox(height: 20),
//
//           // Pagination
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextButton(
//                 onPressed: () {},
//                 child: const Text("Previous"),
//               ),
//               ...List.generate(3, (index) {
//                 return Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 4),
//                   width: 32,
//                   height: 32,
//                   decoration: BoxDecoration(
//                     color: index == 0 ? const Color(0xFF3B82F6) : Colors.transparent,
//                     borderRadius: BorderRadius.circular(8),
//                     border: Border.all(
//                       color: index == 0 ? Colors.transparent : Colors.grey[300]!,
//                     ),
//                   ),
//                   child: Center(
//                     child: Text(
//                       (index + 1).toString(),
//                       style: TextStyle(
//                         color: index == 0 ? Colors.white : Colors.grey[600],
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ),
//                 );
//               }),
//               TextButton(
//                 onPressed: () {},
//                 child: const Text("Next"),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//   // Widget _buildCategoriesTab() {
//   //   return SingleChildScrollView(
//   //     padding: const EdgeInsets.all(16),
//   //     child: Column(
//   //       crossAxisAlignment: CrossAxisAlignment.start,
//   //       children: [
//   //         // Add Category Button
//   //         Align(
//   //           alignment: Alignment.centerRight,
//   //           child: Container(
//   //             height: 48,
//   //             decoration: BoxDecoration(
//   //               gradient: const LinearGradient(
//   //                 colors: [Color(0xFF3B82F6), Color(0xFF60A5FA)],
//   //                 begin: Alignment.topLeft,
//   //                 end: Alignment.bottomRight,
//   //               ),
//   //               borderRadius: BorderRadius.circular(12),
//   //               boxShadow: [
//   //                 BoxShadow(
//   //                   color: const Color(0xFF3B82F6).withOpacity(0.3),
//   //                   blurRadius: 8,
//   //                   offset: const Offset(0, 2),
//   //                 ),
//   //               ],
//   //             ),
//   //             child: TextButton.icon(
//   //               onPressed: () {
//   //                 _showAddCategoryDialog(context);
//   //               },
//   //               icon: const Icon(Iconsax.add_square, color: Colors.white, size: 20),
//   //               label: const Text(
//   //                 "Add Category",
//   //                 style: TextStyle(
//   //                   color: Colors.white,
//   //                   fontWeight: FontWeight.w600,
//   //                 ),
//   //               ),
//   //               style: TextButton.styleFrom(
//   //                 padding: const EdgeInsets.symmetric(horizontal: 20),
//   //               ),
//   //             ),
//   //           ),
//   //         ),
//   //
//   //         const SizedBox(height: 20),
//   //
//   //         // Categories Grid - FIXED VERSION
//   //         GridView.builder(
//   //           shrinkWrap: true,
//   //           physics: const NeverScrollableScrollPhysics(),
//   //           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//   //             crossAxisCount: 2,
//   //             crossAxisSpacing: 12, // Reduced from 16
//   //             mainAxisSpacing: 12, // Reduced from 16
//   //             childAspectRatio: 1.6, // Increased from 1.5 to give more height
//   //           ),
//   //           itemCount: categories.length,
//   //           itemBuilder: (context, index) {
//   //             final category = categories[index];
//   //             final color = _getCategoryColor(index);
//   //             return Container(
//   //               padding: const EdgeInsets.all(12), // Added padding inside container
//   //               decoration: BoxDecoration(
//   //                 color: Colors.white,
//   //                 borderRadius: BorderRadius.circular(12),
//   //                 boxShadow: [
//   //                   BoxShadow(
//   //                     color: Colors.black.withOpacity(0.05),
//   //                     blurRadius: 8,
//   //                     offset: const Offset(0, 2),
//   //                   ),
//   //                 ],
//   //               ),
//   //               child: Column(
//   //                 mainAxisAlignment: MainAxisAlignment.center,
//   //                 mainAxisSize: MainAxisSize.min, // Added to prevent overflow
//   //                 children: [
//   //                   Container(
//   //                     width: 44, // Reduced from 48
//   //                     height: 44, // Reduced from 48
//   //                     decoration: BoxDecoration(
//   //                       color: color.withOpacity(0.1),
//   //                       borderRadius: BorderRadius.circular(10), // Reduced from 12
//   //                     ),
//   //                     child: Center(
//   //                       child: Icon(
//   //                         _getCategoryIcon(index),
//   //                         color: color,
//   //                         size: 22, // Reduced from 24
//   //                       ),
//   //                     ),
//   //                   ),
//   //                   const SizedBox(height: 10), // Reduced from 12
//   //                   Text(
//   //                     category.name,
//   //                     style: const TextStyle(
//   //                       fontWeight: FontWeight.w700,
//   //                       color: Color(0xFF1F2937),
//   //                       fontSize: 13, // Added font size
//   //                     ),
//   //                     textAlign: TextAlign.center,
//   //                     maxLines: 1,
//   //                     overflow: TextOverflow.ellipsis,
//   //                   ),
//   //                   const SizedBox(height: 4),
//   //                   Expanded( // Added Expanded to take remaining space
//   //                     child: Padding(
//   //                       padding: const EdgeInsets.symmetric(horizontal: 8), // Reduced from 12
//   //                       child: Text(
//   //                         category.description,
//   //                         style: TextStyle(
//   //                           fontSize: 10, // Reduced from 11
//   //                           color: Colors.grey[600],
//   //                         ),
//   //                         textAlign: TextAlign.center,
//   //                         maxLines: 2,
//   //                         overflow: TextOverflow.ellipsis,
//   //                       ),
//   //                     ),
//   //                   ),
//   //                   const SizedBox(height: 10), // Reduced from 12
//   //                   Row(
//   //                     mainAxisAlignment: MainAxisAlignment.center,
//   //                     children: [
//   //                       IconButton(
//   //                         onPressed: () {},
//   //                         icon: Icon(Iconsax.edit, color: Colors.blue[600], size: 14), // Reduced from 16
//   //                         padding: EdgeInsets.zero, // Remove default padding
//   //                         constraints: const BoxConstraints(), // Remove default constraints
//   //                       ),
//   //                       IconButton(
//   //                         onPressed: () {},
//   //                         icon: Icon(Iconsax.trash, color: Colors.red[600], size: 14), // Reduced from 16
//   //                         padding: EdgeInsets.zero, // Remove default padding
//   //                         constraints: const BoxConstraints(), // Remove default constraints
//   //                       ),
//   //                     ],
//   //                   ),
//   //                 ],
//   //               ),
//   //             );
//   //           },
//   //         ),
//   //       ],
//   //     ),
//   //   );
//   // }
//   Widget _buildCategoriesTab() {
//     return SingleChildScrollView(
//       padding: const EdgeInsets.all(16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Add Category Button
//           Align(
//             alignment: Alignment.centerRight,
//             child: Container(
//               height: 48,
//               decoration: BoxDecoration(
//                 gradient: const LinearGradient(
//                   colors: [Color(0xFF3B82F6), Color(0xFF60A5FA)],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: [
//                   BoxShadow(
//                     color: const Color(0xFF3B82F6).withOpacity(0.3),
//                     blurRadius: 8,
//                     offset: const Offset(0, 2),
//                   ),
//                 ],
//               ),
//               child: TextButton.icon(
//                 onPressed: () {
//                   _showAddCategoryDialog(context);
//                 },
//                 icon: const Icon(Iconsax.add_square, color: Colors.white, size: 20),
//                 label: const Text(
//                   "Add Category",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 style: TextButton.styleFrom(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                 ),
//               ),
//             ),
//           ),
//
//           const SizedBox(height: 20),
//
//           // Categories Grid - COMPREHENSIVE FIX
//           SizedBox(
//             height: MediaQuery.of(context).size.height * 0.6, // Fixed height container
//             child: GridView.builder(
//               shrinkWrap: false, // Changed from true
//               physics: const BouncingScrollPhysics(),
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 12,
//                 mainAxisSpacing: 12,
//                 childAspectRatio: 0.9, // Adjusted for better fit
//               ),
//               itemCount: categories.length,
//               itemBuilder: (context, index) {
//                 final category = categories[index];
//                 final color = _getCategoryColor(index);
//                 return Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(12),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black.withOpacity(0.05),
//                         blurRadius: 8,
//                         offset: const Offset(0, 2),
//                       ),
//                     ],
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(10),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Container(
//                           width: 40,
//                           height: 40,
//                           decoration: BoxDecoration(
//                             color: color.withOpacity(0.1),
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           child: Center(
//                             child: Icon(
//                               _getCategoryIcon(index),
//                               color: color,
//                               size: 20,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 8),
//                         Text(
//                           category.name,
//                           style: const TextStyle(
//                             fontWeight: FontWeight.w700,
//                             color: Color(0xFF1F2937),
//                             fontSize: 12,
//                           ),
//                           textAlign: TextAlign.center,
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                         const SizedBox(height: 4),
//                         Expanded(
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 6),
//                             child: Text(
//                               category.description,
//                               style: TextStyle(
//                                 fontSize: 9,
//                                 color: Colors.grey[600],
//                               ),
//                               textAlign: TextAlign.center,
//                               maxLines: 2,
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 8),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             GestureDetector(
//                               onTap: () {},
//                               child: Container(
//                                 padding: const EdgeInsets.all(4),
//                                 decoration: BoxDecoration(
//                                   color: Colors.blue[50],
//                                   borderRadius: BorderRadius.circular(6),
//                                 ),
//                                 child: Icon(
//                                   Iconsax.edit,
//                                   color: Colors.blue[600],
//                                   size: 12,
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(width: 8),
//                             GestureDetector(
//                               onTap: () {},
//                               child: Container(
//                                 padding: const EdgeInsets.all(4),
//                                 decoration: BoxDecoration(
//                                   color: Colors.red[50],
//                                   borderRadius: BorderRadius.circular(6),
//                                 ),
//                                 child: Icon(
//                                   Iconsax.trash,
//                                   color: Colors.red[600],
//                                   size: 12,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//   Widget _buildStockTab() {
//     return SingleChildScrollView(
//       padding: const EdgeInsets.all(16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Stock Summary Cards
//           GridView.count(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             crossAxisCount: 2,
//             crossAxisSpacing: 16,
//             mainAxisSpacing: 16,
//             childAspectRatio: 1.2,
//             children: [
//               _buildStockCard(
//                 title: "Total Items",
//                 value: "245",
//                 icon: Iconsax.box,
//                 color: Color(0xFF10B981),
//                 change: "+12%",
//               ),
//               _buildStockCard(
//                 title: "Low Stock",
//                 value: "15",
//                 icon: Iconsax.info_circle,
//                 color: Color(0xFFF59E0B),
//                 change: "+3%",
//               ),
//               _buildStockCard(
//                 title: "Out of Stock",
//                 value: "8",
//                 icon: Iconsax.close_circle,
//                 color: Color(0xFFEF4444),
//                 change: "-2%",
//               ),
//               _buildStockCard(
//                 title: "Total Value",
//                 value: "\$45,820",
//                 icon: Iconsax.dollar_circle,
//                 color: Color(0xFF8B5CF6),
//                 change: "+8%",
//               ),
//             ],
//           ),
//
//           const SizedBox(height: 20),
//
//           // Low Stock Items
//           Container(
//             padding: const EdgeInsets.all(16),
//             decoration: BoxDecoration(
//               color: const Color(0xFFFFFBEB),
//               borderRadius: BorderRadius.circular(12),
//               border: Border.all(
//                 color: const Color(0xFFF59E0B).withOpacity(0.3),
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     const Icon(
//                       Iconsax.info_circle,
//                       color: Color(0xFFD97706),
//                     ),
//                     const SizedBox(width: 8),
//                     const Text(
//                       "Low Stock Alert",
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w700,
//                         color: Color(0xFF92400E),
//                       ),
//                     ),
//                     const Spacer(),
//                     TextButton(
//                       onPressed: () {},
//                       child: const Text(
//                         "View All",
//                         style: TextStyle(
//                           color: Color(0xFFF59E0B),
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 12),
//                 ...List.generate(3, (index) {
//                   return Padding(
//                     padding: const EdgeInsets.only(bottom: 8),
//                     child: Row(
//                       children: [
//                         Container(
//                           width: 40,
//                           height: 40,
//                           decoration: BoxDecoration(
//                             color: const Color(0xFFF59E0B).withOpacity(0.1),
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           child: const Center(
//                             child: Icon(
//                               Iconsax.box,
//                               color: Color(0xFFF59E0B),
//                               size: 20,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(width: 12),
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 items[index].name,
//                                 style: const TextStyle(
//                                   fontWeight: FontWeight.w600,
//                                   color: Color(0xFF1F2937),
//                                 ),
//                               ),
//                               const SizedBox(height: 2),
//                               Text(
//                                 "Stock: ${items[index].openingStock}",
//                                 style: TextStyle(
//                                   fontSize: 12,
//                                   color: Colors.grey[600],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
//                           decoration: BoxDecoration(
//                             color: const Color(0xFFEF4444).withOpacity(0.1),
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           child: Text(
//                             "Reorder",
//                             style: TextStyle(
//                               fontSize: 10,
//                               color: Colors.red[600],
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//                 }),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildFilterChip(String label, bool isSelected) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//       decoration: BoxDecoration(
//         color: isSelected ? const Color(0xFF3B82F6) : Colors.white,
//         borderRadius: BorderRadius.circular(20),
//         border: Border.all(
//           color: isSelected ? Colors.transparent : Colors.grey[300]!,
//         ),
//         boxShadow: isSelected ? [
//           BoxShadow(
//             color: const Color(0xFF3B82F6).withOpacity(0.3),
//             blurRadius: 8,
//             offset: const Offset(0, 2),
//           ),
//         ] : null,
//       ),
//       child: Text(
//         label,
//         style: TextStyle(
//           color: isSelected ? Colors.white : Colors.grey[600],
//           fontSize: 12,
//           fontWeight: FontWeight.w600,
//         ),
//       ),
//     );
//   }
//
//   Widget _buildStockCard({
//     required String title,
//     required String value,
//     required IconData icon,
//     required Color color,
//     required String change,
//   }) {
//     return Container(
//       padding: const EdgeInsets.all(16),
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
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(8),
//                 decoration: BoxDecoration(
//                   color: color.withOpacity(0.1),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Icon(
//                   icon,
//                   color: color,
//                   size: 20,
//                 ),
//               ),
//               const Spacer(),
//               Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                 decoration: BoxDecoration(
//                   color: change.startsWith('+')
//                       ? const Color(0xFF10B981).withOpacity(0.1)
//                       : const Color(0xFFEF4444).withOpacity(0.1),
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Text(
//                   change,
//                   style: TextStyle(
//                     fontSize: 10,
//                     fontWeight: FontWeight.w600,
//                     color: change.startsWith('+')
//                         ? const Color(0xFF10B981)
//                         : const Color(0xFFEF4444),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 12),
//           Text(
//             value,
//             style: const TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.w800,
//               color: Color(0xFF1F2937),
//             ),
//           ),
//           const SizedBox(height: 4),
//           Text(
//             title,
//             style: TextStyle(
//               fontSize: 12,
//               color: Colors.grey[600],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _showAddItemDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Row(
//             children: [
//               const Icon(
//                 Iconsax.add_square,
//                 color: Color(0xFF3B82F6),
//               ),
//               const SizedBox(width: 12),
//               const Text(
//                 "Add New Item",
//                 style: TextStyle(
//                   fontWeight: FontWeight.w700,
//                   color: Color(0xFF1F2937),
//                 ),
//               ),
//               const Spacer(),
//               IconButton(
//                 onPressed: () => Navigator.pop(context),
//                 icon: const Icon(Icons.close),
//               ),
//             ],
//           ),
//           content: SingleChildScrollView(
//             child: SizedBox(
//               width: MediaQuery.of(context).size.width * 0.9,
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   _buildFormField("Item Name", Iconsax.box, "Enter item name"),
//                   const SizedBox(height: 16),
//                   _buildDropdownField("Item Category", Iconsax.category, ["Electronics", "Clothing", "Groceries"]),
//                   const SizedBox(height: 16),
//                  // _buildFormField("Manufacturer", Iconsax.factory, "Enter manufacturer"),
//                   const SizedBox(height: 16),
//                   _buildFormField("Purchase Price", Iconsax.dollar_circle, "0.00"),
//                   const SizedBox(height: 16),
//                   _buildFormField("Sales Price", Iconsax.dollar_square, "0.00"),
//                   const SizedBox(height: 16),
//                   _buildFormField("Opening Stock", Iconsax.box_1, "0"),
//                   const SizedBox(height: 16),
//                   _buildFormField("Barcode", Iconsax.scan_barcode, "Enter barcode"),
//                   const SizedBox(height: 16),
//                   _buildFormField("Reorder Level", Iconsax.info_circle, "10"),
//                   const SizedBox(height: 16),
//                   Row(
//                     children: [
//                       Expanded(
//                         child: _buildDropdownField("Status", Iconsax.status, ["Enabled", "Disabled"]),
//                       ),
//                       const SizedBox(width: 16),
//                       Expanded(
//                         child: TextButton.icon(
//                           onPressed: () {},
//                           icon: const Icon(Iconsax.camera),
//                           label: const Text("Add Image"),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.pop(context),
//               child: const Text("Cancel"),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 gradient: const LinearGradient(
//                   colors: [Color(0xFF10B981), Color(0xFF34D399)],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: TextButton(
//                 onPressed: () {},
//                 child: const Text(
//                   "Save Item",
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   void _showAddCategoryDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Row(
//             children: [
//               const Icon(
//                 Iconsax.category,
//                 color: Color(0xFF3B82F6),
//               ),
//               const SizedBox(width: 12),
//               const Text(
//                 "Add New Category",
//                 style: TextStyle(
//                   fontWeight: FontWeight.w700,
//                   color: Color(0xFF1F2937),
//                 ),
//               ),
//               const Spacer(),
//               IconButton(
//                 onPressed: () => Navigator.pop(context),
//                 icon: const Icon(Icons.close),
//               ),
//             ],
//           ),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               _buildFormField("Category Name", Iconsax.category, "Enter category name"),
//               const SizedBox(height: 16),
//               _buildFormField("Description", Iconsax.document_text, "Enter description"),
//             ],
//           ),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.pop(context),
//               child: const Text("Cancel"),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 gradient: const LinearGradient(
//                   colors: [Color(0xFF3B82F6), Color(0xFF60A5FA)],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: TextButton(
//                 onPressed: () {},
//                 child: const Text(
//                   "Save Category",
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   Widget _buildFormField(String label, IconData icon, String hint) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: const TextStyle(
//             fontSize: 14,
//             fontWeight: FontWeight.w600,
//             color: Color(0xFF374151),
//           ),
//         ),
//         const SizedBox(height: 8),
//         Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(8),
//             border: Border.all(color: Colors.grey[300]!),
//           ),
//           child: TextField(
//             decoration: InputDecoration(
//               hintText: hint,
//               hintStyle: TextStyle(color: Colors.grey[500]),
//               prefixIcon: Icon(icon, color: Colors.grey[500]),
//               border: InputBorder.none,
//               contentPadding: const EdgeInsets.symmetric(horizontal: 16),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildDropdownField(String label, IconData icon, List<String> options) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: const TextStyle(
//             fontSize: 14,
//             fontWeight: FontWeight.w600,
//             color: Color(0xFF374151),
//           ),
//         ),
//         const SizedBox(height: 8),
//         Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(8),
//             border: Border.all(color: Colors.grey[300]!),
//           ),
//           padding: const EdgeInsets.symmetric(horizontal: 12),
//           child: DropdownButtonHideUnderline(
//             child: DropdownButton<String>(
//               icon: Icon(Iconsax.arrow_down_1, color: Colors.grey[500]),
//               hint: Text("Select $label", style: TextStyle(color: Colors.grey[500])),
//               isExpanded: true,
//               items: options.map((option) {
//                 return DropdownMenuItem(
//                   value: option,
//                   child: Text(option),
//                 );
//               }).toList(),
//               onChanged: (value) {},
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Color _getCategoryColor(int index) {
//     final colors = [
//       const Color(0xFF10B981),
//       const Color(0xFF3B82F6),
//       const Color(0xFFF59E0B),
//       const Color(0xFF8B5CF6),
//       const Color(0xFFEC4899),
//     ];
//     return colors[index % colors.length];
//   }
//
//   IconData _getCategoryIcon(int index) {
//     final icons = [
//       Iconsax.cpu,
//       Iconsax.chart,
//       Iconsax.shopping_bag,
//       Iconsax.book,
//       Iconsax.health,
//     ];
//     return icons[index % icons.length];
//   }
// }
//
// class ItemCategory {
//   final String name;
//   final String description;
//
//   ItemCategory({
//     required this.name,
//     required this.description,
//   });
// }
//
// class Item {
//   final String category;
//   final String name;
//   final double purchase;
//   final double sales;
//   final int openingStock;
//   final String barcode;
//   final String status;
//
//   Item({
//     required this.category,
//     required this.name,
//     required this.purchase,
//     required this.sales,
//     required this.openingStock,
//     required this.barcode,
//     required this.status,
//   });
// }
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class StockManagementSystem extends StatefulWidget {
  const StockManagementSystem({super.key});

  @override
  State<StockManagementSystem> createState() => _StockManagementSystemState();
}

class _StockManagementSystemState extends State<StockManagementSystem> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController _searchController = TextEditingController();

  // Sample Data
  List<Map<String, dynamic>> stockModules = [
    {'icon': Iconsax.box, 'label': 'Items', 'tabIndex': 0},
    {'icon': Iconsax.category, 'label': 'Categories', 'tabIndex': 1},
    {'icon': Iconsax.tag, 'label': 'Item Types', 'tabIndex': 2},
    {'icon': Iconsax.weight, 'label': 'Item Units', 'tabIndex': 3},
    {'icon': Iconsax.box_tick, 'label': 'Item Kinds', 'tabIndex': 4},
    {'icon': Iconsax.location, 'label': 'Shelve Locations', 'tabIndex': 5},
    {'icon': Icons.precision_manufacturing, 'label': 'Manufacturers', 'tabIndex': 6},
    {'icon': Iconsax.chart, 'label': 'Stock Position', 'tabIndex': 7},
    {'icon': Iconsax.dollar_circle, 'label': 'Stock Price', 'tabIndex': 8},
    {'icon': Iconsax.notification, 'label': 'Demand Items', 'tabIndex': 9},
    {'icon': Iconsax.discount_shape, 'label': 'Promotion Define', 'tabIndex': 10},
    {'icon': Iconsax.gift, 'label': 'Promotion Items', 'tabIndex': 11},
    {'icon': Iconsax.box_add, 'label': 'Opening Stock', 'tabIndex': 12},
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: stockModules.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      body: Column(
        children: [
          // Header
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text(
                        "Stock Management System",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Iconsax.notification,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // Module Navigation
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: stockModules.length,
                      itemBuilder: (context, index) {
                        final module = stockModules[index];
                        return GestureDetector(
                          onTap: () {
                            _tabController.animateTo(index);
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 8),
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: _tabController.index == index
                                  ? Colors.white
                                  : Colors.white.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  module['icon'] as IconData,
                                  color: _tabController.index == index
                                      ? const Color(0xFF3B82F6)
                                      : Colors.white,
                                  size: 16,
                                ),
                                const SizedBox(width: 6),
                                Text(
                                  module['label'] as String,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: _tabController.index == index
                                        ? const Color(0xFF3B82F6)
                                        : Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Tab Content
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildItemsTab(),
                _buildCategoriesTab(),
                _buildItemTypesTab(),
                _buildItemUnitsTab(),
                _buildItemKindsTab(),
                _buildShelveLocationsTab(),
                _buildManufacturersTab(),
                _buildStockPositionTab(),
                _buildStockPriceTab(),
                _buildDemandItemsTab(),
                _buildPromotionDefineTab(),
                _buildPromotionItemsTab(),
                _buildOpeningStockTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 1. Items Tab
  Widget _buildItemsTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader("Item Details", Iconsax.box),
          const SizedBox(height: 20),

          // Item Form
          Container(
            padding: const EdgeInsets.all(20),
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
                _buildFormRow([
                  _buildDropdownField("Item Category", Iconsax.category),
                  _buildDropdownField("Item Type", Iconsax.tag),
                ]),
                const SizedBox(height: 16),
                _buildFormRow([
                  _buildTextField("Item Kind", Iconsax.box_tick),
                  _buildTextField("Item Name", Iconsax.box),
                ]),
                const SizedBox(height: 16),
                _buildFormRow([
                  _buildDropdownField("Manufacturer", Icons.precision_manufacturing),
                  _buildDropdownField("Supplier", Iconsax.profile_2user),
                ]),
                const SizedBox(height: 16),
                _buildFormRow([
                  _buildTextField("Purchase Price", Iconsax.dollar_circle),
                  _buildTextField("Sales Price", Iconsax.dollar_square),
                ]),
                const SizedBox(height: 16),
                _buildFormRow([
                  _buildTextField("Opening Stock", Iconsax.box_1),
                  _buildTextField("Barcode", Iconsax.scan_barcode),
                ]),
                const SizedBox(height: 16),
                _buildFormRow([
                  _buildTextField("Details", Iconsax.document_text),
                  _buildDropdownField("Shelve Location", Iconsax.location),
                ]),
                const SizedBox(height: 16),
                _buildFormRow([
                  _buildDropdownField("Item Unit", Iconsax.weight),
                  _buildTextField("Per Unit", Iconsax.box_add),
                ]),
                const SizedBox(height: 16),
                _buildFormRow([
                  _buildTextField("Reorder Level", Iconsax.info_circle),
                  _buildImageUploadField(),
                ]),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: _buildDropdownField("Status", Iconsax.status),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFF10B981), Color(0xFF34D399)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Iconsax.save_2, color: Colors.white, size: 18),
                        label: const Text(
                          "Save Item",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // Items Table
          _buildSectionHeader("Items List", Icons.table_chart ),
          const SizedBox(height: 20),
          _buildDataTable(
            columns: const ["Sr#", "Category", "Item Name", "Purchase", "Sales", "Opening Stock", "Barcode", "Actions"],
            rows: List.generate(5, (index) => [
              (index + 1).toString(),
              "Electronics",
              "Smartphone X",
              "\$299.99",
              "\$399.99",
              "50",
              "8901234567890",
              _buildActionButtons(),
            ]),
          ),
        ],
      ),
    );
  }

  // 2. Categories Tab
  Widget _buildCategoriesTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader("Category Management", Iconsax.category),
          const SizedBox(height: 20),

          // Category Form
          Container(
            padding: const EdgeInsets.all(20),
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
                _buildFormRow([
                  _buildTextField("ID", Iconsax.hashtag),
                  _buildTextField("Category Name", Iconsax.category),
                ]),
                const SizedBox(height: 16),
                _buildTextArea("Description", Iconsax.document_text),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF3B82F6), Color(0xFF60A5FA)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Iconsax.save_2, color: Colors.white, size: 18),
                    label: const Text(
                      "Save Category",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // Categories Table
          _buildSectionHeader("Categories List", Icons.table_chart ),
          const SizedBox(height: 20),
          _buildDataTable(
            columns: const ["Sr#", "Category Name", "Description", "Actions"],
            rows: List.generate(5, (index) => [
              (index + 1).toString(),
              "Electronics",
              "Electronic items and gadgets",
              _buildActionButtons(),
            ]),
          ),
        ],
      ),
    );
  }

  // 3. Item Types Tab
  Widget _buildItemTypesTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader("Item Types", Iconsax.tag),
          const SizedBox(height: 20),

          // Filter Row
          Row(
            children: [
              Expanded(
                child: _buildDropdownField("Filter by Category", Iconsax.filter),
              ),
              const SizedBox(width: 12),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF3B82F6).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Iconsax.filter, color: Color(0xFF3B82F6)),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Item Type Form
          Container(
            padding: const EdgeInsets.all(20),
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
                _buildFormRow([
                  _buildTextField("ID", Iconsax.hashtag),
                  _buildDropdownField("Category", Iconsax.category),
                ]),
                const SizedBox(height: 16),
                _buildFormRow([
                  _buildTextField("Item Type", Iconsax.tag),
                  _buildTextField("Description", Iconsax.document_text),
                ]),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF8B5CF6), Color(0xFFA78BFA)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Iconsax.save_2, color: Colors.white, size: 18),
                    label: const Text(
                      "Save Item Type",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // Item Types Table
          _buildSectionHeader("Item Types List", Icons.table_chart ),
          const SizedBox(height: 20),
          _buildDataTable(
            columns: const ["Sr#", "Category Name", "Item Type", "Description", "Actions"],
            rows: List.generate(5, (index) => [
              (index + 1).toString(),
              "Electronics",
              "Smartphone",
              "Mobile devices and phones",
              _buildActionButtons(),
            ]),
          ),
        ],
      ),
    );
  }

  // 4. Item Units Tab
  Widget _buildItemUnitsTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader("Item Units", Iconsax.weight),
          const SizedBox(height: 20),

          // Item Unit Form
          Container(
            padding: const EdgeInsets.all(20),
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
                _buildFormRow([
                  _buildTextField("ID", Iconsax.hashtag),
                  _buildTextField("Item Unit", Iconsax.weight),
                ]),
                const SizedBox(height: 16),
                _buildTextArea("Description", Iconsax.document_text),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFFF59E0B), Color(0xFFFBBF24)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Iconsax.save_2, color: Colors.white, size: 18),
                    label: const Text(
                      "Save Unit",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // Item Units Table
          _buildSectionHeader("Item Units List", Icons.table_chart ),
          const SizedBox(height: 20),
          _buildDataTable(
            columns: const ["Sr#", "Item Unit", "Description", "Actions"],
            rows: List.generate(5, (index) => [
              (index + 1).toString(),
              "Piece",
              "Single item unit",
              _buildActionButtons(),
            ]),
          ),
        ],
      ),
    );
  }

  // 5. Item Kinds Tab
  Widget _buildItemKindsTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader("Item Kinds", Iconsax.box_tick),
          const SizedBox(height: 20),

          // Item Kind Form
          Container(
            padding: const EdgeInsets.all(20),
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
                _buildFormRow([
                  _buildTextField("ID", Iconsax.hashtag),
                  _buildTextField("Item Kind", Iconsax.box_tick),
                ]),
                const SizedBox(height: 16),
                _buildTextArea("Description", Iconsax.document_text),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFFEC4899), Color(0xFFF472B6)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Iconsax.save_2, color: Colors.white, size: 18),
                    label: const Text(
                      "Save Item Kind",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // Item Kinds Table
          _buildSectionHeader("Item Kinds List", Icons.table_chart ),
          const SizedBox(height: 20),
          _buildDataTable(
            columns: const ["Sr#", "Item Kind", "Description", "Actions"],
            rows: List.generate(5, (index) => [
              (index + 1).toString(),
              "Brand New",
              "New items from manufacturer",
              _buildActionButtons(),
            ]),
          ),
        ],
      ),
    );
  }

  // 6. Shelve Locations Tab
  Widget _buildShelveLocationsTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader("Shelve Locations", Iconsax.location),
          const SizedBox(height: 20),

          // Shelve Location Form
          Container(
            padding: const EdgeInsets.all(20),
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
                _buildFormRow([
                  _buildTextField("ID", Iconsax.hashtag),
                  _buildTextField("Shelve Location", Iconsax.location),
                ]),
                const SizedBox(height: 16),
                _buildTextArea("Description", Iconsax.document_text),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF06B6D4), Color(0xFF22D3EE)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Iconsax.save_2, color: Colors.white, size: 18),
                    label: const Text(
                      "Save Location",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // Shelve Locations Table
          _buildSectionHeader("Shelve Locations List", Icons.table_chart ),
          const SizedBox(height: 20),
          _buildDataTable(
            columns: const ["Sr#", "Shelve Location", "Description"],
            rows: List.generate(5, (index) => [
              (index + 1).toString(),
              "A${index + 1}-B${index + 2}",
              "Main warehouse, Section A",
            ]),
          ),
        ],
      ),
    );
  }

  // 7. Manufacturers Tab
  Widget _buildManufacturersTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader("Manufacturers", Icons.precision_manufacturing),
          const SizedBox(height: 20),

          // Manufacturer Form
          Container(
            padding: const EdgeInsets.all(20),
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
                _buildFormRow([
                  _buildTextField("ID", Iconsax.hashtag),
                  _buildTextField("Manufacturing Name", Icons.table_chart ),
                ]),
                const SizedBox(height: 16),
                _buildFormRow([
                  _buildTextField("Phone Number", Iconsax.call),
                  _buildTextField("Email", Iconsax.sms),
                ]),
                const SizedBox(height: 16),
                _buildTextArea("Address", Iconsax.location),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF10B981), Color(0xFF34D399)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Iconsax.save_2, color: Colors.white, size: 18),
                    label: const Text(
                      "Save Manufacturer",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // Manufacturers Table
          _buildSectionHeader("Manufacturers List", Icons.table_chart ),
          const SizedBox(height: 20),
          _buildDataTable(
            columns: const ["Sr#", "Manufacturing Name", "Phone Number", "Email", "Address", "Actions"],
            rows: List.generate(5, (index) => [
              (index + 1).toString(),
              "Tech Corp Inc.",
              "+1 234 567 890${index}",
              "contact@techcorp${index}.com",
              "123 Tech Street, City",
              _buildActionButtons(),
            ]),
          ),
        ],
      ),
    );
  }

  // 8. Stock Position Tab
  Widget _buildStockPositionTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader("Stock Position", Iconsax.chart),
          const SizedBox(height: 20),

          // Filter Row
          Row(
            children: [
              Expanded(
                child: _buildDropdownField("Filter by Category", Iconsax.filter),
              ),
              const SizedBox(width: 12),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF3B82F6).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Iconsax.filter, color: Color(0xFF3B82F6)),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Stock Position Table
          _buildEditableDataTable(
            columns: const ["Sr#", "Category", "Item", "Stock", "Purchase", "Total Amount"],
            rows: List.generate(5, (index) => [
              (index + 1).toString(),
              "Electronics",
              "Smartphone X",
              _buildEditableCell("50"),
              _buildEditableCell("\$299.99"),
              _buildEditableCell("\$14,999.50"),
            ]),
          ),
        ],
      ),
    );
  }

  // 9. Stock Price Tab
  Widget _buildStockPriceTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader("Stock Price", Iconsax.dollar_circle),
          const SizedBox(height: 20),

          // Filter Row
          Row(
            children: [
              Expanded(
                child: _buildDropdownField("Filter by Category", Iconsax.filter),
              ),
              const SizedBox(width: 12),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF3B82F6).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Iconsax.filter, color: Color(0xFF3B82F6)),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Stock Price Table
          _buildDataTable(
            columns: const ["Sr#", "Category", "Item", "Price"],
            rows: List.generate(5, (index) => [
              (index + 1).toString(),
              "Electronics",
              "Smartphone X",
              "\$399.99",
            ]),
          ),
        ],
      ),
    );
  }

  // 10. Demand Items Tab
  Widget _buildDemandItemsTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader("Demand Items", Iconsax.notification),
          const SizedBox(height: 20),

          // Demand Form
          Container(
            padding: const EdgeInsets.all(20),
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
                _buildFormRow([
                  _buildTextField("Demand ID", Iconsax.hashtag),
                  _buildDateField("Demand Date", Iconsax.calendar),
                ]),
                const SizedBox(height: 16),
                _buildFormRow([
                  _buildTextField("Item Name", Iconsax.box),
                  _buildTextField("Quantity", Iconsax.box_add),
                ]),
                const SizedBox(height: 16),
                _buildDropdownField("Issue Type", Iconsax.warning_2),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFFEF4444), Color(0xFFF87171)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Iconsax.save_2, color: Colors.white, size: 18),
                    label: const Text(
                      "Create Demand",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // Demand Items Table
          _buildSectionHeader("Demand Items List", Icons.table_chart ),
          const SizedBox(height: 20),
          _buildDataTable(
            columns: const ["Sr#", "Demand Date", "Item Name", "Quantity", "Issue Type", "Actions"],
            rows: List.generate(5, (index) => [
              (index + 1).toString(),
              "2024-01-${index + 1}",
              "Smartphone X",
              "${(index + 1) * 10}",
              index % 2 == 0 ? "Urgent" : "Normal",
              _buildActionButtons(),
            ]),
          ),
        ],
      ),
    );
  }

  // 11. Promotion Define Tab
  Widget _buildPromotionDefineTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader("Promotion Define", Iconsax.discount_shape),
          const SizedBox(height: 20),

          // Promotion Form
          Container(
            padding: const EdgeInsets.all(20),
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
                _buildFormRow([
                  _buildTextField("Promotion Name", Iconsax.discount_shape),
                  _buildTextField("Promotion Details", Iconsax.document_text),
                ]),
                const SizedBox(height: 16),
                _buildFormRow([
                  _buildDateField("Start Date", Iconsax.calendar_add),
                  _buildDateField("End Date", Iconsax.calendar_tick),
                ]),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: _buildDropdownField("Status", Iconsax.status),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFF8B5CF6), Color(0xFFA78BFA)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Iconsax.save_2, color: Colors.white, size: 18),
                        label: const Text(
                          "Save Promotion",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // Promotion Table
          _buildSectionHeader("Promotions List", Icons.table_chart ),
          const SizedBox(height: 20),
          _buildDataTable(
            columns: const ["Sr#", "Promotion Name", "Promotion Details", "Start Date", "End Date", "Actions"],
            rows: List.generate(5, (index) => [
              (index + 1).toString(),
              "Summer Sale ${index + 1}",
              "Discount on all electronics",
              "2024-06-01",
              "2024-06-30",
              _buildActionButtons(),
            ]),
          ),
        ],
      ),
    );
  }

  // 12. Promotion Items Tab
  Widget _buildPromotionItemsTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader("Promotion Items", Iconsax.gift),
          const SizedBox(height: 20),

          // Promotion Items Form
          Container(
            padding: const EdgeInsets.all(20),
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
                _buildFormRow([
                  _buildDropdownField("Promotion", Iconsax.discount_shape),
                  _buildDropdownField("Category", Iconsax.category),
                ]),
                const SizedBox(height: 16),
                _buildFormRow([
                  _buildDropdownField("Item Type", Iconsax.tag),
                  _buildTextField("Search Item", Iconsax.search_normal),
                ]),
                const SizedBox(height: 16),
                _buildFormRow([
                  _buildTextField("Discount Percentage", Iconsax.percentage_circle),
                  _buildDropdownField("Status", Iconsax.status),
                ]),
                const SizedBox(height: 20),

                // Items Selection Table
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF3F4F6),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (v) {}),
                          const SizedBox(width: 12),
                          const Expanded(
                            child: Text(
                              "Item Selection Table",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF374151),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      ...List.generate(3, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            children: [
                              Checkbox(value: false, onChanged: (v) {}),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  "Smartphone X ${index + 1}",
                                  style: const TextStyle(color: Color(0xFF6B7280)),
                                ),
                              ),
                              Text(
                                "\$${(index + 1) * 399.99}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF10B981),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ],
                  ),
                ),

                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFFF59E0B), Color(0xFFFBBF24)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Iconsax.save_2, color: Colors.white, size: 18),
                    label: const Text(
                      "Save Promotion Items",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // Promotion Items Table
          _buildSectionHeader("Promotion Items List", Icons.table_chart ),
          const SizedBox(height: 20),
          _buildDataTable(
            columns: const ["Sr#", "Promotion", "Category", "Item Type", "Item Name", "Discount", "End Date", "Actions"],
            rows: List.generate(5, (index) => [
              (index + 1).toString(),
              "Summer Sale",
              "Electronics",
              "Smartphone",
              "Smartphone X",
              "${(index + 1) * 10}%",
              "2024-06-30",
              _buildActionButtons(),
            ]),
          ),
        ],
      ),
    );
  }

  // 13. Opening Stock Tab
  // 13. Opening Stock Tab - COMPLETED
  Widget _buildOpeningStockTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader("Opening Stock Management", Iconsax.box_add),
          const SizedBox(height: 20),

          // Filter Row
          Row(
            children: [
              Expanded(
                child: _buildDropdownField("Item Category", Iconsax.category),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildDropdownField("Item Name", Iconsax.box),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildDateField("Date", Iconsax.calendar),
              ),
              const SizedBox(width: 12),
              Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF3B82F6), Color(0xFF60A5FA)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Iconsax.filter, color: Colors.white, size: 18),
                  label: const Text(
                    "Apply",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Opening Stock Form
          Container(
            padding: const EdgeInsets.all(20),
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
                _buildFormRow([
                  _buildDropdownField("Item Category", Iconsax.category),
                  _buildDropdownField("Item Type", Iconsax.tag),
                ]),
                const SizedBox(height: 16),
                _buildFormRow([
                  _buildDropdownField("Item Name", Iconsax.box),
                  _buildDropdownField("Supplier", Iconsax.profile_2user),
                ]),
                const SizedBox(height: 16),
                _buildFormRow([
                  _buildEditableFormField("Sales Price", Iconsax.dollar_square, "\$399.99"),
                  _buildEditableFormField("Purchase Price", Iconsax.dollar_circle, "\$299.99"),
                ]),
                const SizedBox(height: 16),
                _buildFormRow([
                  _buildEditableFormField("Opening Stock", Iconsax.box_add, "50"),
                  _buildDateField("Stock Date", Iconsax.calendar_tick),
                ]),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF10B981), Color(0xFF34D399)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Iconsax.save_2, color: Colors.white, size: 18),
                    label: const Text(
                      "Save Opening Stock",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // Opening Stock Table
          _buildSectionHeader("Opening Stock List", Icons.table_chart ),
          const SizedBox(height: 20),
          _buildEditableDataTable(
            columns: const ["Sr#", "Item Category", "Item Type", "Item Name", "Supplier", "Sales", "Purchase", "Stock"],
            rows: List.generate(5, (index) => [
              (index + 1).toString(),
              "Electronics",
              "Smartphone",
              "Smartphone X",
              "Tech Supplier Inc.",
              _buildEditableCell("\$399.99"),
              _buildEditableCell("\$299.99"),
              _buildEditableCell("${50 + (index * 10)}"),
            ]),
          ),
        ],
      ),
    );
  }

  // Helper Methods for Opening Stock
  Widget _buildEditableFormField(String label, IconData icon, String initialValue) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFF6B7280),
            ),
          ),
          const SizedBox(height: 6),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0xFFD1D5DB)),
            ),
            child: TextFormField(
              initialValue: initialValue,
              decoration: InputDecoration(
                prefixIcon: Icon(icon, size: 18, color: const Color(0xFF9CA3AF)),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Common Helper Methods (Already defined in your code, included for completeness)
  Widget _buildSectionHeader(String title, IconData icon) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF3B82F6), Color(0xFF60A5FA)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: Colors.white, size: 20),
        ),
        const SizedBox(width: 12),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xFF111827),
          ),
        ),
      ],
    );
  }

  Widget _buildFormRow(List<Widget> children) {
    return Row(
      children: children
          .asMap()
          .entries
          .map((entry) => Expanded(
        child: Padding(
          padding: EdgeInsets.only(right: entry.key < children.length - 1 ? 16 : 0),
          child: entry.value,
        ),
      ))
          .toList(),
    );
  }

  Widget _buildTextField(String label, IconData icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xFF6B7280),
          ),
        ),
        const SizedBox(height: 6),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xFFD1D5DB)),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(icon, size: 18, color: const Color(0xFF9CA3AF)),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDropdownField(String label, IconData icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xFF6B7280),
          ),
        ),
        const SizedBox(height: 6),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xFFD1D5DB)),
          ),
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              prefixIcon: Icon(icon, size: 18, color: const Color(0xFF9CA3AF)),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            ),
            items: const [
              DropdownMenuItem(value: "1", child: Text("Option 1")),
              DropdownMenuItem(value: "2", child: Text("Option 2")),
              DropdownMenuItem(value: "3", child: Text("Option 3")),
            ],
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }

  Widget _buildDateField(String label, IconData icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xFF6B7280),
          ),
        ),
        const SizedBox(height: 6),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xFFD1D5DB)),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(icon, size: 18, color: const Color(0xFF9CA3AF)),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              hintText: "YYYY-MM-DD",
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTextArea(String label, IconData icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xFF6B7280),
          ),
        ),
        const SizedBox(height: 6),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xFFD1D5DB)),
          ),
          child: TextFormField(
            maxLines: 3,
            decoration: InputDecoration(
              prefixIcon: Icon(icon, size: 18, color: const Color(0xFF9CA3AF)),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildImageUploadField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Item Image",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xFF6B7280),
          ),
        ),
        const SizedBox(height: 6),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xFFD1D5DB)),
          ),
          child: TextButton.icon(
            onPressed: () {},
            icon: const Icon(Iconsax.image, size: 18, color: Color(0xFF9CA3AF)),
            label: const Text(
              "Upload Image",
              style: TextStyle(color: Color(0xFF6B7280)),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildActionButtons() {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Iconsax.edit_2, size: 18, color: Color(0xFF3B82F6)),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Iconsax.trash, size: 18, color: Color(0xFFEF4444)),
        ),
      ],
    );
  }

  Widget _buildDataTable({required List<String> columns, required List<List<dynamic>> rows}) {
    return Container(
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
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columnSpacing: 24,
          dataRowHeight: 56,
          headingRowHeight: 48,
          columns: columns
              .map(
                (column) => DataColumn(
              label: Text(
                column,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF374151),
                ),
              ),
            ),
          )
              .toList(),
          rows: rows
              .asMap()
              .entries
              .map(
                (entry) => DataRow(
              cells: entry.value
                  .map(
                    (cell) => DataCell(
                  cell is Widget ? cell : Text(cell.toString()),
                ),
              )
                  .toList(),
            ),
          )
              .toList(),
        ),
      ),
    );
  }

  Widget _buildEditableDataTable({required List<String> columns, required List<List<dynamic>> rows}) {
    return Container(
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
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columnSpacing: 24,
          dataRowHeight: 56,
          headingRowHeight: 48,
          columns: columns
              .map(
                (column) => DataColumn(
              label: Text(
                column,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF374151),
                ),
              ),
            ),
          )
              .toList(),
          rows: rows
              .asMap()
              .entries
              .map(
                (entry) => DataRow(
              cells: entry.value
                  .map(
                    (cell) => DataCell(
                  cell is Widget ? cell : Text(cell.toString()),
                ),
              )
                  .toList(),
            ),
          )
              .toList(),
        ),
      ),
    );
  }

  Widget _buildEditableCell(String initialValue) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: const Color(0xFFD1D5DB)),
      ),
      child: TextFormField(
        initialValue: initialValue,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        ),
      ),
    );
  }
}