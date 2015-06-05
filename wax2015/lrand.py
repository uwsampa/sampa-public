import random


def lrand(fn='program.md', marker='\n\n<!-- lightning -->\n\n'):
    with open(fn) as f:
        program = f.read()
    pre, lightning, post = program.split(marker)
    talks = lightning.split('*')[1:]

    random.shuffle(talks)

    out = [pre, marker]
    for talk in talks:
        out += ['* ', talk.strip(), '\n']
    del out[-1]
    out += [marker, post]

    program = ''.join(out)
    with open(fn, 'w') as f:
        f.write(program)

if __name__ == '__main__':
    lrand()
