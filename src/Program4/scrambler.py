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
	"""Assumes one iteration for now"""
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
		

def test_cat_map():
	string = "hi\nI'm\nscrambling\nthis\nlonger\nphrase\nnow\nwow\nbleh"
	scr = arnold_cat_map(string, 5)
	print scr

test_cat_map()


