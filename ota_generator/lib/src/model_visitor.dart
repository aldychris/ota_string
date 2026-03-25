import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/visitor2.dart';

class ModelVisitor extends RecursiveElementVisitor2<void> {
  late String className;

  Map<String, dynamic> fields = <String, dynamic>{};

  @override
  void visitConstructorElement(ConstructorElement element) {
    final elementReturnType = element.returnType.toString();

    // DartType ends with '*', which needs to be eliminated
    // for the generated code to be accurate.
    className = elementReturnType.replaceFirst('*', '');
  }

  @override
  void visitFieldElement(FieldElement element) {
    final elementType = element.type.toString();

    // DartType ends with '*', which needs to be eliminated
    // for the generated code to be accurate.
    final fieldName = element.name ?? element.displayName;
    fields[fieldName] = elementType.replaceFirst('*', '');
  }
}
