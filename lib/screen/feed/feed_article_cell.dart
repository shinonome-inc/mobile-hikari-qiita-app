part of 'feed_screen.dart';

class _ArticleCell extends StatelessWidget {
  const _ArticleCell({Key? key, required this.article}) : super(key: key);
  final Article article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          ClipOval(
            child: Image.network(
              article.user.profileImageUrl,
              width: 38,
              height: 38,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color.fromRGBO(178, 178, 178, 1),
                      width: 0.5,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 16, 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(article.title,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(51, 51, 51, 1),
                          )),
                      Row(
                        children: [
                          Text(
                            "@${article.user.id}",
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(130, 130, 130, 1),
                            ),
                          ),
                          const Gap(3),
                          Text(
                            "投稿日: ${article.formattedCreatedAt}",
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(130, 130, 130, 1),
                            ),
                          ),
                          const Gap(3),
                          Text(
                            "いいね: ${article.likesCount}",
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(130, 130, 130, 1),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
