import 'package:flutter/material.dart';
import '/models/course.dart';
import '/widgets/bottom_navigation.dart';
import '/widgets/footer_section.dart';
import '/widgets/search_result_card.dart';

class SearchResultsScreen extends StatefulWidget {
  const SearchResultsScreen({super.key});

  @override
  State<SearchResultsScreen> createState() => _SearchResultsScreenState();
}

class _SearchResultsScreenState extends State<SearchResultsScreen> {
  int _currentIndex = 0;
  String _searchQuery = '';
  String _selectedFilter = 'All';

  final List<String> _filters = [
    'All',
    'Courses',
    'Projects',
    'PRO sessions',
  ];

  final List<int> _filterCounts = [43, 22, 3, 3];

  // Mock search results
  late List<Course> _searchResults;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Get search query from route arguments
    final query = ModalRoute.of(context)?.settings.arguments as String?;
    if (query != null) {
      _searchQuery = query;
      _performSearch(query);
    }
  }

  void _performSearch(String query) {
    _searchResults = List.generate(
      8,
      (index) => Course(
        id: 'result-$index',
        title: 'Computer Network',
        description:
            'A network is a system that links computers and devices to share resources and exchange data, enabling communication and access to shared services, whether locally.',
        instructor: 'Dr. Bunthorn Liv',
        instructorTitle: 'Professor @ITC',
        price: 39.99,
        rating: 4.5,
        participants: 99,
        imageUrl: 'assets/images/word.png',
      ),
    );
  }

  void _onFilterSelected(String filter) {
    setState(() {
      _selectedFilter = filter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // App Bar with Logo and Search
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  // Logo
                  Container(
                    height: 30,
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'assets/images/logo.jpg',
                      height: 30,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.person_outline),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            // Search Bar with Query
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 16),
                    const Icon(Icons.search, color: Colors.grey),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        _searchQuery,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close, color: Colors.grey),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ),

            // Filter Tabs
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: _filters.length,
                itemBuilder: (context, index) {
                  final isSelected = _filters[index] == _selectedFilter;
                  return GestureDetector(
                    onTap: () => _onFilterSelected(_filters[index]),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color:
                                isSelected ? Colors.orange : Colors.transparent,
                            width: 2,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '${_filters[index]} (${_filterCounts[index]})',
                          style: TextStyle(
                            color: isSelected ? Colors.orange : Colors.grey,
                            fontWeight: isSelected
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            // Main Content - Search Results and Footer
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Search Results
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          ...List.generate(
                            _searchResults.length,
                            (index) =>
                                SearchResultCard(course: _searchResults[index]),
                          ),
                          // Load More Button
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Center(
                              child: TextButton(
                                onPressed: () {
                                  // Load more results
                                },
                                child: const Text(
                                  'Load More...',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Footer - moved inside SingleChildScrollView
                    const FooterSection(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigation(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
