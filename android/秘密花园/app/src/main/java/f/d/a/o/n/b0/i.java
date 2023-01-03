package f.d.a.o.n.b0;

import android.util.Log;
import c.a.a.b.g.h;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* compiled from: LruArrayPool.java */
/* loaded from: classes.dex */
public final class i implements b {
    public final g<a, Object> a = new g<>();
    public final b b = new b();

    /* renamed from: c  reason: collision with root package name */
    public final Map<Class<?>, NavigableMap<Integer, Integer>> f3504c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    public final Map<Class<?>, a<?>> f3505d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    public final int f3506e;

    /* renamed from: f  reason: collision with root package name */
    public int f3507f;

    /* compiled from: LruArrayPool.java */
    /* loaded from: classes.dex */
    public static final class a implements l {
        public final b a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public Class<?> f3508c;

        public a(b bVar) {
            this.a = bVar;
        }

        @Override // f.d.a.o.n.b0.l
        public void a() {
            this.a.c(this);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.b == aVar.b && this.f3508c == aVar.f3508c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int i2 = this.b * 31;
            Class<?> cls = this.f3508c;
            return i2 + (cls != null ? cls.hashCode() : 0);
        }

        public String toString() {
            StringBuilder o = f.b.a.a.a.o("Key{size=");
            o.append(this.b);
            o.append("array=");
            o.append(this.f3508c);
            o.append('}');
            return o.toString();
        }
    }

    /* compiled from: LruArrayPool.java */
    /* loaded from: classes.dex */
    public static final class b extends c<a> {
        /* Return type fixed from 'f.d.a.o.n.b0.l' to match base method */
        @Override // f.d.a.o.n.b0.c
        public a a() {
            return new a(this);
        }

        public a d(int i2, Class<?> cls) {
            a b = b();
            b.b = i2;
            b.f3508c = cls;
            return b;
        }
    }

    public i(int i2) {
        this.f3506e = i2;
    }

    public final void a(int i2, Class<?> cls) {
        NavigableMap<Integer, Integer> i3 = i(cls);
        Integer num = (Integer) i3.get(Integer.valueOf(i2));
        if (num == null) {
            throw new NullPointerException("Tried to decrement empty size, size: " + i2 + ", this: " + this);
        } else if (num.intValue() == 1) {
            i3.remove(Integer.valueOf(i2));
        } else {
            i3.put(Integer.valueOf(i2), Integer.valueOf(num.intValue() - 1));
        }
    }

    public final void b(int i2) {
        while (this.f3507f > i2) {
            Object c2 = this.a.c();
            h.s(c2, "Argument must not be null");
            a g2 = g(c2.getClass());
            this.f3507f -= g2.c() * g2.b(c2);
            a(g2.b(c2), c2.getClass());
            if (Log.isLoggable(g2.a(), 2)) {
                g2.a();
                g2.b(c2);
            }
        }
    }

    @Override // f.d.a.o.n.b0.b
    public synchronized void c() {
        b(0);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: java.lang.Class<T> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // f.d.a.o.n.b0.b
    public synchronized <T> T d(int i2, Class<T> cls) {
        a b2;
        b2 = this.b.b();
        b2.b = i2;
        b2.f3508c = cls;
        return (T) h(b2, cls);
    }

    @Override // f.d.a.o.n.b0.b
    public synchronized <T> void e(T t) {
        Class<?> cls = t.getClass();
        a<T> g2 = g(cls);
        int b2 = g2.b(t);
        int c2 = g2.c() * b2;
        int i2 = 1;
        if (c2 <= this.f3506e / 2) {
            a d2 = this.b.d(b2, cls);
            this.a.b(d2, t);
            NavigableMap<Integer, Integer> i3 = i(cls);
            Integer num = (Integer) i3.get(Integer.valueOf(d2.b));
            Integer valueOf = Integer.valueOf(d2.b);
            if (num != null) {
                i2 = 1 + num.intValue();
            }
            i3.put(valueOf, Integer.valueOf(i2));
            this.f3507f += c2;
            b(this.f3506e);
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r7v0, resolved type: java.lang.Class<T> */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0023 A[Catch: all -> 0x004d, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0013, B:7:0x0017, B:13:0x0023, B:18:0x002f, B:19:0x003a, B:20:0x0047), top: B:25:0x0001 }] */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x002f A[Catch: all -> 0x004d, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0013, B:7:0x0017, B:13:0x0023, B:18:0x002f, B:19:0x003a, B:20:0x0047), top: B:25:0x0001 }] */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x003a A[Catch: all -> 0x004d, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0013, B:7:0x0017, B:13:0x0023, B:18:0x002f, B:19:0x003a, B:20:0x0047), top: B:25:0x0001 }] */
    @Override // f.d.a.o.n.b0.b
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized <T> T f(int r6, java.lang.Class<T> r7) {
        /*
            r5 = this;
            monitor-enter(r5)
            java.util.NavigableMap r0 = r5.i(r7)     // Catch: all -> 0x004d
            java.lang.Integer r1 = java.lang.Integer.valueOf(r6)     // Catch: all -> 0x004d
            java.lang.Object r0 = r0.ceilingKey(r1)     // Catch: all -> 0x004d
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: all -> 0x004d
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L_0x002c
            int r3 = r5.f3507f     // Catch: all -> 0x004d
            if (r3 == 0) goto L_0x0020
            int r4 = r5.f3506e     // Catch: all -> 0x004d
            int r4 = r4 / r3
            r3 = 2
            if (r4 < r3) goto L_0x001e
            goto L_0x0020
        L_0x001e:
            r3 = 0
            goto L_0x0021
        L_0x0020:
            r3 = 1
        L_0x0021:
            if (r3 != 0) goto L_0x002d
            int r3 = r0.intValue()     // Catch: all -> 0x004d
            int r4 = r6 * 8
            if (r3 > r4) goto L_0x002c
            goto L_0x002d
        L_0x002c:
            r1 = 0
        L_0x002d:
            if (r1 == 0) goto L_0x003a
            f.d.a.o.n.b0.i$b r6 = r5.b     // Catch: all -> 0x004d
            int r0 = r0.intValue()     // Catch: all -> 0x004d
            f.d.a.o.n.b0.i$a r6 = r6.d(r0, r7)     // Catch: all -> 0x004d
            goto L_0x0047
        L_0x003a:
            f.d.a.o.n.b0.i$b r0 = r5.b     // Catch: all -> 0x004d
            f.d.a.o.n.b0.l r0 = r0.b()     // Catch: all -> 0x004d
            f.d.a.o.n.b0.i$a r0 = (f.d.a.o.n.b0.i.a) r0     // Catch: all -> 0x004d
            r0.b = r6     // Catch: all -> 0x004d
            r0.f3508c = r7     // Catch: all -> 0x004d
            r6 = r0
        L_0x0047:
            java.lang.Object r6 = r5.h(r6, r7)     // Catch: all -> 0x004d
            monitor-exit(r5)
            return r6
        L_0x004d:
            r6 = move-exception
            monitor-exit(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: f.d.a.o.n.b0.i.f(int, java.lang.Class):java.lang.Object");
    }

    public final <T> a<T> g(Class<T> cls) {
        f fVar = (a<T>) this.f3505d.get(cls);
        if (fVar == null) {
            if (cls.equals(int[].class)) {
                fVar = new h();
            } else if (cls.equals(byte[].class)) {
                fVar = new f();
            } else {
                StringBuilder o = f.b.a.a.a.o("No array pool found for: ");
                o.append(cls.getSimpleName());
                throw new IllegalArgumentException(o.toString());
            }
            this.f3505d.put(cls, fVar);
        }
        return fVar;
    }

    public final <T> T h(a aVar, Class<T> cls) {
        a<T> g2 = g(cls);
        T t = (T) this.a.a(aVar);
        if (t != null) {
            this.f3507f -= g2.c() * g2.b(t);
            a(g2.b(t), cls);
        }
        if (t != null) {
            return t;
        }
        if (Log.isLoggable(g2.a(), 2)) {
            g2.a();
        }
        return g2.newArray(aVar.b);
    }

    public final NavigableMap<Integer, Integer> i(Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMap = this.f3504c.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.f3504c.put(cls, treeMap);
        return treeMap;
    }

    @Override // f.d.a.o.n.b0.b
    public synchronized void trimMemory(int i2) {
        if (i2 >= 40) {
            synchronized (this) {
                b(0);
            }
        } else if (i2 >= 20 || i2 == 15) {
            b(this.f3506e / 2);
        }
    }
}
