songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song_title, index|
    puts "#{index + 1}. #{song_title}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp

  song_hash = {}
  songs.each_with_index do |song_title, index|
    song_hash[(index + 1).to_s] = song_title
    #song number is key and song name is value
  end

  if song_hash.has_key?(song_choice)
    puts "Playing #{song_hash[song_choice]}"
  elsif song_hash.has_value?(song_choice)
    puts "Playing #{song_choice}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def get_user_input
  puts "Please enter a command:"
  user_input = gets.strip
end

def run(songs)
  help
  get_user_input

  until get_user_input == "exit"
    if get_user_input == "list"
      list(songs)
      get_user_input
    elsif get_user_input == "play"
      play(songs)
      get_user_input
    elsif get_user_input == "help"
      help
      get_user_input
    end
  end
  exit_jukebox
end
