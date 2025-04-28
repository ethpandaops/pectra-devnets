import numpy as np
import math

total_validators = 3000
validator_per_machine = 100
start = 0

cl_split = {
    'prysm': 0.17,
    'lighthouse': 0.18,
    'teku': 0.17,
    'lodestar': 0.16,
    'nimbus': 0.16,
    'grandine': 0.16
}


el_split = {
    'geth': 0.20,
    'nethermind': 0.20,
    'ethereumjs': 0.00,
    'reth': 0.20,
    'besu': 0.20,
    'erigon': 0.20,
    'nimbusel': 0.00,
}

pairwise_validators = {}

for cl_name, cl_percent in cl_split.items():
    for el_name, el_percent in el_split.items():
        validators = total_validators * cl_percent * el_percent
        pairwise_validators[(cl_name, el_name)] = validators

output = ""
for (cl, el), count in pairwise_validators.items():

    variable_name = f"{cl.lower()}_{el.lower()}"
    name = f"{cl.lower()}-{el.lower()}"
    machine_count = math.ceil(count / validator_per_machine)

    end = start + int(count)

    output += f'variable "{variable_name}" {{\n'
    output += f'  default = {{\n'
    output += f'    name            = "{name}"\n'
    output += f'    count           = {machine_count}\n'
    output += f'    validator_start = {start}\n'
    output += f'    validator_end   = {end}\n'
    output += f'  }}\n'
    output += f'}}\n\n'

    start = end

print(output)
