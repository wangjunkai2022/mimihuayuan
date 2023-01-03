package f.i.a.a.i1.o;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import f.i.a.a.i1.b;
import f.i.a.a.i1.c;
import f.i.a.a.i1.e;
import f.i.a.a.i1.g;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.u;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.zip.Inflater;

/* compiled from: PgsDecoder.java */
/* loaded from: classes.dex */
public final class a extends c {
    public final u n = new u();
    public final u o = new u();
    public final C0075a p = new C0075a();
    @Nullable
    public Inflater q;

    /* compiled from: PgsDecoder.java */
    /* renamed from: f.i.a.a.i1.o.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0075a {
        public final u a = new u();
        public final int[] b = new int[256];

        /* renamed from: c  reason: collision with root package name */
        public boolean f5318c;

        /* renamed from: d  reason: collision with root package name */
        public int f5319d;

        /* renamed from: e  reason: collision with root package name */
        public int f5320e;

        /* renamed from: f  reason: collision with root package name */
        public int f5321f;

        /* renamed from: g  reason: collision with root package name */
        public int f5322g;

        /* renamed from: h  reason: collision with root package name */
        public int f5323h;

        /* renamed from: i  reason: collision with root package name */
        public int f5324i;

        public void a() {
            this.f5319d = 0;
            this.f5320e = 0;
            this.f5321f = 0;
            this.f5322g = 0;
            this.f5323h = 0;
            this.f5324i = 0;
            this.a.w(0);
            this.f5318c = false;
        }
    }

    public a() {
        super("PgsDecoder");
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // f.i.a.a.i1.c
    public e k(byte[] bArr, int i2, boolean z) throws g {
        u uVar;
        u uVar2;
        int i3;
        int i4;
        int i5;
        int i6;
        b bVar;
        int r;
        u uVar3 = this.n;
        uVar3.a = bArr;
        uVar3.f5701c = i2;
        int i7 = 0;
        uVar3.b = 0;
        if (uVar3.a() > 0 && (uVar3.a[uVar3.b] & 255) == 120) {
            if (this.q == null) {
                this.q = new Inflater();
            }
            if (h0.R(uVar3, this.o, this.q)) {
                u uVar4 = this.o;
                uVar3.y(uVar4.a, uVar4.f5701c);
            }
        }
        this.p.a();
        ArrayList arrayList = new ArrayList();
        while (this.n.a() >= 3) {
            u uVar5 = this.n;
            C0075a aVar = this.p;
            int i8 = uVar5.f5701c;
            int p = uVar5.p();
            int u = uVar5.u();
            int i9 = uVar5.b + u;
            b bVar2 = null;
            if (i9 > i8) {
                uVar5.A(i8);
            } else {
                if (p != 128) {
                    switch (p) {
                        case 20:
                            if (aVar != null) {
                                if (u % 5 == 2) {
                                    uVar5.B(2);
                                    Arrays.fill(aVar.b, i7);
                                    int i10 = u / 5;
                                    int i11 = 0;
                                    while (i11 < i10) {
                                        int p2 = uVar5.p();
                                        int p3 = uVar5.p();
                                        int p4 = uVar5.p();
                                        double d2 = (double) p3;
                                        double d3 = (double) (p4 - 128);
                                        double p5 = (double) (uVar5.p() - 128);
                                        aVar.b[p2] = (h0.o((int) ((d2 - (0.34414d * p5)) - (d3 * 0.71414d)), 0, 255) << 8) | (h0.o((int) ((1.402d * d3) + d2), 0, 255) << 16) | (uVar5.p() << 24) | h0.o((int) ((p5 * 1.772d) + d2), 0, 255);
                                        i11++;
                                        uVar5 = uVar5;
                                    }
                                    uVar = uVar5;
                                    aVar.f5318c = true;
                                    bVar = null;
                                    break;
                                }
                                uVar = uVar5;
                                bVar = null;
                                break;
                            } else {
                                throw null;
                            }
                        case 21:
                            if (aVar != null) {
                                if (u >= 4) {
                                    uVar5.B(3);
                                    int i12 = u - 4;
                                    if ((uVar5.p() & 128) != 0) {
                                        if (i12 >= 7 && (r = uVar5.r()) >= 4) {
                                            aVar.f5323h = uVar5.u();
                                            aVar.f5324i = uVar5.u();
                                            aVar.a.w(r - 4);
                                            i12 -= 7;
                                        }
                                    }
                                    u uVar6 = aVar.a;
                                    int i13 = uVar6.b;
                                    int i14 = uVar6.f5701c;
                                    if (i13 < i14 && i12 > 0) {
                                        int min = Math.min(i12, i14 - i13);
                                        uVar5.c(aVar.a.a, i13, min);
                                        aVar.a.A(i13 + min);
                                    }
                                }
                                uVar = uVar5;
                                bVar = null;
                                break;
                            } else {
                                throw null;
                            }
                        case 22:
                            if (aVar != null) {
                                if (u >= 19) {
                                    aVar.f5319d = uVar5.u();
                                    aVar.f5320e = uVar5.u();
                                    uVar5.B(11);
                                    aVar.f5321f = uVar5.u();
                                    aVar.f5322g = uVar5.u();
                                }
                                uVar = uVar5;
                                bVar = null;
                                break;
                            } else {
                                throw null;
                            }
                        default:
                            uVar = uVar5;
                            bVar = null;
                            break;
                    }
                    bVar2 = bVar;
                } else {
                    uVar = uVar5;
                    if (aVar.f5319d == 0 || aVar.f5320e == 0 || aVar.f5323h == 0 || aVar.f5324i == 0 || (i3 = (uVar2 = aVar.a).f5701c) == 0 || uVar2.b != i3 || !aVar.f5318c) {
                        bVar2 = null;
                    } else {
                        uVar2.A(0);
                        int i15 = aVar.f5323h * aVar.f5324i;
                        int[] iArr = new int[i15];
                        int i16 = 0;
                        while (i16 < i15) {
                            int p6 = aVar.a.p();
                            if (p6 != 0) {
                                i4 = i16 + 1;
                                iArr[i16] = aVar.b[p6];
                            } else {
                                int p7 = aVar.a.p();
                                if (p7 != 0) {
                                    if ((p7 & 64) == 0) {
                                        i5 = p7 & 63;
                                    } else {
                                        i5 = ((p7 & 63) << 8) | aVar.a.p();
                                    }
                                    if ((p7 & 128) == 0) {
                                        i6 = 0;
                                    } else {
                                        i6 = aVar.b[aVar.a.p()];
                                    }
                                    i4 = i5 + i16;
                                    Arrays.fill(iArr, i16, i4, i6);
                                }
                            }
                            i16 = i4;
                        }
                        Bitmap createBitmap = Bitmap.createBitmap(iArr, aVar.f5323h, aVar.f5324i, Bitmap.Config.ARGB_8888);
                        float f2 = (float) aVar.f5319d;
                        float f3 = (float) aVar.f5320e;
                        bVar2 = new b(createBitmap, ((float) aVar.f5321f) / f2, 0, ((float) aVar.f5322g) / f3, 0, ((float) aVar.f5323h) / f2, ((float) aVar.f5324i) / f3);
                    }
                    aVar.a();
                }
                uVar.A(i9);
            }
            if (bVar2 != null) {
                arrayList.add(bVar2);
            }
            i7 = 0;
        }
        return new b(Collections.unmodifiableList(arrayList));
    }
}
