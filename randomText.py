import random
import string

# printing letters
letters = string.ascii_letters
print ( ''.join(random.choice(letters) for i in range(10)) )

