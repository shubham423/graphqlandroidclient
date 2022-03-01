import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  List users = [];
  String _query = """
query{
  users{
    name
    id
    profession
    age
  }
}
""";
  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(document: gql(_query)),
      builder: (result, {fetchMore, refetch}) {
        if (result.isLoading) {
          return CircularProgressIndicator();
        }

        users = result.data!["users"];

        return ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];

            return Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 23, left: 20, right: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            color: Colors.grey.shade300,
                            blurRadius: 30)
                      ]),
                  padding: const EdgeInsets.all(20),
                  child: InkWell(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [Text("${user["name"]}")],
                          )
                        ]),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
