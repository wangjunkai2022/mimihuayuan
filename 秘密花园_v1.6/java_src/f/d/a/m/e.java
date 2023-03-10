package f.d.a.m;

import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.d.a.m.a;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
/* compiled from: StandardGifDecoder.java */
/* loaded from: classes.dex */
public class e implements a {
    @ColorInt
    public int[] a;

    /* renamed from: c  reason: collision with root package name */
    public final a.InterfaceC0033a f3528c;

    /* renamed from: d  reason: collision with root package name */
    public ByteBuffer f3529d;

    /* renamed from: e  reason: collision with root package name */
    public byte[] f3530e;

    /* renamed from: f  reason: collision with root package name */
    public short[] f3531f;

    /* renamed from: g  reason: collision with root package name */
    public byte[] f3532g;

    /* renamed from: h  reason: collision with root package name */
    public byte[] f3533h;

    /* renamed from: i  reason: collision with root package name */
    public byte[] f3534i;
    @ColorInt

    /* renamed from: j  reason: collision with root package name */
    public int[] f3535j;

    /* renamed from: k  reason: collision with root package name */
    public int f3536k;

    /* renamed from: l  reason: collision with root package name */
    public c f3537l;

    /* renamed from: m  reason: collision with root package name */
    public Bitmap f3538m;
    public boolean n;
    public int o;
    public int p;
    public int q;
    public int r;
    @Nullable
    public Boolean s;
    @ColorInt
    public final int[] b = new int[256];
    @NonNull
    public Bitmap.Config t = Bitmap.Config.ARGB_8888;

    public e(@NonNull a.InterfaceC0033a interfaceC0033a, c cVar, ByteBuffer byteBuffer, int i2) {
        int[] iArr;
        this.f3528c = interfaceC0033a;
        this.f3537l = new c();
        synchronized (this) {
            if (i2 > 0) {
                int highestOneBit = Integer.highestOneBit(i2);
                this.o = 0;
                this.f3537l = cVar;
                this.f3536k = -1;
                ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                this.f3529d = asReadOnlyBuffer;
                asReadOnlyBuffer.position(0);
                this.f3529d.order(ByteOrder.LITTLE_ENDIAN);
                this.n = false;
                Iterator<b> it = cVar.f3517e.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else if (it.next().f3510g == 3) {
                        this.n = true;
                        break;
                    }
                }
                this.p = highestOneBit;
                this.r = cVar.f3518f / highestOneBit;
                this.q = cVar.f3519g / highestOneBit;
                this.f3534i = ((f.d.a.o.p.g.b) this.f3528c).a(cVar.f3518f * cVar.f3519g);
                a.InterfaceC0033a interfaceC0033a2 = this.f3528c;
                int i3 = this.r * this.q;
                f.d.a.o.n.b0.b bVar = ((f.d.a.o.p.g.b) interfaceC0033a2).b;
                if (bVar == null) {
                    iArr = new int[i3];
                } else {
                    iArr = (int[]) bVar.f(i3, int[].class);
                }
                this.f3535j = iArr;
            } else {
                throw new IllegalArgumentException("Sample size must be >=0, not: " + i2);
            }
        }
    }

    @Override // f.d.a.m.a
    public int a() {
        return this.f3536k;
    }

    @Override // f.d.a.m.a
    @Nullable
    public synchronized Bitmap b() {
        if (this.f3537l.f3515c <= 0 || this.f3536k < 0) {
            if (Log.isLoggable("e", 3)) {
                int i2 = this.f3537l.f3515c;
            }
            this.o = 1;
        }
        if (this.o != 1 && this.o != 2) {
            this.o = 0;
            if (this.f3530e == null) {
                this.f3530e = ((f.d.a.o.p.g.b) this.f3528c).a(255);
            }
            b bVar = this.f3537l.f3517e.get(this.f3536k);
            int i3 = this.f3536k - 1;
            b bVar2 = i3 >= 0 ? this.f3537l.f3517e.get(i3) : null;
            int[] iArr = bVar.f3514k != null ? bVar.f3514k : this.f3537l.a;
            this.a = iArr;
            if (iArr == null) {
                Log.isLoggable("e", 3);
                this.o = 1;
                return null;
            }
            if (bVar.f3509f) {
                System.arraycopy(iArr, 0, this.b, 0, iArr.length);
                int[] iArr2 = this.b;
                this.a = iArr2;
                iArr2[bVar.f3511h] = 0;
                if (bVar.f3510g == 2 && this.f3536k == 0) {
                    this.s = Boolean.TRUE;
                }
            }
            return k(bVar, bVar2);
        }
        Log.isLoggable("e", 3);
        return null;
    }

    @Override // f.d.a.m.a
    public void c() {
        this.f3536k = (this.f3536k + 1) % this.f3537l.f3515c;
    }

    @Override // f.d.a.m.a
    public void clear() {
        f.d.a.o.n.b0.b bVar;
        f.d.a.o.n.b0.b bVar2;
        f.d.a.o.n.b0.b bVar3;
        this.f3537l = null;
        byte[] bArr = this.f3534i;
        if (bArr != null && (bVar3 = ((f.d.a.o.p.g.b) this.f3528c).b) != null) {
            bVar3.e(bArr);
        }
        int[] iArr = this.f3535j;
        if (iArr != null && (bVar2 = ((f.d.a.o.p.g.b) this.f3528c).b) != null) {
            bVar2.e(iArr);
        }
        Bitmap bitmap = this.f3538m;
        if (bitmap != null) {
            ((f.d.a.o.p.g.b) this.f3528c).a.b(bitmap);
        }
        this.f3538m = null;
        this.f3529d = null;
        this.s = null;
        byte[] bArr2 = this.f3530e;
        if (bArr2 == null || (bVar = ((f.d.a.o.p.g.b) this.f3528c).b) == null) {
            return;
        }
        bVar.e(bArr2);
    }

    @Override // f.d.a.m.a
    public int d() {
        return this.f3537l.f3515c;
    }

    @Override // f.d.a.m.a
    public int e() {
        int i2;
        c cVar = this.f3537l;
        int i3 = cVar.f3515c;
        if (i3 <= 0 || (i2 = this.f3536k) < 0) {
            return 0;
        }
        if (i2 < 0 || i2 >= i3) {
            return -1;
        }
        return cVar.f3517e.get(i2).f3512i;
    }

    @Override // f.d.a.m.a
    public int f() {
        return (this.f3535j.length * 4) + this.f3529d.limit() + this.f3534i.length;
    }

    @Override // f.d.a.m.a
    @NonNull
    public ByteBuffer g() {
        return this.f3529d;
    }

    @Override // f.d.a.m.a
    public void h() {
        this.f3536k = -1;
    }

    public final Bitmap i() {
        Boolean bool = this.s;
        Bitmap.Config config = (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.t;
        Bitmap d2 = ((f.d.a.o.p.g.b) this.f3528c).a.d(this.r, this.q, config);
        d2.setHasAlpha(true);
        return d2;
    }

    public void j(@NonNull Bitmap.Config config) {
        if (config != Bitmap.Config.ARGB_8888 && config != Bitmap.Config.RGB_565) {
            throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + Bitmap.Config.ARGB_8888 + " or " + Bitmap.Config.RGB_565);
        }
        this.t = config;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0045, code lost:
        if (r3.f3522j == r36.f3511h) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap k(f.d.a.m.b r36, f.d.a.m.b r37) {
        /*
            Method dump skipped, instructions count: 1087
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.d.a.m.e.k(f.d.a.m.b, f.d.a.m.b):android.graphics.Bitmap");
    }
}
