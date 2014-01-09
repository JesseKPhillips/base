module java.util.List;

import java.lang.all;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;

interface List : Collection {
    public void     add(size_t index, Object element);
    public bool     add(Object o);
    public bool     add(String o);
    public bool     addAll(Collection c);
    public bool     addAll(size_t index, Collection c);
    public void     clear();
    public bool     contains(Object o);
    public bool     contains(String o);
    public bool     containsAll(Collection c);
    public equals_t opEquals(Object o);
    public Object   get(size_t index);
    version(Tango){
        public hash_t   toHash();
    } else { // Phobos
        mixin(`@safe nothrow public hash_t   toHash();`);
    }
    public ptrdiff_t indexOf(Object o);
    public bool     isEmpty();
    public Iterator iterator();
    public ptrdiff_t     lastIndexOf(Object o);
    public ListIterator   listIterator();
    public ListIterator   listIterator(size_t index);
    public Object   remove(size_t index);
    public bool     remove(Object o);
    public bool     remove(String o);
    public bool     removeAll(Collection c);
    public bool     retainAll(Collection c);
    public Object   set(size_t index, Object element);
    public size_t   size();
    public List     subList(size_t fromIndex, size_t toIndex);
    public Object[] toArray();
    public Object[] toArray(Object[] a);
    public String[] toArray(String[] a);
    public String   toString();
}

