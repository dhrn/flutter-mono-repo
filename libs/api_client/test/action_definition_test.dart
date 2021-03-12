import 'package:api_client/model/action_definition.dart';
import 'package:test/test.dart';

// tests for ActionDefinition
void main() {
  final instance = ActionDefinition();

  group(ActionDefinition, () {
    // Identifier of the action definition — used for example when executing an action
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // name of the action definition, e.g. \"move\"
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // title of the action definition, e.g. \"Move\"
    // String title
    test('to test the property `title`', () async {
      // TODO
    });

    // describes the action definition, e.g. \"This will move the matched item to another space.\"
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // QNames of the types this action applies to
    // BuiltList<String> applicableTypes
    test('to test the property `applicableTypes`', () async {
      // TODO
    });

    // whether the basic action definition supports action tracking or not
    // bool trackStatus
    test('to test the property `trackStatus`', () async {
      // TODO
    });

    // BuiltList<ActionParameterDefinition> parameterDefinitions
    test('to test the property `parameterDefinitions`', () async {
      // TODO
    });
  });
}
