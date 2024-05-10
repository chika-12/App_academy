def file(file_name):
    try:
        with open(file_name, encoding="UTF-8", errors="ignore")as file:
            content = file.read()
    except FileNotFoundError:
        print("{} does not exist".format(file_name))
    else:
        """counts the number of words in a file"""
        words = content.split()
        number_of_words = len(words)
        print("{} has about {} words".format(file_name, number_of_words))

files = ["file.txt", "false.txt", "help.txt"]
for line in files:
    file(line)