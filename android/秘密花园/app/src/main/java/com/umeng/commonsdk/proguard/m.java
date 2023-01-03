package com.umeng.commonsdk.proguard;

import com.umeng.commonsdk.proguard.ac;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* compiled from: TDeserializer.java */
/* loaded from: classes.dex */
public class m {
    public final ai a;
    public final av b;

    public m() {
        this(new ac.a());
    }

    private ad j(byte[] bArr, q qVar, q... qVarArr) throws p {
        this.b.a(bArr);
        int length = qVarArr.length + 1;
        q[] qVarArr2 = new q[length];
        int i2 = 0;
        qVarArr2[0] = qVar;
        int i3 = 0;
        while (i3 < qVarArr.length) {
            int i4 = i3 + 1;
            qVarArr2[i4] = qVarArr[i3];
            i3 = i4;
        }
        this.a.j();
        ad adVar = null;
        while (i2 < length) {
            adVar = this.a.l();
            if (adVar.b == 0 || adVar.f3019c > qVarArr2[i2].a()) {
                return null;
            }
            if (adVar.f3019c != qVarArr2[i2].a()) {
                al.a(this.a, adVar.b);
                this.a.m();
            } else {
                i2++;
                if (i2 < length) {
                    this.a.j();
                }
            }
        }
        return adVar;
    }

    public void a(j jVar, byte[] bArr) throws p {
        try {
            this.b.a(bArr);
            jVar.read(this.a);
        } finally {
            this.b.e();
            this.a.B();
        }
    }

    public Byte b(byte[] bArr, q qVar, q... qVarArr) throws p {
        return (Byte) a((byte) 3, bArr, qVar, qVarArr);
    }

    public Double c(byte[] bArr, q qVar, q... qVarArr) throws p {
        return (Double) a((byte) 4, bArr, qVar, qVarArr);
    }

    public Short d(byte[] bArr, q qVar, q... qVarArr) throws p {
        return (Short) a((byte) 6, bArr, qVar, qVarArr);
    }

    public Integer e(byte[] bArr, q qVar, q... qVarArr) throws p {
        return (Integer) a((byte) 8, bArr, qVar, qVarArr);
    }

    public Long f(byte[] bArr, q qVar, q... qVarArr) throws p {
        return (Long) a((byte) 10, bArr, qVar, qVarArr);
    }

    public String g(byte[] bArr, q qVar, q... qVarArr) throws p {
        return (String) a((byte) 11, bArr, qVar, qVarArr);
    }

    public ByteBuffer h(byte[] bArr, q qVar, q... qVarArr) throws p {
        return (ByteBuffer) a((byte) 100, bArr, qVar, qVarArr);
    }

    public Short i(byte[] bArr, q qVar, q... qVarArr) throws p {
        Short sh;
        try {
            try {
                if (j(bArr, qVar, qVarArr) != null) {
                    this.a.j();
                    sh = Short.valueOf(this.a.l().f3019c);
                } else {
                    sh = null;
                }
                return sh;
            } catch (Exception e2) {
                throw new p(e2);
            }
        } finally {
            this.b.e();
            this.a.B();
        }
    }

    public m(ak akVar) {
        av avVar = new av();
        this.b = avVar;
        this.a = akVar.a(avVar);
    }

    public void a(j jVar, String str, String str2) throws p {
        try {
            try {
                a(jVar, str.getBytes(str2));
            } catch (UnsupportedEncodingException unused) {
                throw new p("JVM DOES NOT SUPPORT ENCODING: " + str2);
            }
        } finally {
            this.a.B();
        }
    }

    public void a(j jVar, byte[] bArr, q qVar, q... qVarArr) throws p {
        try {
            try {
                if (j(bArr, qVar, qVarArr) != null) {
                    jVar.read(this.a);
                }
            } catch (Exception e2) {
                throw new p(e2);
            }
        } finally {
            this.b.e();
            this.a.B();
        }
    }

    public Boolean a(byte[] bArr, q qVar, q... qVarArr) throws p {
        return (Boolean) a((byte) 2, bArr, qVar, qVarArr);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Try blocks wrapping queue limit reached! Please report as an issue!
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.connectExcHandlers(BlockExceptionHandler.java:88)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.process(BlockExceptionHandler.java:58)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.independentBlockTreeMod(BlockProcessor.java:452)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:51)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:44)
        */
    private java.lang.Object a(byte r1, byte[] r2, com.umeng.commonsdk.proguard.q r3, com.umeng.commonsdk.proguard.q... r4) throws com.umeng.commonsdk.proguard.p {
        /*
            r0 = this;
            com.umeng.commonsdk.proguard.ad r2 = r0.j(r2, r3, r4)     // Catch: Exception -> 0x00a2, all -> 0x00a0
            if (r2 == 0) goto L_0x009e
            r3 = 2
            if (r1 == r3) goto L_0x008f
            r3 = 3
            if (r1 == r3) goto L_0x0080
            r3 = 4
            if (r1 == r3) goto L_0x0071
            r3 = 6
            if (r1 == r3) goto L_0x0062
            r3 = 8
            if (r1 == r3) goto L_0x0053
            r3 = 100
            r4 = 11
            if (r1 == r3) goto L_0x0048
            r3 = 10
            if (r1 == r3) goto L_0x0039
            if (r1 == r4) goto L_0x0024
            goto L_0x009e
        L_0x0024:
            byte r1 = r2.b     // Catch: Exception -> 0x00a2, all -> 0x00a0
            if (r1 != r4) goto L_0x009e
            com.umeng.commonsdk.proguard.ai r1 = r0.a     // Catch: Exception -> 0x00a2, all -> 0x00a0
            java.lang.String r1 = r1.z()     // Catch: Exception -> 0x00a2, all -> 0x00a0
        L_0x002e:
            com.umeng.commonsdk.proguard.av r2 = r0.b
            r2.e()
            com.umeng.commonsdk.proguard.ai r2 = r0.a
            r2.B()
            return r1
        L_0x0039:
            byte r1 = r2.b     // Catch: Exception -> 0x00a2, all -> 0x00a0
            if (r1 != r3) goto L_0x009e
            com.umeng.commonsdk.proguard.ai r1 = r0.a     // Catch: Exception -> 0x00a2, all -> 0x00a0
            long r1 = r1.x()     // Catch: Exception -> 0x00a2, all -> 0x00a0
            java.lang.Long r1 = java.lang.Long.valueOf(r1)     // Catch: Exception -> 0x00a2, all -> 0x00a0
            goto L_0x002e
        L_0x0048:
            byte r1 = r2.b     // Catch: Exception -> 0x00a2, all -> 0x00a0
            if (r1 != r4) goto L_0x009e
            com.umeng.commonsdk.proguard.ai r1 = r0.a     // Catch: Exception -> 0x00a2, all -> 0x00a0
            java.nio.ByteBuffer r1 = r1.A()     // Catch: Exception -> 0x00a2, all -> 0x00a0
            goto L_0x002e
        L_0x0053:
            byte r1 = r2.b     // Catch: Exception -> 0x00a2, all -> 0x00a0
            if (r1 != r3) goto L_0x009e
            com.umeng.commonsdk.proguard.ai r1 = r0.a     // Catch: Exception -> 0x00a2, all -> 0x00a0
            int r1 = r1.w()     // Catch: Exception -> 0x00a2, all -> 0x00a0
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: Exception -> 0x00a2, all -> 0x00a0
            goto L_0x002e
        L_0x0062:
            byte r1 = r2.b     // Catch: Exception -> 0x00a2, all -> 0x00a0
            if (r1 != r3) goto L_0x009e
            com.umeng.commonsdk.proguard.ai r1 = r0.a     // Catch: Exception -> 0x00a2, all -> 0x00a0
            short r1 = r1.v()     // Catch: Exception -> 0x00a2, all -> 0x00a0
            java.lang.Short r1 = java.lang.Short.valueOf(r1)     // Catch: Exception -> 0x00a2, all -> 0x00a0
            goto L_0x002e
        L_0x0071:
            byte r1 = r2.b     // Catch: Exception -> 0x00a2, all -> 0x00a0
            if (r1 != r3) goto L_0x009e
            com.umeng.commonsdk.proguard.ai r1 = r0.a     // Catch: Exception -> 0x00a2, all -> 0x00a0
            double r1 = r1.y()     // Catch: Exception -> 0x00a2, all -> 0x00a0
            java.lang.Double r1 = java.lang.Double.valueOf(r1)     // Catch: Exception -> 0x00a2, all -> 0x00a0
            goto L_0x002e
        L_0x0080:
            byte r1 = r2.b     // Catch: Exception -> 0x00a2, all -> 0x00a0
            if (r1 != r3) goto L_0x009e
            com.umeng.commonsdk.proguard.ai r1 = r0.a     // Catch: Exception -> 0x00a2, all -> 0x00a0
            byte r1 = r1.u()     // Catch: Exception -> 0x00a2, all -> 0x00a0
            java.lang.Byte r1 = java.lang.Byte.valueOf(r1)     // Catch: Exception -> 0x00a2, all -> 0x00a0
            goto L_0x002e
        L_0x008f:
            byte r1 = r2.b     // Catch: Exception -> 0x00a2, all -> 0x00a0
            if (r1 != r3) goto L_0x009e
            com.umeng.commonsdk.proguard.ai r1 = r0.a     // Catch: Exception -> 0x00a2, all -> 0x00a0
            boolean r1 = r1.t()     // Catch: Exception -> 0x00a2, all -> 0x00a0
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)     // Catch: Exception -> 0x00a2, all -> 0x00a0
            goto L_0x002e
        L_0x009e:
            r1 = 0
            goto L_0x002e
        L_0x00a0:
            r1 = move-exception
            goto L_0x00a9
        L_0x00a2:
            r1 = move-exception
            com.umeng.commonsdk.proguard.p r2 = new com.umeng.commonsdk.proguard.p     // Catch: all -> 0x00a0
            r2.<init>(r1)     // Catch: all -> 0x00a0
            throw r2     // Catch: all -> 0x00a0
        L_0x00a9:
            com.umeng.commonsdk.proguard.av r2 = r0.b
            r2.e()
            com.umeng.commonsdk.proguard.ai r2 = r0.a
            r2.B()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.proguard.m.a(byte, byte[], com.umeng.commonsdk.proguard.q, com.umeng.commonsdk.proguard.q[]):java.lang.Object");
    }

    public void a(j jVar, String str) throws p {
        a(jVar, str.getBytes());
    }
}
