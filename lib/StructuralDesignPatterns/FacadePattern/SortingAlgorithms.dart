
import 'ISorter.dart';

class BubbleSort implements ISorter {

  @override
  void sort() {
    print('Performing BubbleSorting');
  }
}

class MergeSort implements ISorter {

  @override
  void sort() {
    print('Performing MergeSorting');
  }
}

class QuickSort implements ISorter {

  @override
  void sort() {
    print('Performing QuickSorting');
  }
}