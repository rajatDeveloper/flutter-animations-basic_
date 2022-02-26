void main(List<String> args) {
  // User().postComment();
  Moderator().postComment();
  Moderator().deletComment();
}

class User {
  void postComment() {
    print("data");
  }
}

class Moderator extends User {
  void deletComment() {
    print("deleted commment ");
  }
}

class Publisher extends User with CanPublishArticle {
  // void pusblisheArticles() {
  //   print("publisher");
  // }

}

class AdminUser extends Moderator with CanPublishArticle {}

mixin CanPublishArticle {
  void pusblisheArticles() {
    print("publisher can publish article ");
  }
}
