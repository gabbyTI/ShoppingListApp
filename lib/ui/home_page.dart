import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:list_maker/data/model.dart';
import 'package:list_maker/ui/create_new_checklist_page.dart';
import 'package:list_maker/ui/view_checklist.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Checklists"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            tooltip: 'slide to the left to delete',
            onPressed: () {},
          ),
        ],
      ),
      body: _buildCheckList(context),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Create new List',
        onPressed: () {
          debugPrint('Open add checklist U.I');
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CreateNewCheckListPage()));
        },
      ),
    );
  }
}

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Your Checklists"),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.info),
//             tooltip: 'slide to the left to delete',
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: _buildCheckList(context),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         tooltip: 'Create new List',
//         onPressed: () {
//           debugPrint('Open add checklist U.I');
//           Navigator.push(
//               context,
//               MaterialPageRoute(
//                   builder: (context) => CreateNewCheckListPage()));
//         },
//       ),
//     );
//   }
// }

StreamBuilder<List<CheckList>> _buildCheckList(BuildContext context) {
  final dao = Provider.of<CheckListDao>(context, listen: false);
  return StreamBuilder(
    stream: dao.watchAllCheckLists(),
    builder: (context, AsyncSnapshot<List<CheckList>> snapshot) {
      final checkLists = snapshot.data ?? List();

      return checkLists.length == 0
          ? Center(
              child: Text(
              'Add a checklist',
              textScaleFactor: 2,
              style: TextStyle(color: Colors.black.withOpacity(0.2)),
            ))
          : ListView.separated(
              itemCount: checkLists.length,
              separatorBuilder: (context, int index) => Divider(
                indent: 55,
                thickness: 2,
              ),
              itemBuilder: (context, int index) {
                final checkList = checkLists[index];
                return _buildListOfCheckList(context, checkList, dao);
              },
            );
    },
  );
}

/// The [_buildListOfCheckList] is a function responsible for
/// showing the content of the check_list table on the screen
/// in a [ListTile] widget
Widget _buildListOfCheckList(
    BuildContext context, CheckList checkList, CheckListDao dao) {
  return Slidable(
    actionPane: SlidableDrawerActionPane(),
    secondaryActions: <Widget>[
      IconSlideAction(
        caption: 'Delete',
        color: Colors.red,
        icon: Icons.delete,
        onTap: () => dao.deleteCheckList(checkList),
      ),
    ],
    child: ListTile(
      title: Text(
        checkList.checkListName,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      leading: Icon(Icons.view_list),
      onTap: () async {
        debugPrint('View "' + checkList.checkListName + '"');
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ViewCheckList(
              checkListId: checkList.id,
              checkListName: checkList.checkListName,
            ),
          ),
        );
        // if (total != null) {
        //   final id = checkList.id;
        //   dao.customUpdate(
        //       "UPDATE check_lists SET total = $total WHERE id = $id");
        // } else {
        //   Scaffold.of(context).showSnackBar(
        //     SnackBar(
        //       content: Text('No Total'),
        //       backgroundColor: Colors.red,
        //       duration: Duration(milliseconds: 800),
        //     ),
        //   );
        // }
      },
    ),
  );
}
