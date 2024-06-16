abstract class Usecase<R, Param> {
  R execute({required Param param});
}

class NoParams {}
