package com.umeng.commonsdk.proguard;

import com.umeng.commonsdk.proguard.ac;

/* compiled from: TProtocolUtil.java */
/* loaded from: classes.dex */
public class al {
    public static int a = Integer.MAX_VALUE;

    public static void a(int i2) {
        a = i2;
    }

    public static void a(ai aiVar, byte b) throws p {
        a(aiVar, b, a);
    }

    public static void a(ai aiVar, byte b, int i2) throws p {
        if (i2 > 0) {
            int i3 = 0;
            switch (b) {
                case 2:
                    aiVar.t();
                    return;
                case 3:
                    aiVar.u();
                    return;
                case 4:
                    aiVar.y();
                    return;
                case 5:
                case 7:
                case 9:
                default:
                    return;
                case 6:
                    aiVar.v();
                    return;
                case 8:
                    aiVar.w();
                    return;
                case 10:
                    aiVar.x();
                    return;
                case 11:
                    aiVar.A();
                    return;
                case 12:
                    aiVar.j();
                    while (true) {
                        byte b2 = aiVar.l().b;
                        if (b2 == 0) {
                            aiVar.k();
                            return;
                        } else {
                            a(aiVar, b2, i2 - 1);
                            aiVar.m();
                        }
                    }
                case 13:
                    af n = aiVar.n();
                    while (i3 < n.f3095c) {
                        int i4 = i2 - 1;
                        a(aiVar, n.a, i4);
                        a(aiVar, n.b, i4);
                        i3++;
                    }
                    aiVar.o();
                    return;
                case 14:
                    am r = aiVar.r();
                    while (i3 < r.b) {
                        a(aiVar, r.a, i2 - 1);
                        i3++;
                    }
                    aiVar.s();
                    return;
                case 15:
                    ae p = aiVar.p();
                    while (i3 < p.b) {
                        a(aiVar, p.a, i2 - 1);
                        i3++;
                    }
                    aiVar.q();
                    return;
            }
        } else {
            throw new p("Maximum skip depth exceeded");
        }
    }

    public static ak a(byte[] bArr, ak akVar) {
        if (bArr[0] > 16) {
            return new ac.a();
        }
        return (bArr.length <= 1 || (bArr[1] & 128) == 0) ? akVar : new ac.a();
    }
}
