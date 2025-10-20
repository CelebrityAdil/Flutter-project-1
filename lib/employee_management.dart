// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(const DashboardApp());
// }

// class Employee {
//   final int id;
//   final String name;
//   final String department;
//   final double salary;
//   final double performance;
//   final String manager;

//   Employee({
//     required this.id,
//     required this.name,
//     required this.department,
//     required this.salary,
//     required this.performance,
//     required this.manager,
//   });
// }

// class EmployeeService {
//   List<Employee> getEmployees() {
//     final itRoles = [
//       'IT Expert',
//       'IT Technician',
//       'Network Engineer',
//       'System Analyst',
//     ];
//     final hrRoles = ['HR Executive', 'Recruiter', 'HR Manager', 'HR Assistant'];
//     final financeRoles = [
//       'Accountant',
//       'Financial Analyst',
//       'Auditor',
//       'Payroll Officer',
//     ];
//     final salesRoles = [
//       'Sales Executive',
//       'Sales Manager',
//       'Marketing Officer',
//       'Sales Consultant',
//     ];

//     return List.generate(20, (i) {
//       final deptIndex = i % 4;
//       final department = ['HR', 'IT', 'Finance', 'Sales'][deptIndex];

//       String role;
//       if (department == 'IT') {
//         role = itRoles[i % itRoles.length];
//       } else if (department == 'HR') {
//         role = hrRoles[i % hrRoles.length];
//       } else if (department == 'Finance') {
//         role = financeRoles[i % financeRoles.length];
//       } else {
//         role = salesRoles[i % salesRoles.length];
//       }

//       return Employee(
//         id: i + 1,
//         name: role,
//         department: department,
//         salary: 40000 + (i * 3000),
//         performance: ((i * 5) % 100) / 100,
//         manager: (deptIndex == 0) ? 'CEO' : 'Manager ${(i ~/ 4) + 1}',
//       );
//     });
//   }
// }

// enum ViewMode { list, grid, table }

// class ThemeProvider with ChangeNotifier {
//   bool _isDark = false;
//   bool get isDark => _isDark;
//   void toggle() {
//     _isDark = !_isDark;
//     notifyListeners();
//   }
// }

// class EmployeeProvider with ChangeNotifier {
//   final EmployeeService _service = EmployeeService();
//   List<Employee> _employees = [];
//   String _search = '';
//   String _filter = 'All';
//   ViewMode _viewMode = ViewMode.table;

//   List<Employee> get employees {
//     return _employees
//         .where(
//           (e) =>
//               (_filter == 'All' || e.department == _filter) &&
//               e.name.toLowerCase().contains(_search.toLowerCase()),
//         )
//         .toList();
//   }

//   ViewMode get viewMode => _viewMode;
//   String get filter => _filter;

//   void loadEmployees() {
//     _employees = _service.getEmployees();
//     notifyListeners();
//   }

//   void setFilter(String value) {
//     _filter = value;
//     notifyListeners();
//   }

//   void setSearch(String value) {
//     _search = value;
//     notifyListeners();
//   }

//   void setViewMode(ViewMode mode) {
//     _viewMode = mode;
//     notifyListeners();
//   }
// }

// class DashboardApp extends StatelessWidget {
//   const DashboardApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => ThemeProvider()),
//         ChangeNotifierProvider(
//           create: (_) => EmployeeProvider()..loadEmployees(),
//         ),
//       ],
//       child: Consumer<ThemeProvider>(
//         builder: (context, theme, _) {
//           return MaterialApp(
//             debugShowCheckedModeBanner: false,
//             title: 'Employees  Dashboard',
//             themeMode: theme.isDark ? ThemeMode.dark : ThemeMode.light,
//             theme: ThemeData.light(useMaterial3: true),
//             darkTheme: ThemeData.dark(useMaterial3: true),
//             home: const DashboardHome(),
//           );
//         },
//       ),
//     );
//   }
// }

// class DashboardHome extends StatelessWidget {
//   const DashboardHome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final theme = Provider.of<ThemeProvider>(context);
//     final empProvider = Provider.of<EmployeeProvider>(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Enterprise Employee Dashboard'),
//         actions: [
//           IconButton(
//             icon: Icon(theme.isDark ? Icons.light_mode : Icons.dark_mode),
//             onPressed: theme.toggle,
//           ),
//         ],
//       ),
//       drawer: AppDrawer(),
//       body: Padding(
//         padding: const EdgeInsets.all(12),
//         child: Column(
//           children: [
//             const FilterBar(),
//             const SizedBox(height: 12),
//             Expanded(
//               child: empProvider.employees.isEmpty
//                   ? const Center(child: Text('No employees found'))
//                   : _buildView(empProvider),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//         backgroundColor: Colors.amber,
//         foregroundColor: Colors.white,
//         onPressed: () {
//           showDialog(
//             context: context,
//             builder: (_) => const AddEmployeeDialog(),
//           );
//         },
//         child: const Icon(Icons.add, size: 28),
//       ),
//     );
//   }

//   Widget _buildView(EmployeeProvider empProvider) {
//     switch (empProvider.viewMode) {
//       case ViewMode.list:
//         return EmployeeListView(employees: empProvider.employees);
//       case ViewMode.grid:
//         return EmployeeGridView(employees: empProvider.employees);
//       default:
//         return EmployeeTable(employees: empProvider.employees);
//     }
//   }
// }

// class AppDrawer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final provider = Provider.of<EmployeeProvider>(context, listen: false);

//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: [
//           const DrawerHeader(
//             decoration: BoxDecoration(color: Colors.amber),
//             child: Text(
//               'Dashboard Views',
//               style: TextStyle(color: Colors.white, fontSize: 20),
//             ),
//           ),
//           ListTile(
//             leading: const Icon(Icons.list),
//             title: const Text('Item in List'),
//             onTap: () {
//               provider.setViewMode(ViewMode.list);
//               Navigator.pop(context);
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.grid_view),
//             title: const Text('Items in Grid'),
//             onTap: () {
//               provider.setViewMode(ViewMode.grid);
//               Navigator.pop(context);
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.table_chart),
//             title: const Text('Items in Table'),
//             onTap: () {
//               provider.setViewMode(ViewMode.table);
//               Navigator.pop(context);
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

// class FilterBar extends StatelessWidget {
//   const FilterBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final provider = Provider.of<EmployeeProvider>(context, listen: false);
//     final departments = ['All', 'HR', 'IT', 'Finance', 'Sales'];

//     return Row(
//       children: [
//         DropdownButton<String>(
//           value: provider.filter,
//           items: departments
//               .map((d) => DropdownMenuItem(value: d, child: Text(d)))
//               .toList(),
//           onChanged: (v) => provider.setFilter(v ?? 'All'),
//         ),
//         const Spacer(),
//         SizedBox(
//           width: 220,
//           child: TextField(
//             decoration: InputDecoration(
//               contentPadding: const EdgeInsets.symmetric(
//                 vertical: 8,
//                 horizontal: 10,
//               ),
//               prefixIcon: const Icon(Icons.search, size: 18),
//               hintText: 'Search...',
//               isDense: true,
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(8),
//               ),
//             ),
//             onChanged: provider.setSearch,
//           ),
//         ),
//       ],
//     );
//   }
// }

// class EmployeeTable extends StatelessWidget {
//   final List<Employee> employees;
//   const EmployeeTable({super.key, required this.employees});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 3,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: DataTable(
//           columns: const [
//             DataColumn(label: Text('ID')),
//             DataColumn(label: Text('Name')),
//             DataColumn(label: Text('Dept')),
//             DataColumn(label: Text('Salary')),
//             DataColumn(label: Text('Perf.')),
//             DataColumn(label: Text('Manager')),
//           ],
//           rows: employees
//               .map(
//                 (e) => DataRow(
//                   cells: [
//                     DataCell(Text('${e.id}')),
//                     DataCell(Text(e.name)),
//                     DataCell(Text(e.department)),
//                     DataCell(Text('\$${e.salary.toStringAsFixed(0)}')),
//                     DataCell(PerformanceBar(value: e.performance)),
//                     DataCell(Text(e.manager)),
//                   ],
//                 ),
//               )
//               .toList(),
//         ),
//       ),
//     );
//   }
// }

// class EmployeeListView extends StatelessWidget {
//   final List<Employee> employees;
//   const EmployeeListView({super.key, required this.employees});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: employees.length,
//       itemBuilder: (context, i) {
//         final e = employees[i];
//         return Card(
//           child: ListTile(
//             title: Text(e.name),
//             subtitle: Text('${e.department} | Manager: ${e.manager}'),
//             trailing: Text('\$${e.salary.toStringAsFixed(0)}'),
//           ),
//         );
//       },
//     );
//   }
// }

// class EmployeeGridView extends StatelessWidget {
//   final List<Employee> employees;
//   const EmployeeGridView({super.key, required this.employees});

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         childAspectRatio: 1.3,
//       ),
//       itemCount: employees.length,
//       itemBuilder: (context, i) {
//         final e = employees[i];
//         return Card(
//           elevation: 2,
//           margin: const EdgeInsets.all(6),
//           child: Padding(
//             padding: const EdgeInsets.all(8),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   e.name,
//                   style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16,
//                   ),
//                 ),
//                 const SizedBox(height: 6),
//                 Text(e.department),
//                 Text('Manager: ${e.manager}'),
//                 const SizedBox(height: 6),
//                 PerformanceBar(value: e.performance),
//                 Text('\$${e.salary.toStringAsFixed(0)}'),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// class PerformanceBar extends StatelessWidget {
//   final double value;
//   const PerformanceBar({super.key, required this.value});

//   @override
//   Widget build(BuildContext context) {
//     final color = value > 0.75
//         ? Colors.green
//         : value > 0.5
//         ? Colors.orange
//         : Colors.red;
//     return Row(
//       children: [
//         Expanded(
//           flex: (value * 100).toInt(),
//           child: Container(height: 6, color: color),
//         ),
//         Expanded(
//           flex: 100 - (value * 100).toInt(),
//           child: Container(height: 6, color: Colors.grey.shade300),
//         ),
//       ],
//     );
//   }
// }

// class AddEmployeeDialog extends StatefulWidget {
//   const AddEmployeeDialog({super.key});

//   @override
//   State<AddEmployeeDialog> createState() => _AddEmployeeDialogState();
// }

// class _AddEmployeeDialogState extends State<AddEmployeeDialog> {
//   final _nameCtrl = TextEditingController();
//   final _deptCtrl = TextEditingController();
//   final _salaryCtrl = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: const Text('Add Member'),
//       content: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           TextField(
//             controller: _nameCtrl,
//             decoration: const InputDecoration(labelText: 'Name'),
//           ),
//           TextField(
//             controller: _deptCtrl,
//             decoration: const InputDecoration(labelText: 'Department'),
//           ),
//           TextField(
//             controller: _salaryCtrl,
//             decoration: const InputDecoration(labelText: 'Salary'),
//           ),
//         ],
//       ),
//       actions: [
//         TextButton(
//           onPressed: () => Navigator.pop(context),
//           child: const Text('Cancel'),
//         ),
//         ElevatedButton(
//           onPressed: () {
//             ScaffoldMessenger.of(context).showSnackBar(
//               const SnackBar(content: Text('Employee added (demo only)')),
//             );
//             Navigator.pop(context);
//           },
//           child: const Text('Save'),
//         ),
//       ],
//     );
//   }
// }
