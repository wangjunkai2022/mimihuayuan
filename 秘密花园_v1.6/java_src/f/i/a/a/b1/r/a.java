package f.i.a.a.b1.r;

import android.util.Pair;
import f.i.a.a.b0;
import f.i.a.a.b1.p;
import f.i.a.a.b1.r.d;
import f.i.a.a.h0;
import f.i.a.a.m1.i;
import f.i.a.a.m1.u;
import java.util.Collections;
/* compiled from: AudioTagPayloadReader.java */
/* loaded from: classes.dex */
public final class a extends d {

    /* renamed from: e  reason: collision with root package name */
    public static final int[] f4157e = {5512, 11025, 22050, 44100};
    public boolean b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f4158c;

    /* renamed from: d  reason: collision with root package name */
    public int f4159d;

    public a(p pVar) {
        super(pVar);
    }

    @Override // f.i.a.a.b1.r.d
    public boolean b(u uVar) throws d.a {
        if (!this.b) {
            int p = uVar.p();
            int i2 = (p >> 4) & 15;
            this.f4159d = i2;
            if (i2 == 2) {
                this.a.d(b0.j(null, "audio/mpeg", null, -1, -1, 1, f4157e[(p >> 2) & 3], null, null, 0, null));
                this.f4158c = true;
            } else if (i2 == 7 || i2 == 8) {
                this.a.d(b0.i(null, this.f4159d == 7 ? "audio/g711-alaw" : "audio/g711-mlaw", null, -1, -1, 1, 8000, (p & 1) == 1 ? 2 : 3, null, null, 0, null));
                this.f4158c = true;
            } else if (i2 != 10) {
                StringBuilder o = f.b.a.a.a.o("Audio format not supported: ");
                o.append(this.f4159d);
                throw new d.a(o.toString());
            }
            this.b = true;
        } else {
            uVar.B(1);
        }
        return true;
    }

    @Override // f.i.a.a.b1.r.d
    public boolean c(u uVar, long j2) throws h0 {
        if (this.f4159d == 2) {
            int a = uVar.a();
            this.a.a(uVar, a);
            this.a.c(j2, 1, a, 0, null);
            return true;
        }
        int p = uVar.p();
        if (p == 0 && !this.f4158c) {
            int a2 = uVar.a();
            byte[] bArr = new byte[a2];
            System.arraycopy(uVar.a, uVar.b, bArr, 0, a2);
            uVar.b += a2;
            Pair<Integer, Integer> e2 = i.e(bArr);
            this.a.d(b0.j(null, "audio/mp4a-latm", null, -1, -1, ((Integer) e2.second).intValue(), ((Integer) e2.first).intValue(), Collections.singletonList(bArr), null, 0, null));
            this.f4158c = true;
            return false;
        } else if (this.f4159d != 10 || p == 1) {
            int a3 = uVar.a();
            this.a.a(uVar, a3);
            this.a.c(j2, 1, a3, 0, null);
            return true;
        } else {
            return false;
        }
    }
}
