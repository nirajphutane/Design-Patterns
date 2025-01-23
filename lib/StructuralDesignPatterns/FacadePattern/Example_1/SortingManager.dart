
// Facade
import 'SortingAlgorithms.dart';
import 'ISorter.dart';

class SortingManager {
  final ISorter _bubbleSorter = BubbleSort();
  final ISorter _mergeSorter = MergeSort();
  final ISorter _quickSorter = QuickSort();

  void doBubbleSort() => _bubbleSorter.sort();
  void doMergeSort() => _mergeSorter.sort();
  void doQuickSort() => _quickSorter.sort();
}