import 'package:flutter/material.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TALLURU URJITHA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF7F9FA),
        primaryColor: const Color(0xFF1E88E5),
        fontFamily: 'sans-serif',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/about': (context) => const AboutScreen(),
        '/qualifications': (context) => const QualificationsScreen(),
        '/skills': (context) => const SkillsScreen(),
        '/contact': (context) => const ContactScreen(),
      },
    );
  }
}

// ----------------------------------------------------
// 1. HOME SCREEN
// ----------------------------------------------------
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'TALLURU URJITHA',
          style: TextStyle(color: Colors.black87, fontSize: 16),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 48,
                backgroundImage: NetworkImage(
                  'profile.jpeg', // Replace with your image asset
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'TALLURU URJITHA',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 28),
              _NavButton(
                icon: Icons.info_outline,
                label: 'About Me',
                onPressed: () => Navigator.pushNamed(context, '/about'),
              ),
              _NavButton(
                icon: Icons.school_outlined,
                label: 'Qualifications',
                onPressed: () =>
                    Navigator.pushNamed(context, '/qualifications'),
              ),
              _NavButton(
                icon: Icons.star_border,
                label: 'Skills',
                onPressed: () => Navigator.pushNamed(context, '/skills'),
              ),
              _NavButton(
                icon: Icons.contact_mail_outlined,
                label: 'Contact',
                onPressed: () => Navigator.pushNamed(context, '/contact'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const _NavButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          side: const BorderSide(color: Color(0xFFE2E8F0)),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
          alignment: Alignment.centerLeft,
        ),
        icon: Icon(icon, size: 20, color: const Color(0xFF1E88E5)),
        label: Text(
          label,
          style: const TextStyle(color: Color(0xFF334155), fontSize: 15),
        ),
        onPressed: onPressed,
      ),
    );
  }
}

// ----------------------------------------------------
// 2. ABOUT ME SCREEN
// ----------------------------------------------------
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black87,
        title: const Text('About Me'),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 650),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'profile.jpeg',
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'TALLURU URJITHA',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 6),
                const Text(
                  'III Year Student',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                const SizedBox(height: 20),
                const Text(
                  'I am a passionate student interested in technology and mobile application development. '
                  'I enjoy learning new technologies and developing applications using Flutter and Dart. '
                  'My Goal is to become a Data Scientist and contribute to the field of Artificial Intelligence.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14.5, height: 1.5, color: Colors.black87),
                ),
                const SizedBox(height: 28),
                TextButton.icon(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.home, size: 18),
                  label: const Text('Back to Home'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ----------------------------------------------------
// 3. QUALIFICATIONS SCREEN
// ----------------------------------------------------
class QualificationsScreen extends StatelessWidget {
  const QualificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Qualifications'),
        backgroundColor: const Color(0xFF0288D1),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 700),
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: const [
              _QualificationCard(
                title: 'Bachelor of Technology',
                details: [
                  'Artificial Intelligence & Data Science',
                  'MLEW',
                  '2024 - 2028',
                  '★ CGPA: 7.99',
                ],
              ),
              _QualificationCard(
                title: 'Inter',
                details: [
                  'MPC',
                  'NRI Junior College',
                  '2022 - 2024',
                  '★ Percentage: 81.9',
                ],
              ),
              _QualificationCard(
                title: 'SSC',
                details: [
                  'Secondary Education',
                  'Completed',
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _QualificationCard extends StatelessWidget {
  final String title;
  final List<String> details;

  const _QualificationCard({required this.title, required this.details});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Color(0xFFE2E8F0)),
      ),
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.blue.shade50,
              child:
                  const Icon(Icons.school, color: Color(0xFF0288D1), size: 22),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  ...details.map(
                    (d) => Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Text(
                        d,
                        style: const TextStyle(
                            fontSize: 13.5, color: Colors.black87),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ----------------------------------------------------
// 4. SKILLS SCREEN
// ----------------------------------------------------
class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black87,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 700),
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: const [
              Text(
                'My Skills',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              _DetailCard(
                  icon: Icons.code,
                  title: 'Flutter',
                  subtitle: 'Mobile App Development'),
              _DetailCard(
                  icon: Icons.laptop,
                  title: 'Dart',
                  subtitle: 'Programming Language'),
              _DetailCard(
                  icon: Icons.storage,
                  title: 'Database',
                  subtitle: 'MySQL / Firebase'),
              _DetailCard(
                  icon: Icons.web,
                  title: 'Web Development',
                  subtitle: 'HTML, CSS, JavaScript'),
              _DetailCard(
                  icon: Icons.group,
                  title: 'Communication',
                  subtitle: 'Teamwork and Presentation'),
            ],
          ),
        ),
      ),
    );
  }
}

// ----------------------------------------------------
// 5. CONTACT SCREEN
// ----------------------------------------------------
class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black87,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 700),
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Back'),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Contact Me',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const _DetailCard(
                  icon: Icons.email_outlined,
                  title: 'Email',
                  subtitle: 'urjithatalluru@gmail.com'),
              const _DetailCard(
                  icon: Icons.phone_outlined,
                  title: 'Phone Number',
                  subtitle: '+91 9876543210'),
              const _DetailCard(
                  icon: Icons.business_center_outlined,
                  title: 'LinkedIn',
                  subtitle: 'https://www.linkedin.com/in/urjitha-talluru/'),
              const _DetailCard(
                  icon: Icons.code,
                  title: 'GitHub',
                  subtitle: 'https://github.com/urjithatalluru-2006'),
            ],
          ),
        ),
      ),
    );
  }
}

// ----------------------------------------------------
// REUSABLE CARD WIDGET
// ----------------------------------------------------
class _DetailCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _DetailCard({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Color(0xFFE2E8F0)),
      ),
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(icon, color: const Color(0xFF475569)),
        title: Text(title,
            style:
                const TextStyle(fontWeight: FontWeight.w600, fontSize: 14.5)),
        subtitle: Text(subtitle,
            style: const TextStyle(color: Color(0xFF64748B), fontSize: 13)),
      ),
    );
  }
}
