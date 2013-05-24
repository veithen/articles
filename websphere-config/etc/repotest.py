# Test script that locates configuration objects in contexts that don't use the two level (type/name) directory structure

import java.lang.System as sys
import re

lineSeparator = sys.getProperty('line.separator')

def toList(s):
    if len(s) == 0:
        return []
    else:
        return s.split(lineSeparator)

for type in toList(AdminConfig.types()):
    for object in toList(AdminConfig.list(type)):
        m = re.search('.*\((.*)\|.*', object)
        context = m.group(1)
        if len(context.split('/')) % 2 != 0:
            print object
