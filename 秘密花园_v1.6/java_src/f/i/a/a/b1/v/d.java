package f.i.a.a.b1.v;

import f.i.a.a.m1.u;
import java.io.IOException;
import java.util.Arrays;
/* compiled from: OggPacket.java */
/* loaded from: classes.dex */
public final class d {
    public final e a = new e();
    public final u b = new u(new byte[65025], 0);

    /* renamed from: c  reason: collision with root package name */
    public int f4339c = -1;

    /* renamed from: d  reason: collision with root package name */
    public int f4340d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f4341e;

    public final int a(int i2) {
        int i3;
        int i4 = 0;
        this.f4340d = 0;
        do {
            int i5 = this.f4340d;
            int i6 = i2 + i5;
            e eVar = this.a;
            if (i6 >= eVar.f4344d) {
                break;
            }
            int[] iArr = eVar.f4347g;
            this.f4340d = i5 + 1;
            i3 = iArr[i5 + i2];
            i4 += i3;
        } while (i3 == 255);
        return i4;
    }

    public boolean b(f.i.a.a.b1.d dVar) throws IOException, InterruptedException {
        int i2;
        c.a.a.b.g.h.v(dVar != null);
        if (this.f4341e) {
            this.f4341e = false;
            this.b.v();
        }
        while (!this.f4341e) {
            if (this.f4339c < 0) {
                if (!this.a.a(dVar, true)) {
                    return false;
                }
                e eVar = this.a;
                int i3 = eVar.f4345e;
                if ((eVar.b & 1) == 1 && this.b.f5785c == 0) {
                    i3 += a(0);
                    i2 = this.f4340d + 0;
                } else {
                    i2 = 0;
                }
                dVar.h(i3);
                this.f4339c = i2;
            }
            int a = a(this.f4339c);
            int i4 = this.f4339c + this.f4340d;
            if (a > 0) {
                u uVar = this.b;
                byte[] bArr = uVar.a;
                int length = bArr.length;
                int i5 = uVar.f5785c;
                if (length < i5 + a) {
                    uVar.a = Arrays.copyOf(bArr, i5 + a);
                }
                u uVar2 = this.b;
                dVar.g(uVar2.a, uVar2.f5785c, a, false);
                u uVar3 = this.b;
                uVar3.z(uVar3.f5785c + a);
                this.f4341e = this.a.f4347g[i4 + (-1)] != 255;
            }
            if (i4 == this.a.f4344d) {
                i4 = -1;
            }
            this.f4339c = i4;
        }
        return true;
    }
}
