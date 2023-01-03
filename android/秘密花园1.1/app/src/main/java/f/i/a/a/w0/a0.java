package f.i.a.a.w0;

import f.i.a.a.w0.m;

/* compiled from: ResamplingAudioProcessor.java */
/* loaded from: classes.dex */
public final class a0 extends t {
    /* JADX WARN: Removed duplicated region for block: B:13:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0061 A[LOOP:2: B:21:0x0061->B:22:0x0063, LOOP_START, PHI: r0 
      PHI: (r0v1 int) = (r0v0 int), (r0v2 int) binds: [B:12:0x0029, B:22:0x0063] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // f.i.a.a.w0.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void d(java.nio.ByteBuffer r8) {
        /*
            r7 = this;
            int r0 = r8.position()
            int r1 = r8.limit()
            int r2 = r1 - r0
            int r3 = r7.f5893d
            r4 = 1073741824(0x40000000, float:2.0)
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            r6 = 3
            if (r3 == r5) goto L20
            if (r3 == r6) goto L21
            if (r3 != r4) goto L1a
            int r2 = r2 / 2
            goto L23
        L1a:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            r8.<init>()
            throw r8
        L20:
            int r2 = r2 / r6
        L21:
            int r2 = r2 * 2
        L23:
            java.nio.ByteBuffer r2 = r7.l(r2)
            int r3 = r7.f5893d
            if (r3 == r5) goto L61
            if (r3 == r6) goto L4c
            if (r3 != r4) goto L46
        L2f:
            if (r0 >= r1) goto L78
            int r3 = r0 + 2
            byte r3 = r8.get(r3)
            r2.put(r3)
            int r3 = r0 + 3
            byte r3 = r8.get(r3)
            r2.put(r3)
            int r0 = r0 + 4
            goto L2f
        L46:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            r8.<init>()
            throw r8
        L4c:
            if (r0 >= r1) goto L78
            r3 = 0
            r2.put(r3)
            byte r3 = r8.get(r0)
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r3 = r3 + (-128)
            byte r3 = (byte) r3
            r2.put(r3)
            int r0 = r0 + 1
            goto L4c
        L61:
            if (r0 >= r1) goto L78
            int r3 = r0 + 1
            byte r3 = r8.get(r3)
            r2.put(r3)
            int r3 = r0 + 2
            byte r3 = r8.get(r3)
            r2.put(r3)
            int r0 = r0 + 3
            goto L61
        L78:
            int r0 = r8.limit()
            r8.position(r0)
            r2.flip()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.w0.a0.d(java.nio.ByteBuffer):void");
    }

    @Override // f.i.a.a.w0.m
    public boolean f(int i2, int i3, int i4) throws m.a {
        if (i4 != 3 && i4 != 2 && i4 != Integer.MIN_VALUE && i4 != 1073741824) {
            throw new m.a(i2, i3, i4);
        }
        return m(i2, i3, i4);
    }

    @Override // f.i.a.a.w0.t, f.i.a.a.w0.m
    public int h() {
        return 2;
    }

    @Override // f.i.a.a.w0.t, f.i.a.a.w0.m
    public boolean isActive() {
        int i2 = this.f5893d;
        return (i2 == 0 || i2 == 2) ? false : true;
    }
}
