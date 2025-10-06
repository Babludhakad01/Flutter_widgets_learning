import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserListPage extends StatefulWidget {
  final String title;

  const UserListPage({super.key, required this.title});

  @override
  State<UserListPage> createState() => _UserListPage();
}

class _UserListPage extends State<UserListPage> {
  List users = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  //dummy API call
  Future<void> fetchUsers() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      setState(() {
        users = jsonDecode(response.body);
        isLoading = false;
      });
    } else {
      // handle error
      setState(() {
        isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("List Failed  to load users")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                var user = users[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  elevation: 2,

                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor:
                          Colors.primaries[index % Colors.primaries.length],
                      child: Text(
                        user['name'][0],
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    title: Text(user['name']),
                    subtitle: Text(user['email']),
                    trailing: const Icon(Icons.person),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                          title: Text(user['name']),
                          content: Text(
                            "Username: ${user['username'] ?? 'N/A'}\nCity: ${user['address']?['city'] ?? 'Unknown'}",
                          ),

                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text("Close"),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}
