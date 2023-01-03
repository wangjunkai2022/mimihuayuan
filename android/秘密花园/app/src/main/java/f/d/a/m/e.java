package f.d.a.m;

import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.d.a.m.a;
import f.d.a.o.p.g.b;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;

/* compiled from: StandardGifDecoder.java */
/* loaded from: classes.dex */
public class e implements a {
    @ColorInt
    public int[] a;

    /* renamed from: c  reason: collision with root package name */
    public final a.AbstractC0026a f3449c;

    /* renamed from: d  reason: collision with root package name */
    public ByteBuffer f3450d;

    /* renamed from: e  reason: collision with root package name */
    public byte[] f3451e;

    /* renamed from: f  reason: collision with root package name */
    public short[] f3452f;

    /* renamed from: g  reason: collision with root package name */
    public byte[] f3453g;

    /* renamed from: h  reason: collision with root package name */
    public byte[] f3454h;

    /* renamed from: i  reason: collision with root package name */
    public byte[] f3455i;
    @ColorInt

    /* renamed from: j  reason: collision with root package name */
    public int[] f3456j;

    /* renamed from: k  reason: collision with root package name */
    public int f3457k;

    /* renamed from: l  reason: collision with root package name */
    public c f3458l;

    /* renamed from: m  reason: collision with root package name */
    public Bitmap f3459m;
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

    public e(@NonNull a.AbstractC0026a aVar, c cVar, ByteBuffer byteBuffer, int i2) {
        int[] iArr;
        this.f3449c = aVar;
        this.f3458l = new c();
        synchronized (this) {
            if (i2 > 0) {
                int highestOneBit = Integer.highestOneBit(i2);
                this.o = 0;
                this.f3458l = cVar;
                this.f3457k = -1;
                ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                this.f3450d = asReadOnlyBuffer;
                asReadOnlyBuffer.position(0);
                this.f3450d.order(ByteOrder.LITTLE_ENDIAN);
                this.n = false;
                Iterator<b> it = cVar.f3438e.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it.next().f3431g == 3) {
                            this.n = true;
                            break;
                        }
                    } else {
                        break;
                    }
                }
                this.p = highestOneBit;
                this.r = cVar.f3439f / highestOneBit;
                this.q = cVar.f3440g / highestOneBit;
                this.f3455i = ((b) this.f3449c).a(cVar.f3439f * cVar.f3440g);
                a.AbstractC0026a aVar2 = this.f3449c;
                int i3 = this.r * this.q;
                f.d.a.o.n.b0.b bVar = ((b) aVar2).b;
                if (bVar == null) {
                    iArr = new int[i3];
                } else {
                    iArr = (int[]) bVar.f(i3, int[].class);
                }
                this.f3456j = iArr;
            } else {
                throw new IllegalArgumentException("Sample size must be >=0, not: " + i2);
            }
        }
    }

    @Override // f.d.a.m.a
    public int a() {
        return this.f3457k;
    }

    @Override // f.d.a.m.a
    @Nullable
    public synchronized Bitmap b() {
        if (this.f3458l.f3436c <= 0 || this.f3457k < 0) {
            if (Log.isLoggable("e", 3)) {
                int i2 = this.f3458l.f3436c;
            }
            this.o = 1;
        }
        if (!(this.o == 1 || this.o == 2)) {
            this.o = 0;
            if (this.f3451e == null) {
                this.f3451e = ((b) this.f3449c).a(255);
            }
            b bVar = this.f3458l.f3438e.get(this.f3457k);
            int i3 = this.f3457k - 1;
            b bVar2 = i3 >= 0 ? this.f3458l.f3438e.get(i3) : null;
            int[] iArr = bVar.f3435k != null ? bVar.f3435k : this.f3458l.a;
            this.a = iArr;
            if (iArr == null) {
                Log.isLoggable("e", 3);
                this.o = 1;
                return null;
            }
            if (bVar.f3430f) {
                System.arraycopy(iArr, 0, this.b, 0, iArr.length);
                int[] iArr2 = this.b;
                this.a = iArr2;
                iArr2[bVar.f3432h] = 0;
                if (bVar.f3431g == 2 && this.f3457k == 0) {
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
        this.f3457k = (this.f3457k + 1) % this.f3458l.f3436c;
    }

    @Override // f.d.a.m.a
    public void clear() {
        f.d.a.o.n.b0.b bVar;
        f.d.a.o.n.b0.b bVar2;
        f.d.a.o.n.b0.b bVar3;
        this.f3458l = null;
        byte[] bArr = this.f3455i;
        if (!(bArr == null || (bVar3 = ((b) this.f3449c).b) == null)) {
            bVar3.e(bArr);
        }
        int[] iArr = this.f3456j;
        if (!(iArr == null || (bVar2 = ((b) this.f3449c).b) == null)) {
            bVar2.e(iArr);
        }
        Bitmap bitmap = this.f3459m;
        if (bitmap != null) {
            ((b) this.f3449c).a.b(bitmap);
        }
        this.f3459m = null;
        this.f3450d = null;
        this.s = null;
        byte[] bArr2 = this.f3451e;
        if (bArr2 != null && (bVar = ((b) this.f3449c).b) != null) {
            bVar.e(bArr2);
        }
    }

    @Override // f.d.a.m.a
    public int d() {
        return this.f3458l.f3436c;
    }

    @Override // f.d.a.m.a
    public int e() {
        int i2;
        c cVar = this.f3458l;
        int i3 = cVar.f3436c;
        if (i3 <= 0 || (i2 = this.f3457k) < 0) {
            return 0;
        }
        if (i2 < 0 || i2 >= i3) {
            return -1;
        }
        return cVar.f3438e.get(i2).f3433i;
    }

    @Override // f.d.a.m.a
    public int f() {
        return (this.f3456j.length * 4) + this.f3450d.limit() + this.f3455i.length;
    }

    @Override // f.d.a.m.a
    @NonNull
    public ByteBuffer g() {
        return this.f3450d;
    }

    @Override // f.d.a.m.a
    public void h() {
        this.f3457k = -1;
    }

    public final Bitmap i() {
        Boolean bool = this.s;
        Bitmap.Config config = (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.t;
        Bitmap d2 = ((b) this.f3449c).a.d(this.r, this.q, config);
        d2.setHasAlpha(true);
        return d2;
    }

    public void j(@NonNull Bitmap.Config config) {
        if (config == Bitmap.Config.ARGB_8888 || config == Bitmap.Config.RGB_565) {
            this.t = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + Bitmap.Config.ARGB_8888 + " or " + Bitmap.Config.RGB_565);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0045, code lost:
        if (r3.f3443j == r36.f3432h) goto L_0x0047;
     */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0060  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final android.graphics.Bitmap k(f.d.a.m.b r36, f.d.a.m.b r37) {
        /*
        // Method dump skipped, instructions count: 1087
        */
        throw new UnsupportedOperationException("Method not decompiled: f.d.a.m.e.k(f.d.a.m.b, f.d.a.m.b):android.graphics.Bitmap");
    }
}
