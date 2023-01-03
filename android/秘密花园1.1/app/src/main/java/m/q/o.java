package m.q;

import java.util.Properties;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: RxJavaPlugins.java */
/* loaded from: classes2.dex */
public class o {

    /* renamed from: f  reason: collision with root package name */
    public static final o f7333f = new o();

    /* renamed from: g  reason: collision with root package name */
    public static final m.q.b f7334g = new a();
    public final AtomicReference<m.q.b> a = new AtomicReference<>();
    public final AtomicReference<m> b = new AtomicReference<>();

    /* renamed from: c  reason: collision with root package name */
    public final AtomicReference<q> f7335c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    public final AtomicReference<m.q.a> f7336d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    public final AtomicReference<p> f7337e = new AtomicReference<>();

    /* compiled from: RxJavaPlugins.java */
    /* loaded from: classes2.dex */
    public static class a extends m.q.b {
    }

    /* compiled from: RxJavaPlugins.java */
    /* loaded from: classes2.dex */
    public class b extends m.q.a {
        public b(o oVar) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0060, code lost:
        r2 = "rxjava.plugin." + r7.substring(0, r7.length() - 6).substring(14) + ".impl";
        r1 = r10.getProperty(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0087, code lost:
        if (r1 == null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00a8, code lost:
        throw new java.lang.IllegalStateException("Implementing class declaration for " + r0 + " missing: " + r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object d(java.lang.Class<?> r9, java.util.Properties r10) {
        /*
            java.lang.Object r10 = r10.clone()
            java.util.Properties r10 = (java.util.Properties) r10
            java.lang.String r0 = r9.getSimpleName()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "rxjava.plugin."
            r1.append(r2)
            r1.append(r0)
            java.lang.String r3 = ".implementation"
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            java.lang.String r1 = r10.getProperty(r1)
            if (r1 != 0) goto Lad
            java.lang.String r3 = ".class"
            java.lang.String r4 = ".impl"
            java.util.Set r5 = r10.entrySet()     // Catch: java.lang.SecurityException -> La9
            java.util.Iterator r5 = r5.iterator()     // Catch: java.lang.SecurityException -> La9
        L32:
            boolean r6 = r5.hasNext()     // Catch: java.lang.SecurityException -> La9
            if (r6 == 0) goto Lad
            java.lang.Object r6 = r5.next()     // Catch: java.lang.SecurityException -> La9
            java.util.Map$Entry r6 = (java.util.Map.Entry) r6     // Catch: java.lang.SecurityException -> La9
            java.lang.Object r7 = r6.getKey()     // Catch: java.lang.SecurityException -> La9
            java.lang.String r7 = r7.toString()     // Catch: java.lang.SecurityException -> La9
            boolean r8 = r7.startsWith(r2)     // Catch: java.lang.SecurityException -> La9
            if (r8 == 0) goto L32
            boolean r8 = r7.endsWith(r3)     // Catch: java.lang.SecurityException -> La9
            if (r8 == 0) goto L32
            java.lang.Object r6 = r6.getValue()     // Catch: java.lang.SecurityException -> La9
            java.lang.String r6 = r6.toString()     // Catch: java.lang.SecurityException -> La9
            boolean r6 = r0.equals(r6)     // Catch: java.lang.SecurityException -> La9
            if (r6 == 0) goto L32
            r3 = 0
            int r5 = r7.length()     // Catch: java.lang.SecurityException -> La9
            int r5 = r5 + (-6)
            java.lang.String r3 = r7.substring(r3, r5)     // Catch: java.lang.SecurityException -> La9
            r5 = 14
            java.lang.String r3 = r3.substring(r5)     // Catch: java.lang.SecurityException -> La9
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.SecurityException -> La9
            r5.<init>()     // Catch: java.lang.SecurityException -> La9
            r5.append(r2)     // Catch: java.lang.SecurityException -> La9
            r5.append(r3)     // Catch: java.lang.SecurityException -> La9
            r5.append(r4)     // Catch: java.lang.SecurityException -> La9
            java.lang.String r2 = r5.toString()     // Catch: java.lang.SecurityException -> La9
            java.lang.String r1 = r10.getProperty(r2)     // Catch: java.lang.SecurityException -> La9
            if (r1 == 0) goto L8a
            goto Lad
        L8a:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException     // Catch: java.lang.SecurityException -> La9
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.SecurityException -> La9
            r3.<init>()     // Catch: java.lang.SecurityException -> La9
            java.lang.String r4 = "Implementing class declaration for "
            r3.append(r4)     // Catch: java.lang.SecurityException -> La9
            r3.append(r0)     // Catch: java.lang.SecurityException -> La9
            java.lang.String r4 = " missing: "
            r3.append(r4)     // Catch: java.lang.SecurityException -> La9
            r3.append(r2)     // Catch: java.lang.SecurityException -> La9
            java.lang.String r2 = r3.toString()     // Catch: java.lang.SecurityException -> La9
            r10.<init>(r2)     // Catch: java.lang.SecurityException -> La9
            throw r10     // Catch: java.lang.SecurityException -> La9
        La9:
            r10 = move-exception
            r10.printStackTrace()
        Lad:
            if (r1 == 0) goto L106
            java.lang.Class r10 = java.lang.Class.forName(r1)     // Catch: java.lang.IllegalAccessException -> Lbc java.lang.InstantiationException -> Lc9 java.lang.ClassNotFoundException -> Ld6 java.lang.ClassCastException -> Le3
            java.lang.Class r9 = r10.asSubclass(r9)     // Catch: java.lang.IllegalAccessException -> Lbc java.lang.InstantiationException -> Lc9 java.lang.ClassNotFoundException -> Ld6 java.lang.ClassCastException -> Le3
            java.lang.Object r9 = r9.newInstance()     // Catch: java.lang.IllegalAccessException -> Lbc java.lang.InstantiationException -> Lc9 java.lang.ClassNotFoundException -> Ld6 java.lang.ClassCastException -> Le3
            return r9
        Lbc:
            r9 = move-exception
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r2 = " implementation not able to be accessed: "
            java.lang.String r0 = f.b.a.a.a.g(r0, r2, r1)
            r10.<init>(r0, r9)
            throw r10
        Lc9:
            r9 = move-exception
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r2 = " implementation not able to be instantiated: "
            java.lang.String r0 = f.b.a.a.a.g(r0, r2, r1)
            r10.<init>(r0, r9)
            throw r10
        Ld6:
            r9 = move-exception
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r2 = " implementation class not found: "
            java.lang.String r0 = f.b.a.a.a.g(r0, r2, r1)
            r10.<init>(r0, r9)
            throw r10
        Le3:
            r9 = move-exception
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r0)
            java.lang.String r3 = " implementation is not an instance of "
            r2.append(r3)
            r2.append(r0)
            java.lang.String r0 = ": "
            r2.append(r0)
            r2.append(r1)
            java.lang.String r0 = r2.toString()
            r10.<init>(r0, r9)
            throw r10
        L106:
            r9 = 0
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: m.q.o.d(java.lang.Class, java.util.Properties):java.lang.Object");
    }

    public static Properties g() {
        try {
            return System.getProperties();
        } catch (SecurityException unused) {
            return new Properties();
        }
    }

    public m.q.a a() {
        if (this.f7336d.get() == null) {
            Object d2 = d(m.q.a.class, g());
            if (d2 == null) {
                this.f7336d.compareAndSet(null, new b(this));
            } else {
                this.f7336d.compareAndSet(null, (m.q.a) d2);
            }
        }
        return this.f7336d.get();
    }

    public m.q.b b() {
        if (this.a.get() == null) {
            Object d2 = d(m.q.b.class, g());
            if (d2 == null) {
                this.a.compareAndSet(null, f7334g);
            } else {
                this.a.compareAndSet(null, (m.q.b) d2);
            }
        }
        return this.a.get();
    }

    public m c() {
        if (this.b.get() == null) {
            Object d2 = d(m.class, g());
            if (d2 == null) {
                this.b.compareAndSet(null, n.a);
            } else {
                this.b.compareAndSet(null, (m) d2);
            }
        }
        return this.b.get();
    }

    public p e() {
        if (this.f7337e.get() == null) {
            Object d2 = d(p.class, g());
            if (d2 == null) {
                this.f7337e.compareAndSet(null, p.a);
            } else {
                this.f7337e.compareAndSet(null, (p) d2);
            }
        }
        return this.f7337e.get();
    }

    public q f() {
        if (this.f7335c.get() == null) {
            Object d2 = d(q.class, g());
            if (d2 == null) {
                this.f7335c.compareAndSet(null, r.a);
            } else {
                this.f7335c.compareAndSet(null, (q) d2);
            }
        }
        return this.f7335c.get();
    }
}
