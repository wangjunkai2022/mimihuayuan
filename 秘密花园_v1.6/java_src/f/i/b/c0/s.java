package f.i.b.c0;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* compiled from: LinkedTreeMap.java */
/* loaded from: classes.dex */
public final class s<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: h  reason: collision with root package name */
    public static final Comparator<Comparable> f6138h = new a();
    public Comparator<? super K> a;
    public e<K, V> b;

    /* renamed from: c  reason: collision with root package name */
    public int f6139c;

    /* renamed from: d  reason: collision with root package name */
    public int f6140d;

    /* renamed from: e  reason: collision with root package name */
    public final e<K, V> f6141e;

    /* renamed from: f  reason: collision with root package name */
    public s<K, V>.b f6142f;

    /* renamed from: g  reason: collision with root package name */
    public s<K, V>.c f6143g;

    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes.dex */
    public static class a implements Comparator<Comparable> {
        @Override // java.util.Comparator
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes.dex */
    public class b extends AbstractSet<Map.Entry<K, V>> {

        /* compiled from: LinkedTreeMap.java */
        /* loaded from: classes.dex */
        public class a extends s<K, V>.d<Map.Entry<K, V>> {
            public a(b bVar) {
                super();
            }

            @Override // java.util.Iterator
            public Object next() {
                return a();
            }
        }

        public b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            s.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && s.this.b((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new a(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            e<K, V> b;
            if ((obj instanceof Map.Entry) && (b = s.this.b((Map.Entry) obj)) != null) {
                s.this.e(b, true);
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return s.this.f6139c;
        }
    }

    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes.dex */
    public final class c extends AbstractSet<K> {

        /* compiled from: LinkedTreeMap.java */
        /* loaded from: classes.dex */
        public class a extends s<K, V>.d<K> {
            public a(c cVar) {
                super();
            }

            @Override // java.util.Iterator
            public K next() {
                return a().f6149f;
            }
        }

        public c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            s.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return s.this.c(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new a(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            s sVar = s.this;
            e<K, V> c2 = sVar.c(obj);
            if (c2 != null) {
                sVar.e(c2, true);
            }
            return c2 != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return s.this.f6139c;
        }
    }

    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes.dex */
    public abstract class d<T> implements Iterator<T> {
        public e<K, V> a;
        public e<K, V> b;

        /* renamed from: c  reason: collision with root package name */
        public int f6144c;

        public d() {
            s sVar = s.this;
            this.a = sVar.f6141e.f6147d;
            this.b = null;
            this.f6144c = sVar.f6140d;
        }

        public final e<K, V> a() {
            e<K, V> eVar = this.a;
            s sVar = s.this;
            if (eVar != sVar.f6141e) {
                if (sVar.f6140d == this.f6144c) {
                    this.a = eVar.f6147d;
                    this.b = eVar;
                    return eVar;
                }
                throw new ConcurrentModificationException();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.a != s.this.f6141e;
        }

        @Override // java.util.Iterator
        public final void remove() {
            e<K, V> eVar = this.b;
            if (eVar != null) {
                s.this.e(eVar, true);
                this.b = null;
                this.f6144c = s.this.f6140d;
                return;
            }
            throw new IllegalStateException();
        }
    }

    public s() {
        Comparator<Comparable> comparator = f6138h;
        this.f6139c = 0;
        this.f6140d = 0;
        this.f6141e = new e<>();
        this.a = comparator;
    }

    public e<K, V> a(K k2, boolean z) {
        int i2;
        e<K, V> eVar;
        Comparator<? super K> comparator = this.a;
        e<K, V> eVar2 = this.b;
        if (eVar2 != null) {
            Comparable comparable = comparator == f6138h ? (Comparable) k2 : null;
            while (true) {
                if (comparable != null) {
                    i2 = comparable.compareTo(eVar2.f6149f);
                } else {
                    i2 = comparator.compare(k2, (K) eVar2.f6149f);
                }
                if (i2 == 0) {
                    return eVar2;
                }
                e<K, V> eVar3 = i2 < 0 ? eVar2.b : eVar2.f6146c;
                if (eVar3 == null) {
                    break;
                }
                eVar2 = eVar3;
            }
        } else {
            i2 = 0;
        }
        if (z) {
            e<K, V> eVar4 = this.f6141e;
            if (eVar2 == null) {
                if (comparator == f6138h && !(k2 instanceof Comparable)) {
                    throw new ClassCastException(k2.getClass().getName() + " is not Comparable");
                }
                eVar = new e<>(eVar2, k2, eVar4, eVar4.f6148e);
                this.b = eVar;
            } else {
                eVar = new e<>(eVar2, k2, eVar4, eVar4.f6148e);
                if (i2 < 0) {
                    eVar2.b = eVar;
                } else {
                    eVar2.f6146c = eVar;
                }
                d(eVar2, true);
            }
            this.f6139c++;
            this.f6140d++;
            return eVar;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0020, code lost:
        if ((r3 == r5 || (r3 != null && r3.equals(r5))) != false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public f.i.b.c0.s.e<K, V> b(java.util.Map.Entry<?, ?> r5) {
        /*
            r4 = this;
            java.lang.Object r0 = r5.getKey()
            f.i.b.c0.s$e r0 = r4.c(r0)
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L23
            V r3 = r0.f6150g
            java.lang.Object r5 = r5.getValue()
            if (r3 == r5) goto L1f
            if (r3 == 0) goto L1d
            boolean r5 = r3.equals(r5)
            if (r5 == 0) goto L1d
            goto L1f
        L1d:
            r5 = 0
            goto L20
        L1f:
            r5 = 1
        L20:
            if (r5 == 0) goto L23
            goto L24
        L23:
            r1 = 0
        L24:
            if (r1 == 0) goto L27
            goto L28
        L27:
            r0 = 0
        L28:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.b.c0.s.b(java.util.Map$Entry):f.i.b.c0.s$e");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e<K, V> c(Object obj) {
        if (obj != 0) {
            try {
                return a(obj, false);
            } catch (ClassCastException unused) {
                return null;
            }
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.b = null;
        this.f6139c = 0;
        this.f6140d++;
        e<K, V> eVar = this.f6141e;
        eVar.f6148e = eVar;
        eVar.f6147d = eVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return c(obj) != null;
    }

    public final void d(e<K, V> eVar, boolean z) {
        while (eVar != null) {
            e<K, V> eVar2 = eVar.b;
            e<K, V> eVar3 = eVar.f6146c;
            int i2 = eVar2 != null ? eVar2.f6151h : 0;
            int i3 = eVar3 != null ? eVar3.f6151h : 0;
            int i4 = i2 - i3;
            if (i4 == -2) {
                e<K, V> eVar4 = eVar3.b;
                e<K, V> eVar5 = eVar3.f6146c;
                int i5 = (eVar4 != null ? eVar4.f6151h : 0) - (eVar5 != null ? eVar5.f6151h : 0);
                if (i5 != -1 && (i5 != 0 || z)) {
                    h(eVar3);
                    g(eVar);
                } else {
                    g(eVar);
                }
                if (z) {
                    return;
                }
            } else if (i4 == 2) {
                e<K, V> eVar6 = eVar2.b;
                e<K, V> eVar7 = eVar2.f6146c;
                int i6 = (eVar6 != null ? eVar6.f6151h : 0) - (eVar7 != null ? eVar7.f6151h : 0);
                if (i6 != 1 && (i6 != 0 || z)) {
                    g(eVar2);
                    h(eVar);
                } else {
                    h(eVar);
                }
                if (z) {
                    return;
                }
            } else if (i4 == 0) {
                eVar.f6151h = i2 + 1;
                if (z) {
                    return;
                }
            } else {
                eVar.f6151h = Math.max(i2, i3) + 1;
                if (!z) {
                    return;
                }
            }
            eVar = eVar.a;
        }
    }

    public void e(e<K, V> eVar, boolean z) {
        e<K, V> eVar2;
        e<K, V> eVar3;
        int i2;
        if (z) {
            e<K, V> eVar4 = eVar.f6148e;
            eVar4.f6147d = eVar.f6147d;
            eVar.f6147d.f6148e = eVar4;
        }
        e<K, V> eVar5 = eVar.b;
        e<K, V> eVar6 = eVar.f6146c;
        e<K, V> eVar7 = eVar.a;
        int i3 = 0;
        if (eVar5 != null && eVar6 != null) {
            if (eVar5.f6151h > eVar6.f6151h) {
                e<K, V> eVar8 = eVar5.f6146c;
                while (true) {
                    e<K, V> eVar9 = eVar8;
                    eVar3 = eVar5;
                    eVar5 = eVar9;
                    if (eVar5 == null) {
                        break;
                    }
                    eVar8 = eVar5.f6146c;
                }
            } else {
                e<K, V> eVar10 = eVar6.b;
                while (true) {
                    eVar2 = eVar6;
                    eVar6 = eVar10;
                    if (eVar6 == null) {
                        break;
                    }
                    eVar10 = eVar6.b;
                }
                eVar3 = eVar2;
            }
            e(eVar3, false);
            e<K, V> eVar11 = eVar.b;
            if (eVar11 != null) {
                i2 = eVar11.f6151h;
                eVar3.b = eVar11;
                eVar11.a = eVar3;
                eVar.b = null;
            } else {
                i2 = 0;
            }
            e<K, V> eVar12 = eVar.f6146c;
            if (eVar12 != null) {
                i3 = eVar12.f6151h;
                eVar3.f6146c = eVar12;
                eVar12.a = eVar3;
                eVar.f6146c = null;
            }
            eVar3.f6151h = Math.max(i2, i3) + 1;
            f(eVar, eVar3);
            return;
        }
        if (eVar5 != null) {
            f(eVar, eVar5);
            eVar.b = null;
        } else if (eVar6 != null) {
            f(eVar, eVar6);
            eVar.f6146c = null;
        } else {
            f(eVar, null);
        }
        d(eVar7, false);
        this.f6139c--;
        this.f6140d++;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        s<K, V>.b bVar = this.f6142f;
        if (bVar != null) {
            return bVar;
        }
        s<K, V>.b bVar2 = new b();
        this.f6142f = bVar2;
        return bVar2;
    }

    public final void f(e<K, V> eVar, e<K, V> eVar2) {
        e<K, V> eVar3 = eVar.a;
        eVar.a = null;
        if (eVar2 != null) {
            eVar2.a = eVar3;
        }
        if (eVar3 != null) {
            if (eVar3.b == eVar) {
                eVar3.b = eVar2;
                return;
            } else {
                eVar3.f6146c = eVar2;
                return;
            }
        }
        this.b = eVar2;
    }

    public final void g(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.b;
        e<K, V> eVar3 = eVar.f6146c;
        e<K, V> eVar4 = eVar3.b;
        e<K, V> eVar5 = eVar3.f6146c;
        eVar.f6146c = eVar4;
        if (eVar4 != null) {
            eVar4.a = eVar;
        }
        f(eVar, eVar3);
        eVar3.b = eVar;
        eVar.a = eVar3;
        int max = Math.max(eVar2 != null ? eVar2.f6151h : 0, eVar4 != null ? eVar4.f6151h : 0) + 1;
        eVar.f6151h = max;
        eVar3.f6151h = Math.max(max, eVar5 != null ? eVar5.f6151h : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        e<K, V> c2 = c(obj);
        if (c2 != null) {
            return c2.f6150g;
        }
        return null;
    }

    public final void h(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.b;
        e<K, V> eVar3 = eVar.f6146c;
        e<K, V> eVar4 = eVar2.b;
        e<K, V> eVar5 = eVar2.f6146c;
        eVar.b = eVar5;
        if (eVar5 != null) {
            eVar5.a = eVar;
        }
        f(eVar, eVar2);
        eVar2.f6146c = eVar;
        eVar.a = eVar2;
        int max = Math.max(eVar3 != null ? eVar3.f6151h : 0, eVar5 != null ? eVar5.f6151h : 0) + 1;
        eVar.f6151h = max;
        eVar2.f6151h = Math.max(max, eVar4 != null ? eVar4.f6151h : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        s<K, V>.c cVar = this.f6143g;
        if (cVar != null) {
            return cVar;
        }
        s<K, V>.c cVar2 = new c();
        this.f6143g = cVar2;
        return cVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k2, V v) {
        if (k2 != null) {
            e<K, V> a2 = a(k2, true);
            V v2 = a2.f6150g;
            a2.f6150g = v;
            return v2;
        }
        throw new NullPointerException("key == null");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        e<K, V> c2 = c(obj);
        if (c2 != null) {
            e(c2, true);
        }
        if (c2 != null) {
            return c2.f6150g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f6139c;
    }

    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes.dex */
    public static final class e<K, V> implements Map.Entry<K, V> {
        public e<K, V> a;
        public e<K, V> b;

        /* renamed from: c  reason: collision with root package name */
        public e<K, V> f6146c;

        /* renamed from: d  reason: collision with root package name */
        public e<K, V> f6147d;

        /* renamed from: e  reason: collision with root package name */
        public e<K, V> f6148e;

        /* renamed from: f  reason: collision with root package name */
        public final K f6149f;

        /* renamed from: g  reason: collision with root package name */
        public V f6150g;

        /* renamed from: h  reason: collision with root package name */
        public int f6151h;

        public e() {
            this.f6149f = null;
            this.f6148e = this;
            this.f6147d = this;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                K k2 = this.f6149f;
                if (k2 == null) {
                    if (entry.getKey() != null) {
                        return false;
                    }
                } else if (!k2.equals(entry.getKey())) {
                    return false;
                }
                V v = this.f6150g;
                if (v == null) {
                    if (entry.getValue() != null) {
                        return false;
                    }
                } else if (!v.equals(entry.getValue())) {
                    return false;
                }
                return true;
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f6149f;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f6150g;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k2 = this.f6149f;
            int hashCode = k2 == null ? 0 : k2.hashCode();
            V v = this.f6150g;
            return hashCode ^ (v != null ? v.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.f6150g;
            this.f6150g = v;
            return v2;
        }

        public String toString() {
            return this.f6149f + "=" + this.f6150g;
        }

        public e(e<K, V> eVar, K k2, e<K, V> eVar2, e<K, V> eVar3) {
            this.a = eVar;
            this.f6149f = k2;
            this.f6151h = 1;
            this.f6147d = eVar2;
            this.f6148e = eVar3;
            eVar3.f6147d = this;
            eVar2.f6148e = this;
        }
    }
}
