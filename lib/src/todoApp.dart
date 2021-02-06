import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Repository {
  Future<List<Todo>> fetchTodos() async {}
}

class Todo {
  final String id;
  final String label;
  final bool completed;

  Todo({
    @required this.id,
    @required this.label,
    @required this.completed,
  });
}

final repositoryProvider = Provider((ref) => Repository());

final todoListProvider = FutureProvider((ref) async {
  final repository = ref.read(repositoryProvider);
  return repository.fetchTodos();
});

class FakeRepository implements Repository {
  Future<List<Todo>> fetchTodos() async {
    return [
      Todo(id: '42', label: 'hello world', completed: false),
    ];
  }
}

class TodoItem extends StatelessWidget {
  const TodoItem({@required this.todo});
  final Todo todo;
  @override
  Widget build(BuildContext context) {
    return Text(todo.label);
  }
}

// class TodoApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     tester.pumpWidgets(
//       child: ProviderScope(
//         observers: [
//           repositoryProvider.overrideWithProvider(
//             Provider((ref) => FakeRepository())
//           )
//         ],
//       ),
//     );
//   }
// }
