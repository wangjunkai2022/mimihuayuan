package m.m;

import java.util.HashSet;
import java.util.Set;

/* compiled from: OnErrorThrowable.java */
/* loaded from: classes2.dex */
public final class f extends RuntimeException {

    /* compiled from: OnErrorThrowable.java */
    /* loaded from: classes2.dex */
    public static class a extends RuntimeException {
        public final Object a;

        /* compiled from: OnErrorThrowable.java */
        /* renamed from: m.m.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0127a {
            public static final Set<Class<?>> a;

            static {
                HashSet hashSet = new HashSet();
                hashSet.add(Boolean.class);
                hashSet.add(Character.class);
                hashSet.add(Byte.class);
                hashSet.add(Short.class);
                hashSet.add(Integer.class);
                hashSet.add(Long.class);
                hashSet.add(Float.class);
                hashSet.add(Double.class);
                a = hashSet;
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public a(java.lang.Object r4) {
            /*
                r3 = this;
                java.lang.String r0 = "OnError while emitting onNext value: "
                java.lang.StringBuilder r0 = f.b.a.a.a.o(r0)
                if (r4 != 0) goto Lb
                java.lang.String r1 = "null"
                goto L51
            Lb:
                java.util.Set<java.lang.Class<?>> r1 = m.m.f.a.C0127a.a
                java.lang.Class r2 = r4.getClass()
                boolean r1 = r1.contains(r2)
                if (r1 == 0) goto L1c
                java.lang.String r1 = r4.toString()
                goto L51
            L1c:
                boolean r1 = r4 instanceof java.lang.String
                if (r1 == 0) goto L24
                r1 = r4
                java.lang.String r1 = (java.lang.String) r1
                goto L51
            L24:
                boolean r1 = r4 instanceof java.lang.Enum
                if (r1 == 0) goto L30
                r1 = r4
                java.lang.Enum r1 = (java.lang.Enum) r1
                java.lang.String r1 = r1.name()
                goto L51
            L30:
                m.q.o r1 = m.q.o.f7408f
                m.q.b r1 = r1.b()
                if (r1 == 0) goto L6d
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.Class r2 = r4.getClass()
                java.lang.String r2 = r2.getName()
                r1.append(r2)
                java.lang.String r2 = ".class"
                r1.append(r2)
                java.lang.String r1 = r1.toString()
            L51:
                r0.append(r1)
                java.lang.String r0 = r0.toString()
                r3.<init>(r0)
                boolean r0 = r4 instanceof java.io.Serializable
                if (r0 == 0) goto L60
                goto L6a
            L60:
                java.lang.String r4 = java.lang.String.valueOf(r4)     // Catch: java.lang.Throwable -> L65
                goto L6a
            L65:
                r4 = move-exception
                java.lang.String r4 = r4.getMessage()
            L6a:
                r3.a = r4
                return
            L6d:
                r4 = 0
                throw r4
            */
            throw new UnsupportedOperationException("Method not decompiled: m.m.f.a.<init>(java.lang.Object):void");
        }
    }

    public static Throwable a(Throwable th, Object obj) {
        if (th == null) {
            th = new NullPointerException();
        }
        int i2 = 0;
        int i3 = 0;
        Throwable th2 = th;
        while (true) {
            if (th2.getCause() == null) {
                break;
            }
            int i4 = i3 + 1;
            if (i3 >= 25) {
                th2 = new RuntimeException("Stack too deep to get final cause");
                break;
            }
            th2 = th2.getCause();
            i3 = i4;
        }
        if ((th2 instanceof a) && ((a) th2).a == obj) {
            return th;
        }
        a aVar = new a(obj);
        HashSet hashSet = new HashSet();
        Throwable th3 = th;
        while (true) {
            if (th3.getCause() != null) {
                int i5 = i2 + 1;
                if (i2 >= 25) {
                    break;
                }
                th3 = th3.getCause();
                if (!hashSet.contains(th3.getCause())) {
                    hashSet.add(th3.getCause());
                    i2 = i5;
                }
            }
            try {
                th3.initCause(aVar);
                break;
            } catch (Throwable unused) {
            }
        }
        return th;
    }
}
