import 'package:lms_flutter_project/utils/exports.dart';

class CategorySearchScreen extends StatelessWidget {
  const CategorySearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: const [
              VerifiedPhotoMatch(),
            ],
          ),
        ),
      ),
    );
  }
}
