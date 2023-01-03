package f.i.a.a.w0;

import f.i.a.a.w0.m;

/* compiled from: ResamplingAudioProcessor.java */
/* loaded from: classes.dex */
public final class a0 extends t {
    /* JADX WARNING: Removed duplicated region for block: B:13:0x002b  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0061 A[LOOP:2: B:21:0x0061->B:22:0x0063, LOOP_START, PHI: r0 
      PHI: (r0v2 int) = (r0v0 int), (r0v3 int) binds: [B:12:0x0029, B:22:0x0063] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // f.i.a.a.w0.m
    /* Code decompiled incorrectly, please refer to instructions dump. */
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
            if (r3 == r5) goto L_0x0020
            if (r3 == r6) goto L_0x0021
            if (r3 != r4) goto L_0x001a
            int r2 = r2 / 2
            goto L_0x0023
        L_0x001a:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            r8.<init>()
            throw r8
        L_0x0020:
            int r2 = r2 / r6
        L_0x0021:
            int r2 = r2 * 2
        L_0x0023:
            java.nio.ByteBuffer r2 = r7.l(r2)
            int r3 = r7.f5893d
            if (r3 == r5) goto L_0x0061
            if (r3 == r6) goto L_0x004c
            if (r3 != r4) goto L_0x0046
        L_0x002f:
            if (r0 >= r1) goto L_0x0078
            int r3 = r0 + 2
            byte r3 = r8.get(r3)
            r2.put(r3)
            int r3 = r0 + 3
            byte r3 = r8.get(r3)
            r2.put(r3)
            int r0 = r0 + 4
            goto L_0x002f
        L_0x0046:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            r8.<init>()
            throw r8
        L_0x004c:
            if (r0 >= r1) goto L_0x0078
            r3 = 0
            r2.put(r3)
            byte r3 = r8.get(r0)
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r3 = r3 + -128
            byte r3 = (byte) r3
            r2.put(r3)
            int r0 = r0 + 1
            goto L_0x004c
        L_0x0061:
            if (r0 >= r1) goto L_0x0078
            int r3 = r0 + 1
            byte r3 = r8.get(r3)
            r2.put(r3)
            int r3 = r0 + 2
            byte r3 = r8.get(r3)
            r2.put(r3)
            int r0 = r0 + 3
            goto L_0x0061
        L_0x0078:
            int r0 = r8.limit()
            r8.position(r0)
            r2.flip()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.w0.a0.d(java.nio.ByteBuffer):void");
    }

    @Override // f.i.a.a.w0.m
    public boolean f(int i2, int i3, int i4) throws m.a {
        if (i4 == 3 || i4 == 2 || i4 == Integer.MIN_VALUE || i4 == 1073741824) {
            return m(i2, i3, i4);
        }
        throw new m.a(i2, i3, i4);
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
