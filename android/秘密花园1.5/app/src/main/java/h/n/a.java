package h.n;

import java.lang.reflect.Method;

/* compiled from: PlatformImplementations.kt */
/* loaded from: classes.dex */
public class a {

    /* compiled from: PlatformImplementations.kt */
    /* renamed from: h.n.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0102a {
        public static final Method a;

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0037, code lost:
            if (h.o.c.g.a(r7.length == 1 ? r7[0] : null, java.lang.Throwable.class) != false) goto L11;
         */
        static {
            /*
                java.lang.Class<java.lang.Throwable> r0 = java.lang.Throwable.class
                java.lang.reflect.Method[] r1 = r0.getMethods()
                java.lang.String r2 = "throwableClass.methods"
                h.o.c.g.b(r1, r2)
                int r2 = r1.length
                r3 = 0
                r4 = 0
            Le:
                r5 = 0
                if (r4 >= r2) goto L42
                r6 = r1[r4]
                java.lang.String r7 = "it"
                h.o.c.g.b(r6, r7)
                java.lang.String r7 = r6.getName()
                java.lang.String r8 = "addSuppressed"
                boolean r7 = h.o.c.g.a(r7, r8)
                r8 = 1
                if (r7 == 0) goto L3a
                java.lang.Class[] r7 = r6.getParameterTypes()
                java.lang.String r9 = "it.parameterTypes"
                h.o.c.g.b(r7, r9)
                int r9 = r7.length
                if (r9 != r8) goto L33
                r5 = r7[r3]
            L33:
                boolean r5 = h.o.c.g.a(r5, r0)
                if (r5 == 0) goto L3a
                goto L3b
            L3a:
                r8 = 0
            L3b:
                if (r8 == 0) goto L3f
                r5 = r6
                goto L42
            L3f:
                int r4 = r4 + 1
                goto Le
            L42:
                h.n.a.C0102a.a = r5
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: h.n.a.C0102a.<clinit>():void");
        }
    }
}
