package f.i.a.a.i1.o;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
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
    public final u n;
    public final u o;
    public final C0082a p;
    @Nullable
    public Inflater q;

    /* compiled from: PgsDecoder.java */
    /* renamed from: f.i.a.a.i1.o.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0082a {
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
        this.n = new u();
        this.o = new u();
        this.p = new C0082a();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // f.i.a.a.i1.c
    public e k(byte[] bArr, int i2, boolean z) throws g {
        u uVar;
        u uVar2;
        int i3;
        int i4;
        f.i.a.a.i1.b bVar;
        int r;
        u uVar3 = this.n;
        uVar3.a = bArr;
        uVar3.f5701c = i2;
        int i5 = 0;
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
            C0082a c0082a = this.p;
            int i6 = uVar5.f5701c;
            int p = uVar5.p();
            int u = uVar5.u();
            int i7 = uVar5.b + u;
            f.i.a.a.i1.b bVar2 = null;
            if (i7 > i6) {
                uVar5.A(i6);
            } else {
                if (p != 128) {
                    switch (p) {
                        case 20:
                            if (c0082a != null) {
                                if (u % 5 == 2) {
                                    uVar5.B(2);
                                    Arrays.fill(c0082a.b, i5);
                                    int i8 = u / 5;
                                    int i9 = 0;
                                    while (i9 < i8) {
                                        int p2 = uVar5.p();
                                        int p3 = uVar5.p();
                                        int p4 = uVar5.p();
                                        double d2 = p3;
                                        double d3 = p4 - 128;
                                        double p5 = uVar5.p() - 128;
                                        c0082a.b[p2] = (h0.o((int) ((d2 - (0.34414d * p5)) - (d3 * 0.71414d)), 0, 255) << 8) | (h0.o((int) ((1.402d * d3) + d2), 0, 255) << 16) | (uVar5.p() << 24) | h0.o((int) ((p5 * 1.772d) + d2), 0, 255);
                                        i9++;
                                        uVar5 = uVar5;
                                    }
                                    uVar = uVar5;
                                    c0082a.f5318c = true;
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
                            if (c0082a != null) {
                                if (u >= 4) {
                                    uVar5.B(3);
                                    int i10 = u - 4;
                                    if ((uVar5.p() & 128) != 0) {
                                        if (i10 >= 7 && (r = uVar5.r()) >= 4) {
                                            c0082a.f5323h = uVar5.u();
                                            c0082a.f5324i = uVar5.u();
                                            c0082a.a.w(r - 4);
                                            i10 -= 7;
                                        }
                                    }
                                    u uVar6 = c0082a.a;
                                    int i11 = uVar6.b;
                                    int i12 = uVar6.f5701c;
                                    if (i11 < i12 && i10 > 0) {
                                        int min = Math.min(i10, i12 - i11);
                                        uVar5.c(c0082a.a.a, i11, min);
                                        c0082a.a.A(i11 + min);
                                    }
                                }
                                uVar = uVar5;
                                bVar = null;
                                break;
                            } else {
                                throw null;
                            }
                        case 22:
                            if (c0082a != null) {
                                if (u >= 19) {
                                    c0082a.f5319d = uVar5.u();
                                    c0082a.f5320e = uVar5.u();
                                    uVar5.B(11);
                                    c0082a.f5321f = uVar5.u();
                                    c0082a.f5322g = uVar5.u();
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
                    if (c0082a.f5319d == 0 || c0082a.f5320e == 0 || c0082a.f5323h == 0 || c0082a.f5324i == 0 || (i3 = (uVar2 = c0082a.a).f5701c) == 0 || uVar2.b != i3 || !c0082a.f5318c) {
                        bVar2 = null;
                    } else {
                        uVar2.A(0);
                        int i13 = c0082a.f5323h * c0082a.f5324i;
                        int[] iArr = new int[i13];
                        int i14 = 0;
                        while (i14 < i13) {
                            int p6 = c0082a.a.p();
                            if (p6 != 0) {
                                i4 = i14 + 1;
                                iArr[i14] = c0082a.b[p6];
                            } else {
                                int p7 = c0082a.a.p();
                                if (p7 != 0) {
                                    i4 = ((p7 & 64) == 0 ? p7 & 63 : ((p7 & 63) << 8) | c0082a.a.p()) + i14;
                                    Arrays.fill(iArr, i14, i4, (p7 & 128) == 0 ? 0 : c0082a.b[c0082a.a.p()]);
                                }
                            }
                            i14 = i4;
                        }
                        Bitmap createBitmap = Bitmap.createBitmap(iArr, c0082a.f5323h, c0082a.f5324i, Bitmap.Config.ARGB_8888);
                        float f2 = c0082a.f5319d;
                        float f3 = c0082a.f5320e;
                        bVar2 = new f.i.a.a.i1.b(createBitmap, c0082a.f5321f / f2, 0, c0082a.f5322g / f3, 0, c0082a.f5323h / f2, c0082a.f5324i / f3);
                    }
                    c0082a.a();
                }
                uVar.A(i7);
            }
            if (bVar2 != null) {
                arrayList.add(bVar2);
            }
            i5 = 0;
        }
        return new b(Collections.unmodifiableList(arrayList));
    }
}
