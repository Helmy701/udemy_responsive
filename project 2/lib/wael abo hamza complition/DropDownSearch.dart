// import 'package:flutter/material.dart';
// import 'package:dropdown_search/dropdown_search.dart';
//
//
// class DropdownSearch extends StatefulWidget {
//   const DropdownSearch({Key? key}) : super(key: key);
//
//   @override
//   State<DropdownSearch> createState() => _DropdownSearchState();
// }
//
// class _DropdownSearchState extends State<DropdownSearch> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dropdown Search'),
//       ),
//       body: Column(
//         children: [
//           DropdownSearch<String>(
//             popupProps: PopupProps.menu(
//               showSelectedItems: true,
//               disabledItemFn: (String s) => s.startsWith('I'),
//             ),
//             items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
//             dropdownDecoratorProps: DropDownDecoratorProps(
//               dropdownSearchDecoration: InputDecoration(
//                 labelText: "Menu mode",
//                 hintText: "country in menu mode",
//               ),
//             ),
//             onChanged: print,
//             selectedItem: "Brazil",
//           )
//
//           DropdownSearch<String>.multiSelection(
//             items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
//             popupProps: PopupPropsMultiSelection.menu(
//               showSelectedItems: true,
//               disabledItemFn: (String s) => s.startsWith('I'),
//             ),
//             onChanged: print,
//             selectedItems: ["Brazil"],
//           )
//
//
//         ],
//       )
//     );
//   }
// }
