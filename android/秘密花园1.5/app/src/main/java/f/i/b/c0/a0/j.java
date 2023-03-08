package f.i.b.c0.a0;

import f.i.b.a0;
import f.i.b.c0.t;
import f.i.b.w;
import f.i.b.z;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.List;
import java.util.Map;

/* compiled from: ReflectiveTypeAdapterFactory.java */
/* loaded from: classes.dex */
public final class j implements a0 {
    public final f.i.b.c0.g a;
    public final f.i.b.d b;

    /* renamed from: c  reason: collision with root package name */
    public final f.i.b.c0.o f6095c;

    /* renamed from: d  reason: collision with root package name */
    public final d f6096d;

    /* renamed from: e  reason: collision with root package name */
    public final f.i.b.c0.b0.b f6097e = f.i.b.c0.b0.b.a;

    /* compiled from: ReflectiveTypeAdapterFactory.java */
    /* loaded from: classes.dex */
    public static final class a<T> extends z<T> {
        public final t<T> a;
        public final Map<String, b> b;

        public a(t<T> tVar, Map<String, b> map) {
            this.a = tVar;
            this.b = map;
        }

        @Override // f.i.b.z
        public T a(f.i.b.e0.a aVar) throws IOException {
            if (aVar.V() == f.i.b.e0.b.NULL) {
                aVar.R();
                return null;
            }
            T a = this.a.a();
            try {
                aVar.e();
                while (aVar.I()) {
                    b bVar = this.b.get(aVar.P());
                    if (bVar != null && bVar.f6098c) {
                        i iVar = (i) bVar;
                        Object a2 = iVar.f6091f.a(aVar);
                        if (a2 != null || !iVar.f6094i) {
                            iVar.f6089d.set(a, a2);
                        }
                    }
                    aVar.a0();
                }
                aVar.F();
                return a;
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            } catch (IllegalStateException e3) {
                throw new w(e3);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0033, code lost:
            r7.G(r1.a);
            r1 = (f.i.b.c0.a0.i) r1;
            r2 = r1.f6089d.get(r8);
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0042, code lost:
            if (r1.f6090e == false) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0044, code lost:
            r1 = r1.f6091f;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0047, code lost:
            r1 = new f.i.b.c0.a0.n(r1.f6092g, r1.f6091f, r1.f6093h.b);
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0055, code lost:
            r1.b(r7, r2);
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v7, types: [f.i.b.z] */
        /* JADX WARN: Type inference failed for: r1v8, types: [f.i.b.z] */
        @Override // f.i.b.z
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void b(f.i.b.e0.c r7, T r8) throws java.io.IOException {
            /*
                r6 = this;
                if (r8 != 0) goto L6
                r7.I()
                return
            L6:
                r7.f()
                java.util.Map<java.lang.String, f.i.b.c0.a0.j$b> r0 = r6.b     // Catch: java.lang.IllegalAccessException -> L5d
                java.util.Collection r0 = r0.values()     // Catch: java.lang.IllegalAccessException -> L5d
                java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.IllegalAccessException -> L5d
            L13:
                boolean r1 = r0.hasNext()     // Catch: java.lang.IllegalAccessException -> L5d
                if (r1 == 0) goto L59
                java.lang.Object r1 = r0.next()     // Catch: java.lang.IllegalAccessException -> L5d
                f.i.b.c0.a0.j$b r1 = (f.i.b.c0.a0.j.b) r1     // Catch: java.lang.IllegalAccessException -> L5d
                r2 = r1
                f.i.b.c0.a0.i r2 = (f.i.b.c0.a0.i) r2     // Catch: java.lang.IllegalAccessException -> L5d
                boolean r3 = r2.b     // Catch: java.lang.IllegalAccessException -> L5d
                r4 = 0
                if (r3 != 0) goto L28
                goto L31
            L28:
                java.lang.reflect.Field r2 = r2.f6089d     // Catch: java.lang.IllegalAccessException -> L5d
                java.lang.Object r2 = r2.get(r8)     // Catch: java.lang.IllegalAccessException -> L5d
                if (r2 == r8) goto L31
                r4 = 1
            L31:
                if (r4 == 0) goto L13
                java.lang.String r2 = r1.a     // Catch: java.lang.IllegalAccessException -> L5d
                r7.G(r2)     // Catch: java.lang.IllegalAccessException -> L5d
                f.i.b.c0.a0.i r1 = (f.i.b.c0.a0.i) r1     // Catch: java.lang.IllegalAccessException -> L5d
                java.lang.reflect.Field r2 = r1.f6089d     // Catch: java.lang.IllegalAccessException -> L5d
                java.lang.Object r2 = r2.get(r8)     // Catch: java.lang.IllegalAccessException -> L5d
                boolean r3 = r1.f6090e     // Catch: java.lang.IllegalAccessException -> L5d
                if (r3 == 0) goto L47
                f.i.b.z r1 = r1.f6091f     // Catch: java.lang.IllegalAccessException -> L5d
                goto L55
            L47:
                f.i.b.c0.a0.n r3 = new f.i.b.c0.a0.n     // Catch: java.lang.IllegalAccessException -> L5d
                f.i.b.j r4 = r1.f6092g     // Catch: java.lang.IllegalAccessException -> L5d
                f.i.b.z r5 = r1.f6091f     // Catch: java.lang.IllegalAccessException -> L5d
                f.i.b.d0.a r1 = r1.f6093h     // Catch: java.lang.IllegalAccessException -> L5d
                java.lang.reflect.Type r1 = r1.b     // Catch: java.lang.IllegalAccessException -> L5d
                r3.<init>(r4, r5, r1)     // Catch: java.lang.IllegalAccessException -> L5d
                r1 = r3
            L55:
                r1.b(r7, r2)     // Catch: java.lang.IllegalAccessException -> L5d
                goto L13
            L59:
                r7.F()
                return
            L5d:
                r7 = move-exception
                java.lang.AssertionError r8 = new java.lang.AssertionError
                r8.<init>(r7)
                throw r8
            */
            throw new UnsupportedOperationException("Method not decompiled: f.i.b.c0.a0.j.a.b(f.i.b.e0.c, java.lang.Object):void");
        }
    }

    /* compiled from: ReflectiveTypeAdapterFactory.java */
    /* loaded from: classes.dex */
    public static abstract class b {
        public final String a;
        public final boolean b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f6098c;

        public b(String str, boolean z, boolean z2) {
            this.a = str;
            this.b = z;
            this.f6098c = z2;
        }
    }

    public j(f.i.b.c0.g gVar, f.i.b.d dVar, f.i.b.c0.o oVar, d dVar2) {
        this.a = gVar;
        this.b = dVar;
        this.f6095c = oVar;
        this.f6096d = dVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0195 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x017b A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v16, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.util.List] */
    @Override // f.i.b.a0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public <T> f.i.b.z<T> a(f.i.b.j r35, f.i.b.d0.a<T> r36) {
        /*
            Method dump skipped, instructions count: 480
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.b.c0.a0.j.a(f.i.b.j, f.i.b.d0.a):f.i.b.z");
    }

    public boolean b(Field field, boolean z) {
        boolean z2;
        f.i.b.c0.o oVar = this.f6095c;
        Class<?> type = field.getType();
        if (!(oVar.b(type) || oVar.c(type, z))) {
            if ((oVar.b & field.getModifiers()) != 0 || ((oVar.a != -1.0d && !oVar.f((f.i.b.b0.c) field.getAnnotation(f.i.b.b0.c.class), (f.i.b.b0.d) field.getAnnotation(f.i.b.b0.d.class))) || field.isSynthetic() || ((!oVar.f6122c && oVar.e(field.getType())) || oVar.d(field.getType())))) {
                z2 = true;
                break;
            }
            List<f.i.b.a> list = z ? oVar.f6123d : oVar.f6124e;
            if (!list.isEmpty()) {
                f.i.b.b bVar = new f.i.b.b(field);
                for (f.i.b.a aVar : list) {
                    if (aVar.b(bVar)) {
                        z2 = true;
                        break;
                    }
                }
            }
            z2 = false;
            if (!z2) {
                return true;
            }
        }
        return false;
    }
}
