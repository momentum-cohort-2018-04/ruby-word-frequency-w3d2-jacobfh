class Wordfreq
  STOP_WORDS = ['a', 'an', 'and', 'are', 'as', 'at', 'be', 'by', 'for', 'from',
    'has', 'he', 'i', 'in', 'is', 'it', 'its', 'of', 'on', 'that', 'the', 'to',
    'were', 'will', 'with']

  def initialize(filename)
    @filename = filename
  end

#  - remove punctuation                    //[[:punct:]]//
#  - normalize all words to lowercase        .downcase
#  - remove "stop words" -- words used so frequently they are ignored      != STOP_WORDS
#  - go through the file word by word and keep a count of how often each word is used

# - assign word to the key (k) and number of frequencies to value (v)

  def frequency(word) 
    #run file
      words = string.split(' ')
      frequency = Hash.new(0)
      words.each { |word| frequency[word.downcase] += 1 }
      return frequency
  end

  def frequencies  #count by calling freq
  end

  def top_words(number) #sort by calling freqs
    frequencies
    sort -v
    take(num)
  end

  def print_report  #make it look like example
  end
end

if __FILE__ == $PROGRAM_NAME
  filename = ARGV[0]
  if filename
    full_filename = File.absolute_path(filename)
    if File.exists?(full_filename)
      wf = Wordfreq.new(full_filename)
      wf.print_report
    else
      puts "#{filename} does not exist!"
    end
  else
    puts "Please give a filename as an argument."
  end
end
