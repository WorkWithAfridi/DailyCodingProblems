//This problem was asked by Amazon.
//
//Given an array of a million integers between zero and a billion, out of order, how can you efficiently sort it? Assume that you cannot store an array of a billion elements in memory.



//Answer:
//
//This problem involves external sorting, where the data is too large to fit into memory, and you need to efficiently sort it. One common algorithm for external sorting is the External Merge Sort. Here's a high-level overview of how you could approach this problem:
//
//Divide into chunks: Read the array in chunks that fit into memory. Sort each chunk individually.
//
//Sort each chunk: Use an efficient in-memory sorting algorithm (e.g., quicksort, mergesort) to sort each chunk.
//
//Merge sorted chunks: Merge the sorted chunks into a single sorted sequence. This can be done using a priority queue or a k-way merge algorithm.
