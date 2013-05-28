import MapReduce
import sys

mr = MapReduce.MapReduce()

# =============================
# Do not modify above this line

def mapper(record):
    mr.emit_intermediate(record[1],record)

def reducer(key, list_of_values):
    #output = []
    for order in list_of_values:
        for line in list_of_values:
            if order[0] == 'order' and line[0] == 'line_item':
                newline = order + line
                #output.append(tuple(order))
                #output.append(tuple(line))
                mr.emit(newline) 

# Do not modify below this line
# =============================
if __name__ == '__main__':
  inputdata = open(sys.argv[1])
  mr.execute(inputdata, mapper, reducer)
