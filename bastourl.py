import sys
import urllib.parse

# Get the names of the input and output files from the command line arguments
input_file = sys.argv[1]
output_file = sys.argv[2]

# Read the contents of the text file
with open(input_file, 'r') as f:
    text = f.read()



# URL-encode the text
encoded_text = urllib.parse.quote(text)
# Replace line endings with the URL-encoded equivalent of a newline character
encoded_text = encoded_text.replace('%0A', '%5Cn')
# Get the first 7 characters of the input file name
input_file_prefix = input_file[:7]

# Add the encoded text to the URL as a query parameter
url = 'https://bbcmic.ro/#%7B%22v%22%3A1%2C%22program%22%3A%22' + encoded_text

# Send the request

# Save the response to a file
with open(output_file, 'w') as f:
    f.write(url)
