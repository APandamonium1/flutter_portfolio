class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  Project(this.name, this.description, this.image, this.link);
}

List<Project> projectList = [
  Project(
      'Flutter Portfolio',
      'A portfolio website coded using Flutter. A way for me to say "Hello World".',
      'assets/images/portfolio_flutter.png',
      'https://github.com/APandamonium1/flutter_portfolio'),
  Project(
      'ByteHackz 2023 Discord Bot',
      'A Discord bot coded using discord.py with multiple APIs integrated in the slash commands to create some fun and convenience during the cohort-wide hackathon hosted by my club (NP Overflow).',
      'assets/images/bytehackz_slash.png',
      'https://github.com/np-overflow/Bytehackz-Bot-2-2023'),
  Project(
      'Go Portfolio v1',
      'A portfolio website coded using Go. This was my first attempt at creating a portfolio website, and it was a great learning experience for me. I learned how to use Go to create a web server and how to use HTML and CSS to create a responsive design.',
      'assets/images/portfolio_go.png',
      'https://github.com/APandamonium1/jw_portfolio_go_v1'),
];
