// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:postgres/postgres.dart';

Future postgresqlConn() async {
  // connect a postgresql server and test a connection
  PostgreSQLConnection connection = PostgreSQLConnection(
    'caiodssilva.com.br', // replace with your host
    5301, // replace with your port
    'sincom', // replace with your database name
    username: 'postgres', // replace with your username
    password: 'adminnl', // replace with your password
  );

  await connection.open();

  AlertDialog(
    title: const Text('AlertDialog Title'),
    content: const SingleChildScrollView(
      child: ListBody(
        children: <Widget>[
          Text('This is a demo alert dialog.'),
          Text('Would you like to approve of this message?'),
        ],
      ),
    ),
    actions: <Widget>[
      TextButton(
        child: const Text('Approve'),
        onPressed: () {
          //Navigator.of(context).pop();
        },
      ),
    ],
  );

  if (connection.isClosed) {
    print('Failed to connect to PostgreSQL server.');
  }
}
