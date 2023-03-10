package f.i.a.a.b1.v;

import f.i.a.a.b0;
import f.i.a.a.b1.v.h;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.u;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* compiled from: OpusReader.java */
/* loaded from: classes.dex */
public final class g extends h {
    public static final int o = h0.C("Opus");
    public static final byte[] p = {79, 112, 117, 115, 72, 101, 97, 100};
    public boolean n;

    public static boolean h(u uVar) {
        int a = uVar.a();
        byte[] bArr = p;
        if (a < bArr.length) {
            return false;
        }
        byte[] bArr2 = new byte[bArr.length];
        int length = bArr.length;
        System.arraycopy(uVar.a, uVar.b, bArr2, 0, length);
        uVar.b += length;
        return Arrays.equals(bArr2, p);
    }

    @Override // f.i.a.a.b1.v.h
    public long d(u uVar) {
        byte[] bArr = uVar.a;
        int i2 = bArr[0] & 255;
        int i3 = i2 & 3;
        int i4 = 2;
        if (i3 == 0) {
            i4 = 1;
        } else if (i3 != 1 && i3 != 2) {
            i4 = bArr[1] & 63;
        }
        int i5 = i2 >> 3;
        int i6 = i5 & 3;
        return b(i4 * (i5 >= 16 ? 2500 << i6 : i5 >= 12 ? 10000 << (i6 & 1) : i6 == 3 ? 60000 : 10000 << i6));
    }

    @Override // f.i.a.a.b1.v.h
    public boolean e(u uVar, long j2, h.b bVar) {
        if (!this.n) {
            byte[] copyOf = Arrays.copyOf(uVar.a, uVar.f5785c);
            int i2 = copyOf[9] & 255;
            ArrayList arrayList = new ArrayList(3);
            arrayList.add(copyOf);
            g(arrayList, ((copyOf[11] & 255) << 8) | (copyOf[10] & 255));
            g(arrayList, 3840);
            bVar.a = b0.j(null, "audio/opus", null, -1, -1, i2, 48000, arrayList, null, 0, null);
            this.n = true;
            return true;
        }
        boolean z = uVar.d() == o;
        uVar.A(0);
        return z;
    }

    @Override // f.i.a.a.b1.v.h
    public void f(boolean z) {
        super.f(z);
        if (z) {
            this.n = false;
        }
    }

    public final void g(List<byte[]> list, int i2) {
        list.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong((i2 * 1000000000) / 48000).array());
    }
}
