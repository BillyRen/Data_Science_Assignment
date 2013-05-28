import MapReduce
import sys

mr = MapReduce.MapReduce()

# =============================
# Do not modify above this line

def mapper(record):
    # key: document identifier
    # value: document contents
    key = record[0]
    value = record[1]
    words = value.split()
    for w in words:
      mr.emit_intermediate(w, key)

def reducer(key, list_of_values):
    # key: word
    # value: document contents
    docid = []
    output = []
    #docid.append(key)
    for value in list_of_values:
        if value not in docid:
            docid.append(value)
    output.append(key)
    output.append(docid)
    #docid.append(list_of_values)
    mr.emit(tuple(output))
    #mr.emit((key, tuple(docid)))

# Do not modify below this line
# =============================
if __name__ == '__main__':
  inputdata = open(sys.argv[1])
  mr.execute(inputdata, mapper, reducer)
