package f.i.b.c0.a0;

import f.i.b.a0;
import f.i.b.b0.c;
import f.i.b.c0.g;
import f.i.b.c0.o;
import f.i.b.c0.t;
import f.i.b.d;
import f.i.b.w;
import f.i.b.z;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.List;
import java.util.Map;

/* compiled from: ReflectiveTypeAdapterFactory.java */
/* loaded from: classes.dex */
public final class j implements a0 {
    public final g a;
    public final d b;

    /* renamed from: c  reason: collision with root package name */
    public final o f6020c;

    /* renamed from: d  reason: collision with root package name */
    public final d f6021d;

    /* renamed from: e  reason: collision with root package name */
    public final f.i.b.c0.b0.b f6022e = f.i.b.c0.b0.b.a;

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
                    if (bVar != null && bVar.f6023c) {
                        i iVar = (i) bVar;
                        Object a2 = iVar.f6016f.a(aVar);
                        if (a2 != null || !iVar.f6019i) {
                            iVar.f6014d.set(a, a2);
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

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v4, types: [f.i.b.z] */
        /* JADX WARN: Type inference failed for: r1v8, types: [f.i.b.z] */
        /* JADX WARNING: Code restructure failed: missing block: B:16:0x0033, code lost:
            r7.G(r1.a);
            r1 = (f.i.b.c0.a0.i) r1;
            r2 = r1.f6014d.get(r8);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:17:0x0042, code lost:
            if (r1.f6015e == false) goto L_0x0047;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:18:0x0044, code lost:
            r1 = r1.f6016f;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:19:0x0047, code lost:
            r1 = new f.i.b.c0.a0.n(r1.f6017g, r1.f6016f, r1.f6018h.b);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:20:0x0055, code lost:
            r1.b(r7, r2);
         */
        @Override // f.i.b.z
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void b(f.i.b.e0.c r7, T r8) throws java.io.IOException {
            /*
                r6 = this;
                if (r8 != 0) goto L_0x0006
                r7.I()
                return
            L_0x0006:
                r7.f()
                java.util.Map<java.lang.String, f.i.b.c0.a0.j$b> r0 = r6.b     // Catch: IllegalAccessException -> 0x005d
                java.util.Collection r0 = r0.values()     // Catch: IllegalAccessException -> 0x005d
                java.util.Iterator r0 = r0.iterator()     // Catch: IllegalAccessException -> 0x005d
            L_0x0013:
                boolean r1 = r0.hasNext()     // Catch: IllegalAccessException -> 0x005d
                if (r1 == 0) goto L_0x0059
                java.lang.Object r1 = r0.next()     // Catch: IllegalAccessException -> 0x005d
                f.i.b.c0.a0.j$b r1 = (f.i.b.c0.a0.j.b) r1     // Catch: IllegalAccessException -> 0x005d
                r2 = r1
                f.i.b.c0.a0.i r2 = (f.i.b.c0.a0.i) r2     // Catch: IllegalAccessException -> 0x005d
                boolean r3 = r2.b     // Catch: IllegalAccessException -> 0x005d
                r4 = 0
                if (r3 != 0) goto L_0x0028
                goto L_0x0031
            L_0x0028:
                java.lang.reflect.Field r2 = r2.f6014d     // Catch: IllegalAccessException -> 0x005d
                java.lang.Object r2 = r2.get(r8)     // Catch: IllegalAccessException -> 0x005d
                if (r2 == r8) goto L_0x0031
                r4 = 1
            L_0x0031:
                if (r4 == 0) goto L_0x0013
                java.lang.String r2 = r1.a     // Catch: IllegalAccessException -> 0x005d
                r7.G(r2)     // Catch: IllegalAccessException -> 0x005d
                f.i.b.c0.a0.i r1 = (f.i.b.c0.a0.i) r1     // Catch: IllegalAccessException -> 0x005d
                java.lang.reflect.Field r2 = r1.f6014d     // Catch: IllegalAccessException -> 0x005d
                java.lang.Object r2 = r2.get(r8)     // Catch: IllegalAccessException -> 0x005d
                boolean r3 = r1.f6015e     // Catch: IllegalAccessException -> 0x005d
                if (r3 == 0) goto L_0x0047
                f.i.b.z r1 = r1.f6016f     // Catch: IllegalAccessException -> 0x005d
                goto L_0x0055
            L_0x0047:
                f.i.b.c0.a0.n r3 = new f.i.b.c0.a0.n     // Catch: IllegalAccessException -> 0x005d
                f.i.b.j r4 = r1.f6017g     // Catch: IllegalAccessException -> 0x005d
                f.i.b.z r5 = r1.f6016f     // Catch: IllegalAccessException -> 0x005d
                f.i.b.d0.a r1 = r1.f6018h     // Catch: IllegalAccessException -> 0x005d
                java.lang.reflect.Type r1 = r1.b     // Catch: IllegalAccessException -> 0x005d
                r3.<init>(r4, r5, r1)     // Catch: IllegalAccessException -> 0x005d
                r1 = r3
            L_0x0055:
                r1.b(r7, r2)     // Catch: IllegalAccessException -> 0x005d
                goto L_0x0013
            L_0x0059:
                r7.F()
                return
            L_0x005d:
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
        public final boolean f6023c;

        public b(String str, boolean z, boolean z2) {
            this.a = str;
            this.b = z;
            this.f6023c = z2;
        }
    }

    public j(g gVar, d dVar, o oVar, d dVar2) {
        this.a = gVar;
        this.b = dVar;
        this.f6020c = oVar;
        this.f6021d = dVar2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x00c5  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x0195 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x017b A[SYNTHETIC] */
    @Override // f.i.b.a0
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <T> f.i.b.z<T> a(f.i.b.j r35, f.i.b.d0.a<T> r36) {
        /*
        // Method dump skipped, instructions count: 480
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.b.c0.a0.j.a(f.i.b.j, f.i.b.d0.a):f.i.b.z");
    }

    public boolean b(Field field, boolean z) {
        boolean z2;
        o oVar = this.f6020c;
        Class<?> type = field.getType();
        if (!(oVar.b(type) || oVar.c(type, z))) {
            if ((oVar.b & field.getModifiers()) != 0 || (!(oVar.a == -1.0d || oVar.f((c) field.getAnnotation(c.class), (f.i.b.b0.d) field.getAnnotation(f.i.b.b0.d.class))) || field.isSynthetic() || ((!oVar.f6047c && oVar.e(field.getType())) || oVar.d(field.getType())))) {
                z2 = true;
                break;
            }
            List<f.i.b.a> list = z ? oVar.f6048d : oVar.f6049e;
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
