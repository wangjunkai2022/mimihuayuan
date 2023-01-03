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

    private Object a(byte b, byte[] bArr, q qVar, q... qVarArr) throws p {
        Object obj;
        try {
            try {
                ad j2 = j(bArr, qVar, qVarArr);
                if (j2 != null) {
                    if (b != 2) {
                        if (b != 3) {
                            if (b != 4) {
                                if (b != 6) {
                                    if (b != 8) {
                                        if (b != 100) {
                                            if (b != 10) {
                                                if (b == 11 && j2.b == 11) {
                                                    obj = this.a.z();
                                                }
                                            } else if (j2.b == 10) {
                                                obj = Long.valueOf(this.a.x());
                                            }
                                        } else if (j2.b == 11) {
                                            obj = this.a.A();
                                        }
                                    } else if (j2.b == 8) {
                                        obj = Integer.valueOf(this.a.w());
                                    }
                                } else if (j2.b == 6) {
                                    obj = Short.valueOf(this.a.v());
                                }
                            } else if (j2.b == 4) {
                                obj = Double.valueOf(this.a.y());
                            }
                        } else if (j2.b == 3) {
                            obj = Byte.valueOf(this.a.u());
                        }
                    } else if (j2.b == 2) {
                        obj = Boolean.valueOf(this.a.t());
                    }
                    return obj;
                }
                obj = null;
                return obj;
            } catch (Exception e2) {
                throw new p(e2);
            }
        } finally {
            this.b.e();
            this.a.B();
        }
    }

    public void a(j jVar, String str) throws p {
        a(jVar, str.getBytes());
    }
}
