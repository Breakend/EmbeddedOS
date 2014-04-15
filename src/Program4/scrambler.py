import math

""" Maps a 1d address to a 2d address
	for use in the arnold cat map,
	n is the size of the square matrix
	to be mapped to """
def map_to_2d(od_address, n):
	return [int(math.floor(od_address/n)), od_address%n]

""" Returns the 1d address from a 2d address"""
def map_to_1d(x, y, n):
	return x*n + y

def test_mapping():
	[x, y] = map_to_2d(6, 3)
	test = [1, 2, 3, 4, 5, 6, 7, 8, 9]
	test_2d = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
	print x
	print y
	print test_2d[x][y]
	print map_to_1d(x, y, 3)
	# for i in range(1,9):

def arnold_cat_map(string, iterations):
	lines = string.splitlines()
	n = int(math.sqrt(len(lines)))
	for j in range(0, iterations):
		scrambled = [""]*len(lines)
		for i in range(0, len(lines)):
			[x, y] = map_to_2d(i, n)
			x_prime = (2*x + y) % n
			y_prime = (x + y) % n
			pos = map_to_1d(x_prime, y_prime, n)
			print pos
			scrambled[pos] = lines[i]
		lines = scrambled
	return scrambled

"""Finds the number of iterations before the map
	returns to the original"""
def find_unscramble_key(string):
	orig = string.splitlines()
	lines = string.splitlines()
	n = int(math.sqrt(len(lines)))
	count = 0
	scrambled = [""]*len(lines)
	while scrambled != orig and count < 1000:
		count +=1
		scrambled = [""]*len(lines)
		for i in range(0, len(lines)):
			[x, y] = map_to_2d(i, n)
			x_prime = (2*x + y) % n
			y_prime = (x + y) % n
			pos = map_to_1d(x_prime, y_prime, n)
			# print pos
			scrambled[pos] = lines[i]
		lines = scrambled
	return count

def test_cat_map():
	string = "hi\nI'm\nscrambling\nthis\nlonger\nphrase\nnow\nwow\nbleh"
	scr = arnold_cat_map(string, 5)
	print scr

def scramble_test():
	txt = open("sample.txt").read()
	scrambled = arnold_cat_map(txt, 5)
	with open("output.txt", "w") as text_file:
		for line in scrambled:
			text_file.write(line + "\n")

def unscramble_test():
	txt = open("output.txt").read()
	scrambled_iterations = 5
	key = find_unscramble_key(txt)
	iterations = key - scrambled_iterations % key
	print "ITERATIONS: {}".format(iterations)
	unscrambled = arnold_cat_map(txt, iterations)
	with open("unscrambled.txt", "w") as text_file:
		for line in unscrambled:
			text_file.write(line + "\n")

def test_key_find():
	txt = open("sample.txt").read()
	print find_unscramble_key(txt)

"""TODO: need to preprocess string so split by lines, but keep labels together with next line and 
	make "sublabels" into real labels. also need to only pass the lines after the stack setup stuff 
	because the linker makes those and hacking the linker is a bit much"""

# unscramble_test()

scramble_test()
# print find_unscramble_key(txt)


# test_key_find()
