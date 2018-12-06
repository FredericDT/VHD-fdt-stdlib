#!/usr/local/bin/python3

import re
import sys
import itertools
import os

ZERO_ONE_ARRAY = ['0', '1']

def get_string_from_product(i):
    if isinstance(i[0], tuple):
        return get_string_from_product(i[0]) + i[1]
    else:
        return i[0] + i[1]

def gen_vector_arrange(length):
    global ZERO_ONE_ARRAY
    if length <= 1:
        return ZERO_ONE_ARRAY
    else:
        return itertools.product(gen_vector_arrange(length - 1), ZERO_ONE_ARRAY)

if __name__ == '__main__':
    print(sys.argv)
    if (len(sys.argv) < 3):
        print("""
                Usage: generate-tb.py <src.vhd> <target.vhd>
                """)
        exit(0)
    data = None
    parsed = {}
    with open(sys.argv[1], 'r') as myfile:
        data = myfile.read()
    
    entity_name = re.search(r'(?i)entity\s+(.+)\s+is', data, re.M)
    if len(entity_name.group()) < 2:
        print("entity not found")
        exit(1)
    entity_name = entity_name.group(1)
    parsed['entity_name'] = entity_name
    print(entity_name)
    ports = re.search(r'(?i)entity\s+'+entity_name+'\s+is\s+(port\s*[(](.|\n)*?[)]\s*;)\s+end\s+entity(\n|.)*?;', data, re.M)

    ports_section = ports.group(1)
    parsed['ports_section'] = ports_section
    print(ports_section)
    all_ports = re.findall(r'(?i)\s*?(\S+)\s*:\s*(in|out|inout)\s+std_logic(_vector\s*[(]\s*(\d+)\s+(down)?to\s+(\d+)[)])?\s*?;?', ports_section, re.M)

    #print(all_ports)

    ports_array = []
    for i in all_ports:
        c = {
            'name': i[0],
            'inout': i[1],
            'vector_raw': i[2],
            'is_vector': len(i[2]) > 0,
            'vector_start': i[3],
            'vector_end': i[5]
        }
        if c['is_vector']:
            c['vector_length'] = (1 + abs(int(c['vector_start']) - int(c['vector_end'])))
        ports_array += [c]

    #print(ports_array)

    signals_section = ''

    for i in ports_array:
        c = "signal {}_t: std_logic{};\n".format(i['name'], i['vector_raw'])
        signals_section += c

    print(signals_section)

    ports_t_names = ''

    for i in all_ports:
        ports_t_names += ', ' + i[0] + '_t'

    if len(ports_t_names) > 0:
        ports_t_names = ports_t_names[2:]

    print(ports_t_names)

    in_ports = [i for i in ports_array if 'in' in i['inout']]

    print(in_ports)

    in_ports = [{
        'name': i['name'],
        'is_vector': i['is_vector'],
        'vector_length': i['vector_length'] if 'vector_length' in i else 1,
        'arranges': [(get_string_from_product(j), i['name']+'_t') for j in gen_vector_arrange(i['vector_length'] if 'vector_length' in i else 1)]
    } for i in in_ports]

    #print(in_ports)
    
    test_cases = ''
    for i in itertools.product(*[j['arranges'] for j in in_ports]):
        for k in i:
            test_cases += '{} <= {};\n'.format(k[1], '"'+k[0]+'"' if len(k[0]) > 1 else "'"+k[0]+"'")
        test_cases += 'wait for 10 ns;\n\n'

    print(test_cases)

    template = None
    with open(os.path.dirname(os.path.abspath(__file__))+'/tb-template.vhd', 'r') as file:
        template = file.read()
    
    template = template.replace('<entity_name>', entity_name)
    template = template.replace('<ports_section>', ports_section)
    template = template.replace('<signals_section>', signals_section)
    template = template.replace('<ports_names>', ports_t_names)
    template = template.replace('<test_cases>', test_cases)

    with open(sys.argv[2], 'w') as file:
        file.write(template)
    
    print('written to '+sys.argv[2])

