import sys, json, io
f = open('quotes.json')

data = json.load(f)
file_number = 0
for entry in data['quotes']:
	print(entry['text'])
	print(entry['author'])
	with io.open("file_" + str(file_number) + ".txt", 'w', encoding='utf-8') as f:
		f.write(entry['text'] + '\n\n' + entry['author'])
		file_number += 1
		f.close
