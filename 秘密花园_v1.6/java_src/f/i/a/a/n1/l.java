package f.i.a.a.n1;

import androidx.annotation.Nullable;
import f.i.a.a.h0;
import f.i.a.a.m1.u;
import java.util.Collections;
import java.util.List;
/* compiled from: HevcConfig.java */
/* loaded from: classes.dex */
public final class l {
    @Nullable
    public final List<byte[]> a;
    public final int b;

    public l(@Nullable List<byte[]> list, int i2) {
        this.a = list;
        this.b = i2;
    }

    public static l a(u uVar) throws h0 {
        try {
            uVar.B(21);
            int p = uVar.p() & 3;
            int p2 = uVar.p();
            int i2 = uVar.b;
            int i3 = 0;
            for (int i4 = 0; i4 < p2; i4++) {
                uVar.B(1);
                int u = uVar.u();
                for (int i5 = 0; i5 < u; i5++) {
                    int u2 = uVar.u();
                    i3 += u2 + 4;
                    uVar.B(u2);
                }
            }
            uVar.A(i2);
            byte[] bArr = new byte[i3];
            int i6 = 0;
            for (int i7 = 0; i7 < p2; i7++) {
                uVar.B(1);
                int u3 = uVar.u();
                for (int i8 = 0; i8 < u3; i8++) {
                    int u4 = uVar.u();
                    System.arraycopy(f.i.a.a.m1.s.a, 0, bArr, i6, f.i.a.a.m1.s.a.length);
                    int length = i6 + f.i.a.a.m1.s.a.length;
                    System.arraycopy(uVar.a, uVar.b, bArr, length, u4);
                    i6 = length + u4;
                    uVar.B(u4);
                }
            }
            return new l(i3 == 0 ? null : Collections.singletonList(bArr), p + 1);
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw new h0("Error parsing HEVC config", e2);
        }
    }
}
