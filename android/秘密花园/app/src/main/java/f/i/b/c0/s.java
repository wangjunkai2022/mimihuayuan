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
    public static final Comparator<Comparable> f6054h = new a();
    public Comparator<? super K> a;
    public e<K, V> b;

    /* renamed from: c  reason: collision with root package name */
    public int f6055c = 0;

    /* renamed from: d  reason: collision with root package name */
    public int f6056d = 0;

    /* renamed from: e  reason: collision with root package name */
    public final e<K, V> f6057e = new e<>();

    /* renamed from: f  reason: collision with root package name */
    public s<K, V>.b f6058f;

    /* renamed from: g  reason: collision with root package name */
    public s<K, V>.c f6059g;

    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes.dex */
    public static class a implements Comparator<Comparable> {
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
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
        public class a extends s<K, V>.d {
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

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new a(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            e<K, V> b;
            if (!(obj instanceof Map.Entry) || (b = s.this.b((Map.Entry) obj)) == null) {
                return false;
            }
            s.this.e(b, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return s.this.f6055c;
        }
    }

    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes.dex */
    public final class c extends AbstractSet<K> {

        /* compiled from: LinkedTreeMap.java */
        /* loaded from: classes.dex */
        public class a extends s<K, V>.d {
            public a(c cVar) {
                super();
            }

            @Override // java.util.Iterator
            public K next() {
                return a().f6065f;
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

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set, java.lang.Iterable
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
            if (c2 != null) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return s.this.f6055c;
        }
    }

    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes.dex */
    public abstract class d<T> implements Iterator<T> {
        public e<K, V> a;
        public e<K, V> b = null;

        /* renamed from: c  reason: collision with root package name */
        public int f6060c;

        public d() {
            s sVar = s.this;
            this.a = sVar.f6057e.f6063d;
            this.f6060c = sVar.f6056d;
        }

        public final e<K, V> a() {
            e<K, V> eVar = this.a;
            s sVar = s.this;
            if (eVar == sVar.f6057e) {
                throw new NoSuchElementException();
            } else if (sVar.f6056d == this.f6060c) {
                this.a = eVar.f6063d;
                this.b = eVar;
                return eVar;
            } else {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.a != s.this.f6057e;
        }

        @Override // java.util.Iterator
        public final void remove() {
            e<K, V> eVar = this.b;
            if (eVar != null) {
                s.this.e(eVar, true);
                this.b = null;
                this.f6060c = s.this.f6056d;
                return;
            }
            throw new IllegalStateException();
        }
    }

    public s() {
        Comparator<Comparable> comparator = f6054h;
        this.a = comparator;
    }

    /* JADX DEBUG: Type inference failed for r4v3. Raw type applied. Possible types: K, ? super K */
    public e<K, V> a(K k2, boolean z) {
        int i2;
        e<K, V> eVar;
        Comparator<? super K> comparator = this.a;
        e<K, V> eVar2 = this.b;
        if (eVar2 != null) {
            Comparable comparable = comparator == f6054h ? (Comparable) k2 : null;
            while (true) {
                if (comparable != null) {
                    i2 = comparable.compareTo(eVar2.f6065f);
                } else {
                    i2 = comparator.compare(k2, (K) eVar2.f6065f);
                }
                if (i2 == 0) {
                    return eVar2;
                }
                e<K, V> eVar3 = i2 < 0 ? eVar2.b : eVar2.f6062c;
                if (eVar3 == null) {
                    break;
                }
                eVar2 = eVar3;
            }
        } else {
            i2 = 0;
        }
        if (!z) {
            return null;
        }
        e<K, V> eVar4 = this.f6057e;
        if (eVar2 != null) {
            eVar = new e<>(eVar2, k2, eVar4, eVar4.f6064e);
            if (i2 < 0) {
                eVar2.b = eVar;
            } else {
                eVar2.f6062c = eVar;
            }
            d(eVar2, true);
        } else if (comparator != f6054h || (k2 instanceof Comparable)) {
            eVar = new e<>(eVar2, k2, eVar4, eVar4.f6064e);
            this.b = eVar;
        } else {
            throw new ClassCastException(k2.getClass().getName() + " is not Comparable");
        }
        this.f6055c++;
        this.f6056d++;
        return eVar;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0020, code lost:
        if ((r3 == r5 || (r3 != null && r3.equals(r5))) != false) goto L_0x0024;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public f.i.b.c0.s.e<K, V> b(java.util.Map.Entry<?, ?> r5) {
        /*
            r4 = this;
            java.lang.Object r0 = r5.getKey()
            f.i.b.c0.s$e r0 = r4.c(r0)
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L_0x0023
            V r3 = r0.f6066g
            java.lang.Object r5 = r5.getValue()
            if (r3 == r5) goto L_0x001f
            if (r3 == 0) goto L_0x001d
            boolean r5 = r3.equals(r5)
            if (r5 == 0) goto L_0x001d
            goto L_0x001f
        L_0x001d:
            r5 = 0
            goto L_0x0020
        L_0x001f:
            r5 = 1
        L_0x0020:
            if (r5 == 0) goto L_0x0023
            goto L_0x0024
        L_0x0023:
            r1 = 0
        L_0x0024:
            if (r1 == 0) goto L_0x0027
            goto L_0x0028
        L_0x0027:
            r0 = 0
        L_0x0028:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.b.c0.s.b(java.util.Map$Entry):f.i.b.c0.s$e");
    }

    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    public e<K, V> c(Object obj) {
        if (obj == 0) {
            return null;
        }
        try {
            return a(obj, false);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.b = null;
        this.f6055c = 0;
        this.f6056d++;
        e<K, V> eVar = this.f6057e;
        eVar.f6064e = eVar;
        eVar.f6063d = eVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return c(obj) != null;
    }

    public final void d(e<K, V> eVar, boolean z) {
        while (eVar != null) {
            e<K, V> eVar2 = eVar.b;
            e<K, V> eVar3 = eVar.f6062c;
            int i2 = 0;
            int i3 = eVar2 != null ? eVar2.f6067h : 0;
            int i4 = eVar3 != null ? eVar3.f6067h : 0;
            int i5 = i3 - i4;
            if (i5 == -2) {
                e<K, V> eVar4 = eVar3.b;
                e<K, V> eVar5 = eVar3.f6062c;
                int i6 = eVar5 != null ? eVar5.f6067h : 0;
                if (eVar4 != null) {
                    i2 = eVar4.f6067h;
                }
                int i7 = i2 - i6;
                if (i7 == -1 || (i7 == 0 && !z)) {
                    g(eVar);
                } else {
                    h(eVar3);
                    g(eVar);
                }
                if (z) {
                    return;
                }
            } else if (i5 == 2) {
                e<K, V> eVar6 = eVar2.b;
                e<K, V> eVar7 = eVar2.f6062c;
                int i8 = eVar7 != null ? eVar7.f6067h : 0;
                if (eVar6 != null) {
                    i2 = eVar6.f6067h;
                }
                int i9 = i2 - i8;
                if (i9 == 1 || (i9 == 0 && !z)) {
                    h(eVar);
                } else {
                    g(eVar2);
                    h(eVar);
                }
                if (z) {
                    return;
                }
            } else if (i5 == 0) {
                eVar.f6067h = i3 + 1;
                if (z) {
                    return;
                }
            } else {
                eVar.f6067h = Math.max(i3, i4) + 1;
                if (!z) {
                    return;
                }
            }
            eVar = eVar.a;
        }
    }

    public void e(e<K, V> eVar, boolean z) {
        e<K, V> eVar2;
        int i2;
        if (z) {
            e<K, V> eVar3 = eVar.f6064e;
            eVar3.f6063d = eVar.f6063d;
            eVar.f6063d.f6064e = eVar3;
        }
        e<K, V> eVar4 = eVar.b;
        e<K, V> eVar5 = eVar.f6062c;
        e<K, V> eVar6 = eVar.a;
        int i3 = 0;
        if (eVar4 == null || eVar5 == null) {
            if (eVar4 != null) {
                f(eVar, eVar4);
                eVar.b = null;
            } else if (eVar5 != null) {
                f(eVar, eVar5);
                eVar.f6062c = null;
            } else {
                f(eVar, null);
            }
            d(eVar6, false);
            this.f6055c--;
            this.f6056d++;
            return;
        }
        if (eVar4.f6067h > eVar5.f6067h) {
            e<K, V> eVar7 = eVar4.f6062c;
            while (true) {
                eVar2 = eVar4;
                eVar4 = eVar7;
                if (eVar4 == null) {
                    break;
                }
                eVar7 = eVar4.f6062c;
            }
        } else {
            e<K, V> eVar8 = eVar5.b;
            while (true) {
                eVar5 = eVar8;
                if (eVar5 == null) {
                    break;
                }
                eVar8 = eVar5.b;
            }
            eVar2 = eVar5;
        }
        e(eVar2, false);
        e<K, V> eVar9 = eVar.b;
        if (eVar9 != null) {
            i2 = eVar9.f6067h;
            eVar2.b = eVar9;
            eVar9.a = eVar2;
            eVar.b = null;
        } else {
            i2 = 0;
        }
        e<K, V> eVar10 = eVar.f6062c;
        if (eVar10 != null) {
            i3 = eVar10.f6067h;
            eVar2.f6062c = eVar10;
            eVar10.a = eVar2;
            eVar.f6062c = null;
        }
        eVar2.f6067h = Math.max(i2, i3) + 1;
        f(eVar, eVar2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        s<K, V>.b bVar = this.f6058f;
        if (bVar != null) {
            return bVar;
        }
        s<K, V>.b bVar2 = new b();
        this.f6058f = bVar2;
        return bVar2;
    }

    public final void f(e<K, V> eVar, e<K, V> eVar2) {
        e<K, V> eVar3 = eVar.a;
        eVar.a = null;
        if (eVar2 != null) {
            eVar2.a = eVar3;
        }
        if (eVar3 == null) {
            this.b = eVar2;
        } else if (eVar3.b == eVar) {
            eVar3.b = eVar2;
        } else {
            eVar3.f6062c = eVar2;
        }
    }

    public final void g(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.b;
        e<K, V> eVar3 = eVar.f6062c;
        e<K, V> eVar4 = eVar3.b;
        e<K, V> eVar5 = eVar3.f6062c;
        eVar.f6062c = eVar4;
        if (eVar4 != null) {
            eVar4.a = eVar;
        }
        f(eVar, eVar3);
        eVar3.b = eVar;
        eVar.a = eVar3;
        int i2 = 0;
        int max = Math.max(eVar2 != null ? eVar2.f6067h : 0, eVar4 != null ? eVar4.f6067h : 0) + 1;
        eVar.f6067h = max;
        if (eVar5 != null) {
            i2 = eVar5.f6067h;
        }
        eVar3.f6067h = Math.max(max, i2) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        e<K, V> c2 = c(obj);
        if (c2 != null) {
            return c2.f6066g;
        }
        return null;
    }

    public final void h(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.b;
        e<K, V> eVar3 = eVar.f6062c;
        e<K, V> eVar4 = eVar2.b;
        e<K, V> eVar5 = eVar2.f6062c;
        eVar.b = eVar5;
        if (eVar5 != null) {
            eVar5.a = eVar;
        }
        f(eVar, eVar2);
        eVar2.f6062c = eVar;
        eVar.a = eVar2;
        int i2 = 0;
        int max = Math.max(eVar3 != null ? eVar3.f6067h : 0, eVar5 != null ? eVar5.f6067h : 0) + 1;
        eVar.f6067h = max;
        if (eVar4 != null) {
            i2 = eVar4.f6067h;
        }
        eVar2.f6067h = Math.max(max, i2) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        s<K, V>.c cVar = this.f6059g;
        if (cVar != null) {
            return cVar;
        }
        s<K, V>.c cVar2 = new c();
        this.f6059g = cVar2;
        return cVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k2, V v) {
        if (k2 != null) {
            e<K, V> a2 = a(k2, true);
            V v2 = a2.f6066g;
            a2.f6066g = v;
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
            return c2.f6066g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f6055c;
    }

    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes.dex */
    public static final class e<K, V> implements Map.Entry<K, V> {
        public e<K, V> a;
        public e<K, V> b;

        /* renamed from: c  reason: collision with root package name */
        public e<K, V> f6062c;

        /* renamed from: d  reason: collision with root package name */
        public e<K, V> f6063d;

        /* renamed from: e  reason: collision with root package name */
        public e<K, V> f6064e;

        /* renamed from: f  reason: collision with root package name */
        public final K f6065f;

        /* renamed from: g  reason: collision with root package name */
        public V f6066g;

        /* renamed from: h  reason: collision with root package name */
        public int f6067h;

        public e() {
            this.f6065f = null;
            this.f6064e = this;
            this.f6063d = this;
        }

        @Override // java.util.Map.Entry, java.lang.Object
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            K k2 = this.f6065f;
            if (k2 == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!k2.equals(entry.getKey())) {
                return false;
            }
            V v = this.f6066g;
            if (v == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!v.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f6065f;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f6066g;
        }

        @Override // java.util.Map.Entry, java.lang.Object
        public int hashCode() {
            K k2 = this.f6065f;
            int i2 = 0;
            int hashCode = k2 == null ? 0 : k2.hashCode();
            V v = this.f6066g;
            if (v != null) {
                i2 = v.hashCode();
            }
            return hashCode ^ i2;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.f6066g;
            this.f6066g = v;
            return v2;
        }

        @Override // java.lang.Object
        public String toString() {
            return this.f6065f + "=" + this.f6066g;
        }

        public e(e<K, V> eVar, K k2, e<K, V> eVar2, e<K, V> eVar3) {
            this.a = eVar;
            this.f6065f = k2;
            this.f6067h = 1;
            this.f6063d = eVar2;
            this.f6064e = eVar3;
            eVar3.f6063d = this;
            eVar2.f6064e = this;
        }
    }
}
