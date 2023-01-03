package g.a;

import androidx.appcompat.widget.ActivityChooserView;
import io.realm.OrderedRealmCollection;
import io.realm.internal.OsList;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;

/* compiled from: RealmList.java */
/* loaded from: classes.dex */
public class c0<E> extends AbstractList<E> implements OrderedRealmCollection<E> {
    public Class<E> a;
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public final o<E> f6218c;

    /* renamed from: d  reason: collision with root package name */
    public final g.a.a f6219d;

    /* renamed from: e  reason: collision with root package name */
    public List<E> f6220e;

    /* compiled from: RealmList.java */
    /* loaded from: classes.dex */
    public class b implements Iterator<E> {
        public int a = 0;
        public int b = -1;

        /* renamed from: c  reason: collision with root package name */
        public int f6221c;

        public b(a aVar) {
            this.f6221c = ((AbstractList) c0.this).modCount;
        }

        public final void a() {
            if (((AbstractList) c0.this).modCount != this.f6221c) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            c0.this.f6219d.f();
            a();
            return this.a != c0.this.size();
        }

        @Override // java.util.Iterator
        public E next() {
            c0.this.f6219d.f();
            a();
            int i2 = this.a;
            try {
                E e2 = (E) c0.this.get(i2);
                this.b = i2;
                this.a = i2 + 1;
                return e2;
            } catch (IndexOutOfBoundsException unused) {
                a();
                StringBuilder p = f.b.a.a.a.p("Cannot access index ", i2, " when size is ");
                p.append(c0.this.size());
                p.append(". Remember to check hasNext() before using next().");
                throw new NoSuchElementException(p.toString());
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            c0.this.f6219d.f();
            if (this.b >= 0) {
                a();
                try {
                    c0.this.remove(this.b);
                    if (this.b < this.a) {
                        this.a--;
                    }
                    this.b = -1;
                    this.f6221c = ((AbstractList) c0.this).modCount;
                    return;
                } catch (IndexOutOfBoundsException unused) {
                    throw new ConcurrentModificationException();
                }
            }
            throw new IllegalStateException("Cannot call remove() twice. Must call next() in between.");
        }
    }

    /* compiled from: RealmList.java */
    /* loaded from: classes.dex */
    public class c extends c0<E>.b implements ListIterator<E> {
        public c(int i2) {
            super(null);
            if (i2 >= 0 && i2 <= c0.this.size()) {
                this.a = i2;
                return;
            }
            StringBuilder o = f.b.a.a.a.o("Starting location must be a valid index: [0, ");
            o.append(c0.this.size() - 1);
            o.append("]. Index was ");
            o.append(i2);
            throw new IndexOutOfBoundsException(o.toString());
        }

        @Override // java.util.ListIterator
        public void add(E e2) {
            c0.this.f6219d.f();
            a();
            try {
                int i2 = this.a;
                c0.this.add(i2, e2);
                this.b = -1;
                this.a = i2 + 1;
                this.f6221c = ((AbstractList) c0.this).modCount;
            } catch (IndexOutOfBoundsException unused) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.a != 0;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.a;
        }

        @Override // java.util.ListIterator
        public E previous() {
            a();
            int i2 = this.a - 1;
            try {
                E e2 = (E) c0.this.get(i2);
                this.a = i2;
                this.b = i2;
                return e2;
            } catch (IndexOutOfBoundsException unused) {
                a();
                throw new NoSuchElementException(f.b.a.a.a.K("Cannot access index less than zero. This was ", i2, ". Remember to check hasPrevious() before using previous()."));
            }
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.a - 1;
        }

        @Override // java.util.ListIterator
        public void set(E e2) {
            c0.this.f6219d.f();
            if (this.b >= 0) {
                a();
                try {
                    c0.this.set(this.b, e2);
                    this.f6221c = ((AbstractList) c0.this).modCount;
                    return;
                } catch (IndexOutOfBoundsException unused) {
                    throw new ConcurrentModificationException();
                }
            }
            throw new IllegalStateException();
        }
    }

    public c0() {
        this.f6219d = null;
        this.f6218c = null;
        this.f6220e = new ArrayList();
    }

    public static boolean h(Class<?> cls) {
        return e0.class.isAssignableFrom(cls);
    }

    @Override // io.realm.RealmCollection
    public boolean a() {
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i2, E e2) {
        if (i()) {
            this.f6219d.f();
            o<E> oVar = this.f6218c;
            oVar.b(e2);
            if (e2 == null) {
                oVar.d(i2);
            } else {
                oVar.e(i2, e2);
            }
        } else {
            this.f6220e.add(i2, e2);
        }
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        if (i()) {
            this.f6219d.f();
            OsList.nativeRemoveAll(this.f6218c.b.a);
        } else {
            this.f6220e.clear();
        }
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        if (i()) {
            this.f6219d.f();
            if ((obj instanceof g.a.f1.n) && ((g.a.f1.n) obj).realmGet$proxyState().f6305c == g.a.f1.g.INSTANCE) {
                return false;
            }
            return super.contains(obj);
        }
        return this.f6220e.contains(obj);
    }

    public final o<E> g(g.a.a aVar, OsList osList, Class<E> cls, String str) {
        if (cls != null && !h(cls)) {
            if (cls == String.class) {
                return new n0(aVar, osList, cls);
            }
            if (cls != Long.class && cls != Integer.class && cls != Short.class && cls != Byte.class) {
                if (cls == Boolean.class) {
                    return new e(aVar, osList, cls);
                }
                if (cls == byte[].class) {
                    return new d(aVar, osList, cls);
                }
                if (cls == Double.class) {
                    return new h(aVar, osList, cls);
                }
                if (cls == Float.class) {
                    return new j(aVar, osList, cls);
                }
                if (cls == Date.class) {
                    return new g(aVar, osList, cls);
                }
                StringBuilder o = f.b.a.a.a.o("Unexpected value class: ");
                o.append(cls.getName());
                throw new IllegalArgumentException(o.toString());
            }
            return new n(aVar, osList, cls);
        }
        return new f0(aVar, osList, cls, str);
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i2) {
        if (i()) {
            this.f6219d.f();
            return this.f6218c.c(i2);
        }
        return this.f6220e.get(i2);
    }

    public boolean i() {
        return this.f6219d != null;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        if (i()) {
            return new b(null);
        }
        return super.iterator();
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public E remove(int i2) {
        E remove;
        if (i()) {
            this.f6219d.f();
            remove = get(i2);
            OsList.nativeRemove(this.f6218c.b.a, i2);
        } else {
            remove = this.f6220e.remove(i2);
        }
        ((AbstractList) this).modCount++;
        return remove;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection<?> collection) {
        if (i() && !this.f6219d.I()) {
            throw new IllegalStateException("Objects can only be removed from inside a write transaction.");
        }
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i2, E e2) {
        if (i()) {
            this.f6219d.f();
            o<E> oVar = this.f6218c;
            oVar.b(e2);
            E c2 = oVar.c(i2);
            if (e2 == null) {
                oVar.f(i2);
                return c2;
            }
            oVar.g(i2, e2);
            return c2;
        }
        return this.f6220e.set(i2, e2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        if (i()) {
            this.f6219d.f();
            long b2 = this.f6218c.b.b();
            return b2 < 2147483647L ? (int) b2 : ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        }
        return this.f6220e.size();
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        if (!i()) {
            sb.append("RealmList<?>@[");
            int size = size();
            while (i2 < size) {
                E e2 = get(i2);
                if (e2 instanceof e0) {
                    sb.append(System.identityHashCode(e2));
                } else if (e2 instanceof byte[]) {
                    sb.append("byte[");
                    sb.append(((byte[]) e2).length);
                    sb.append("]");
                } else {
                    sb.append(e2);
                }
                sb.append(",");
                i2++;
            }
            if (size() > 0) {
                sb.setLength(sb.length() - 1);
            }
            sb.append("]");
        } else {
            sb.append("RealmList<");
            String str = this.b;
            if (str != null) {
                sb.append(str);
            } else if (h(this.a)) {
                sb.append(this.f6219d.G().d(this.a).a());
            } else {
                Class<E> cls = this.a;
                if (cls == byte[].class) {
                    sb.append(cls.getSimpleName());
                } else {
                    sb.append(cls.getName());
                }
            }
            sb.append(">@[");
            o<E> oVar = this.f6218c;
            if (!(oVar != null && OsList.nativeIsValid(oVar.b.a))) {
                sb.append("invalid");
            } else if (h(this.a)) {
                while (i2 < size()) {
                    sb.append(((g.a.f1.n) get(i2)).realmGet$proxyState().f6305c.l());
                    sb.append(",");
                    i2++;
                }
                if (size() > 0) {
                    sb.setLength(sb.length() - 1);
                }
            } else {
                while (i2 < size()) {
                    E e3 = get(i2);
                    if (e3 instanceof byte[]) {
                        sb.append("byte[");
                        sb.append(((byte[]) e3).length);
                        sb.append("]");
                    } else {
                        sb.append(e3);
                    }
                    sb.append(",");
                    i2++;
                }
                if (size() > 0) {
                    sb.setLength(sb.length() - 1);
                }
            }
            sb.append("]");
        }
        return sb.toString();
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator(int i2) {
        if (i()) {
            return new c(i2);
        }
        return super.listIterator(i2);
    }

    public c0(Class<E> cls, OsList osList, g.a.a aVar) {
        this.a = cls;
        this.f6218c = g(aVar, osList, cls, null);
        this.f6219d = aVar;
    }

    public c0(String str, OsList osList, g.a.a aVar) {
        this.f6219d = aVar;
        this.b = str;
        this.f6218c = g(aVar, osList, null, str);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e2) {
        if (i()) {
            this.f6219d.f();
            o<E> oVar = this.f6218c;
            oVar.b(e2);
            if (e2 == null) {
                OsList.nativeAddNull(oVar.b.a);
            } else {
                oVar.a(e2);
            }
        } else {
            this.f6220e.add(e2);
        }
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        if (i() && !this.f6219d.I()) {
            throw new IllegalStateException("Objects can only be removed from inside a write transaction.");
        }
        return super.remove(obj);
    }
}
