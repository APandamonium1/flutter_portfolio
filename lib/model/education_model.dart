class Education {
  final String name;
  final String year;
  final String description;
  final String image;
  final String cca;
  Education(this.name, this.year, this.description, this.image, this.cca);
}

List<Education> educationList = [
  Education(
      'Flutter Portfolio',
      'A portfolio website coded using Flutter. A way for me to say "Hello World".',
      'assets/images/player.png',
      'https://github.com/APandamonium1/flutter_portfolio',
      'cca'),
  Education(
      'ByteHackz 2023 Discord Bot',
      'A Discord bot coded using discord.py with multiple APIs integrated in the slash commands to create some fun and convenience during the cohort-wide hackathon hosted by my club (NP Overflow).',
      'assets/images/bytehackz_slash.png',
      'https://github.com/np-overflow/Bytehackz-Bot-2-2023',
      'cca'),
  Education(
      'ByteHackz 2023 Discord Bot',
      'A Discord bot coded using discord.py with multiple APIs integrated in the slash commands to create some fun and convenience during the cohort-wide hackathon hosted by my club (NP Overflow).',
      'assets/images/bytehackz_slash.png',
      'https://github.com/np-overflow/Bytehackz-Bot-2-2023',
      'cca'),
];
