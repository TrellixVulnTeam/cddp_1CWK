import sys
import random

def load_file(input_file):
    data = []
    block = []
    with open(input_file, 'r', encoding='utf-8') as f:
        for line in f:
            if len(line.strip()) == 0:
                if len(block) > 0:
                    data.append(block)
                    block = []
            else:
                block.append(line.strip().split('\t'))
        if len(block) > 0:
            data.append(block)

    return data

def write_file(data, output_file):
    with open(output_file, 'w', encoding='utf-8') as f:
        for sent in data:
            for line in sent:
                f.write('\t'.join(line)+'\n')
            f.write('\n')

def fix_data(data):
    for i in range(len(data)):
        for j in range(len(data[i])):
            data[i][j][9] = '0.5'
    return data


if __name__ == '__main__':

    org_data = load_file(sys.argv[1])
    tri_data = load_file(sys.argv[2])

    tri_data = fix_data(tri_data)
    
    print(len(org_data), len(tri_data))
    merge_data = org_data
    while len(merge_data) < len(tri_data):
        merge_data += org_data

    merge_data += tri_data

    random.shuffle(merge_data)

    write_file(merge_data, sys.argv[3])

    print(len(merge_data))