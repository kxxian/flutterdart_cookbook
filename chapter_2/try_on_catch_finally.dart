void main(List<String> args) {
  String name = "Dart";

  try {
    print('Name: $name');
    name.indexOf(name[0], name.length - (name.length + 2));
  } on RangeError catch (exception) {
    print('On Exception: $exception');
  } catch (exception) {
    print('Cath Exception: $exception');
  } finally {
    print('Mission complete!');
  }
}
