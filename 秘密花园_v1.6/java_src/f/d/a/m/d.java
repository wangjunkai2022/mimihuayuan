package f.d.a.m;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
/* compiled from: GifHeaderParser.java */
/* loaded from: classes.dex */
public class d {
    public ByteBuffer b;

    /* renamed from: c  reason: collision with root package name */
    public c f3526c;
    public final byte[] a = new byte[256];

    /* renamed from: d  reason: collision with root package name */
    public int f3527d = 0;

    public final boolean a() {
        return this.f3526c.b != 0;
    }

    @NonNull
    public c b() {
        int c2;
        if (this.b != null) {
            if (a()) {
                return this.f3526c;
            }
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < 6; i2++) {
                sb.append((char) c());
            }
            if (!sb.toString().startsWith("GIF")) {
                this.f3526c.b = 1;
            } else {
                this.f3526c.f3518f = f();
                this.f3526c.f3519g = f();
                this.f3526c.f3520h = (c() & 128) != 0;
                this.f3526c.f3521i = (int) Math.pow(2.0d, (c2 & 7) + 1);
                this.f3526c.f3522j = c();
                this.f3526c.f3523k = c();
                if (this.f3526c.f3520h && !a()) {
                    c cVar = this.f3526c;
                    cVar.a = e(cVar.f3521i);
                    c cVar2 = this.f3526c;
                    cVar2.f3524l = cVar2.a[cVar2.f3522j];
                }
            }
            if (!a()) {
                boolean z = false;
                while (!z && !a() && this.f3526c.f3515c <= Integer.MAX_VALUE) {
                    int c3 = c();
                    if (c3 == 33) {
                        int c4 = c();
                        if (c4 == 1) {
                            g();
                        } else if (c4 == 249) {
                            this.f3526c.f3516d = new b();
                            c();
                            int c5 = c();
                            b bVar = this.f3526c.f3516d;
                            int i3 = (c5 & 28) >> 2;
                            bVar.f3510g = i3;
                            if (i3 == 0) {
                                bVar.f3510g = 1;
                            }
                            this.f3526c.f3516d.f3509f = (c5 & 1) != 0;
                            int f2 = f();
                            if (f2 < 2) {
                                f2 = 10;
                            }
                            b bVar2 = this.f3526c.f3516d;
                            bVar2.f3512i = f2 * 10;
                            bVar2.f3511h = c();
                            c();
                        } else if (c4 == 254) {
                            g();
                        } else if (c4 != 255) {
                            g();
                        } else {
                            d();
                            StringBuilder sb2 = new StringBuilder();
                            for (int i4 = 0; i4 < 11; i4++) {
                                sb2.append((char) this.a[i4]);
                            }
                            if (sb2.toString().equals("NETSCAPE2.0")) {
                                do {
                                    d();
                                    byte[] bArr = this.a;
                                    if (bArr[0] == 1) {
                                        this.f3526c.f3525m = ((bArr[2] & 255) << 8) | (bArr[1] & 255);
                                    }
                                    if (this.f3527d > 0) {
                                    }
                                } while (!a());
                            } else {
                                g();
                            }
                        }
                    } else if (c3 == 44) {
                        c cVar3 = this.f3526c;
                        if (cVar3.f3516d == null) {
                            cVar3.f3516d = new b();
                        }
                        this.f3526c.f3516d.a = f();
                        this.f3526c.f3516d.b = f();
                        this.f3526c.f3516d.f3506c = f();
                        this.f3526c.f3516d.f3507d = f();
                        int c6 = c();
                        boolean z2 = (c6 & 128) != 0;
                        int pow = (int) Math.pow(2.0d, (c6 & 7) + 1);
                        this.f3526c.f3516d.f3508e = (c6 & 64) != 0;
                        if (z2) {
                            this.f3526c.f3516d.f3514k = e(pow);
                        } else {
                            this.f3526c.f3516d.f3514k = null;
                        }
                        this.f3526c.f3516d.f3513j = this.b.position();
                        c();
                        g();
                        if (!a()) {
                            c cVar4 = this.f3526c;
                            cVar4.f3515c++;
                            cVar4.f3517e.add(cVar4.f3516d);
                        }
                    } else if (c3 != 59) {
                        this.f3526c.b = 1;
                    } else {
                        z = true;
                    }
                }
                c cVar5 = this.f3526c;
                if (cVar5.f3515c < 0) {
                    cVar5.b = 1;
                }
            }
            return this.f3526c;
        }
        throw new IllegalStateException("You must call setData() before parseHeader()");
    }

    public final int c() {
        try {
            return this.b.get() & 255;
        } catch (Exception unused) {
            this.f3526c.b = 1;
            return 0;
        }
    }

    public final void d() {
        int c2 = c();
        this.f3527d = c2;
        if (c2 > 0) {
            int i2 = 0;
            while (i2 < this.f3527d) {
                try {
                    int i3 = this.f3527d - i2;
                    this.b.get(this.a, i2, i3);
                    i2 += i3;
                } catch (Exception unused) {
                    Log.isLoggable("GifHeaderParser", 3);
                    this.f3526c.b = 1;
                    return;
                }
            }
        }
    }

    @Nullable
    public final int[] e(int i2) {
        byte[] bArr = new byte[i2 * 3];
        int[] iArr = null;
        try {
            this.b.get(bArr);
            iArr = new int[256];
            int i3 = 0;
            int i4 = 0;
            while (i3 < i2) {
                int i5 = i4 + 1;
                int i6 = i5 + 1;
                int i7 = i6 + 1;
                int i8 = i3 + 1;
                iArr[i3] = ((bArr[i4] & 255) << 16) | (-16777216) | ((bArr[i5] & 255) << 8) | (bArr[i6] & 255);
                i4 = i7;
                i3 = i8;
            }
        } catch (BufferUnderflowException unused) {
            Log.isLoggable("GifHeaderParser", 3);
            this.f3526c.b = 1;
        }
        return iArr;
    }

    public final int f() {
        return this.b.getShort();
    }

    public final void g() {
        int c2;
        do {
            c2 = c();
            this.b.position(Math.min(this.b.position() + c2, this.b.limit()));
        } while (c2 > 0);
    }
}
