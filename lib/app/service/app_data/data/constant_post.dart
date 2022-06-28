import 'package:tuto_http/app/service/vos/post_vo.dart';

class ConstantPost {
  Future<List<PostVo>> getAllPost() async {
    await Future.delayed(const Duration(seconds: 1));

    List<PostVo> dummyPostList = [
      PostVo(
        id: "62ba9abe72e4d0313648f16d",
        image:
            "https://cdn.pixabay.com/photo/2022/06/03/03/50/beach-7239311_1280.jpg",
        likes: 0,
        tags: ["dogs"],
        text: "this is very good",
        publishDate: DateTime.parse("2022-06-28T06:07:58.449Z"),
        updatedDate: DateTime.parse("2022-06-28T06:07:58.449Z"),
        owner: Owner(
          firstName: 'Aung Thu',
          lastName: 'Katwal',
          id: '62b9749974d53d345ec4c08f',
          title: "Something",
          picture: 'https://randomuser.me/api/portraits/med/men/37.jpg',
        ),
      ),
      PostVo(
        id: "60d21b4667d0d8992e610c85",
        image: "https://img.dummyapi.io/photo-1564694202779-bc908c327862.jpg",
        likes: 43,
        tags: ["animal", "dog", "golden retriever"],
        text: "adult Labrador retriever",
        publishDate: DateTime.parse("2020-05-24T14:53:17.598Z"),
        updatedDate: DateTime.parse("2020-05-24T14:53:17.598Z"),
        owner: Owner(
          firstName: 'Sara',
          lastName: 'Andersen',
          id: '60d0fe4f5311236168a109ca',
          title: "Something",
          picture: 'https://randomuser.me/api/portraits/women/58.jpg',
        ),
      ),
      PostVo(
        id: "60d21b4967d0d8992e610c90",
        image: "https://img.dummyapi.io/photo-1510414696678-2415ad8474aa.jpg",
        likes: 31,
        tags: ["snow", "ice", "mountain"],
        text: "ice caves in the wild landscape photo of ice near ...",
        publishDate: DateTime.parse("2020-05-24T07:44:17.738Z"),
        updatedDate: DateTime.parse("2020-05-24T07:44:17.738Z"),
        owner: Owner(
          firstName: 'Margarita',
          lastName: 'Vicente',
          id: '60d0fe4f5311236168a10a0b',
          title: "Something",
          picture: 'https://randomuser.me/api/portraits/med/women/5.jpg',
        ),
      ),
      PostVo(
        id: "60d21b8667d0d8992e610d3f",
        image: "https://img.dummyapi.io/photo-1515376721779-7db6951da88d.jpg",
        likes: 16,
        tags: ["dog", "pet", "canine"],
        text: "@adventure.yuki frozen grass short-coated black do...",
        publishDate: DateTime.parse("2020-05-24T05:44:55.297Z"),
        updatedDate: DateTime.parse("2020-05-24T05:44:55.297Z"),
        owner: Owner(
          firstName: 'Kayla',
          lastName: 'Bredesen',
          id: '60d0fe4f5311236168a109ed',
          title: "Something",
          picture: 'https://randomuser.me/api/portraits/med/women/13.jpg',
        ),
      )
    ];

    return dummyPostList;
  }
}
