output = open("test2out.txt", "r")

store = {}

for line in output.readlines():
    words = line.split()
    op = words[0]
    pid = words[1]
    if op == '!' and words[2] == '0':
        store[pid] = {'in': [], 'out': []}
    elif op == '@':
        store[pid]['in'].append((int(words[2]), int(words[3])))
    elif op == '#':
        store[pid]['out'].append(int(words[2]))

print(len(store))

errors = 0

for temp in store.values():
    temp['in'].sort(key = lambda t: t[1])
    if [val[0] for val in temp['in']] != temp['out']:
        errors += 1

print(errors)
