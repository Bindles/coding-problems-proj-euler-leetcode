require 'clipboard'

# Read the clipboard content and force it to UTF-8 encoding
clipboard_text = Clipboard.paste.encode('UTF-8', 'UTF-16LE', invalid: :replace, undef: :replace, replace: '')

# Process the clipboard text
def process_clipboard_text(text)
  # Split the text by newlines
  lines = text.split("\n")
  
  # Extract the name and starting code
  name = lines[0].strip
  starting_code = lines[1..-1].join.strip
  
  # Format the output
  output = <<~OUTPUT
    Name: #{name}
    
    Starting Code:
    #{starting_code}
  OUTPUT
  
  # Print the formatted output
  puts output
  
  # Create a file with the problem name and save the starting code
  filename = "#{name}.rb"
  File.open(filename, 'w') do |file|
    file.puts starting_code
  end
  
  puts "File '#{filename}' created successfully."
  
  # Open the file in Visual Studio Code
  system("code -r \"#{filename}\"")
end

# Display the processed clipboard text and create the file
process_clipboard_text(clipboard_text)
