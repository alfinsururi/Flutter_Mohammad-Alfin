import 'dart:async';
import 'package:bloc/bloc.dart';

part 'image_event.dart';

class ImageBloc extends Bloc<ImageEvent, int> {
  ImageBloc() : super(0);

  @override
  Stream<int> mapEventToState(ImageEvent event) async* {
    if (event is IncreaseViewCount) {
      yield state + 1;
    }
  }
}
