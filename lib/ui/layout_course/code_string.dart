final mainAxisAlignmentCodeString = '''
class MainAxisAlignmentSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
        appBar: AppBar(
          title: Text('MainAxisAlignment'),
        ),
        // body is the majority of the screen.
        body: Container(
          margin: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 6, bottom: 6),
                child: Text("Row - MainAxisAlignment.start",
                    style: Theme.of(context).textTheme.bodyText1),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(6))),

                // ***** Row - MainAxisAlignment.start *****
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(MdiIcons.emoticonOutline,
                        size: 50, color: Colors.white),
                    Icon(MdiIcons.emoticonOutline,
                        size: 50, color: Colors.white),
                    Icon(MdiIcons.emoticonOutline,
                        size: 50, color: Colors.white),
                    Icon(MdiIcons.emoticonOutline,
                        size: 50, color: Colors.white),
                    Icon(MdiIcons.emoticonOutline,
                        size: 50, color: Colors.white),
                  ],
                ),
              ),
              Container(height: 20),
              Container(
                padding: EdgeInsets.only(top: 6, bottom: 6),
                child: Text("Column - MainAxisAlignment.start",
                    style: Theme.of(context).textTheme.bodyText1),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6))),

                  // ***** Column - MainAxisAlignment.start *****
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(MdiIcons.emoticonOutline,
                          size: 50, color: Colors.white),
                      Icon(MdiIcons.emoticonOutline,
                          size: 50, color: Colors.white),
                      Icon(MdiIcons.emoticonOutline,
                          size: 50, color: Colors.white),
                      Icon(MdiIcons.emoticonOutline,
                          size: 50, color: Colors.white),
                      Icon(MdiIcons.emoticonOutline,
                          size: 50, color: Colors.white),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
''';
