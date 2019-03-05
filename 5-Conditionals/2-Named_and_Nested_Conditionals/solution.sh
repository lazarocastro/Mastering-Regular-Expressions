 grep -Po '(ID|(?<fn>Function)|(?<dur>Duration)): (?(fn)\w+\.\w+|(?(dur)\d+\.\d+ ms|\w+))' highstate-plain
