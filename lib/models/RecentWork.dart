class RecentWork {
  final String image, category, title;
  final int id;

  RecentWork(
      {required this.id,
      required this.image,
      required this.category,
      required this.title});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "A Photo Enhancer App.",
    category: "ZoomGrid",
    image: "assets/images/work_1.png",
  ),
  RecentWork(
    id: 2,
    title: "Image to Text Converter",
    category: "MicroScan",
    image: "assets/images/work_2.png",
  ),
  RecentWork(
    id: 3,
    title: "Augmented Reality Furniture App",
    category: "AR App",
    image: "assets/images/work_3.jpg",
  ),
  RecentWork(
    id: 4,
    title: "ERP App",
    category: "ERP Gold/ScanInScanOut",
    image: "assets/images/work_4.png",
  ),
];
