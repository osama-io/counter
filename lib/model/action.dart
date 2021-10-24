class ActionsModel {
  String? actionTitle;
  String? actionImage;
  String? actionCount;

  ActionsModel(
    this.actionTitle,
    this.actionImage,
    this.actionCount,
  );
}

List<ActionsModel> actionList = actionModel
    .map((item) => ActionsModel(item['actionTitle'].toString(),
        item['actionImage'].toString(), item['actionCount'].toString()))
    .toList();

var actionModel = [
  {
    "actionTitle": "Hug",
    "actionImage": "assets/hug.png",
    "actionCount": "20",
  },
  {
    "actionTitle": "Kiss",
    "actionImage": "assets/kiss.png",
    "actionCount": "5",
  },
  {
    "actionTitle": "Hold Hands",
    "actionImage": "assets/holdhands.png",
    "actionCount": "4",
  },
  {
    "actionTitle": "Dance",
    "actionImage": "assets/dance.png",
    "actionCount": "7",
  },
  {
    "actionTitle": "Play",
    "actionImage": "assets/play.png",
    "actionCount": "5",
  },
  {
    "actionTitle": "Make Love",
    "actionImage": "assets/makelove.png",
    "actionCount": "5",
  },
];
