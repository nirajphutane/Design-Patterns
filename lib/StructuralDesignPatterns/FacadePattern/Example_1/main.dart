
import 'SortingManager.dart';

void main(final List<String> args) {
  final SortingManager sortingManager = SortingManager();
  sortingManager.doBubbleSort();
  sortingManager.doMergeSort();
  sortingManager.doQuickSort();
}