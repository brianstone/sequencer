#Sequencer
By Brian Stone

##What is Sequencer?
A program used to solve the following problem:
Write a program which, given a dictionary, generates two output files, 'sequences' and 'words'. 'sequences' should contain every sequence of four letters (A-z) that appears in exactly one word of the dictionary, one sequence per line. 'words' should contain the corresponding words that contain the sequences, in the same order, again one per line.

###Requirements:
* Ruby 2.0+ installed

###Getting Started
1. Clone `sequencer`
2. Run `ruby sequencer.rb`
3. View created files

###For Testing
* Run rspec on the designated *_spec.rb files

###Additional Files
`dictionary.txt`
Contains a large number of words and should be used to achieve the final solution.

`reader_spec.rb & writer_spec.rb`
Contains tests for sequencer.

`sequences`
Sequences is created after sequencer is finished running and contains the desired 4 letter sequences.

`words`
Words is created after sequencer is finished running and contains the words corresponding to each 4 letter sequence.
