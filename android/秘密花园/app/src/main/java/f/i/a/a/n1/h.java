package f.i.a.a.n1;

import f.i.a.a.h0;
import f.i.a.a.m1.i;
import f.i.a.a.m1.s;
import f.i.a.a.m1.u;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AvcConfig.java */
/* loaded from: classes.dex */
public final class h {
    public final List<byte[]> a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final int f5729c;

    /* renamed from: d  reason: collision with root package name */
    public final int f5730d;

    /* renamed from: e  reason: collision with root package name */
    public final float f5731e;

    public h(List<byte[]> list, int i2, int i3, int i4, float f2) {
        this.a = list;
        this.b = i2;
        this.f5729c = i3;
        this.f5730d = i4;
        this.f5731e = f2;
    }

    public static byte[] a(u uVar) {
        int u = uVar.u();
        int i2 = uVar.b;
        uVar.B(u);
        byte[] bArr = uVar.a;
        byte[] bArr2 = i.a;
        byte[] bArr3 = new byte[bArr2.length + u];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i2, bArr3, i.a.length, u);
        return bArr3;
    }

    public static h b(u uVar) throws h0 {
        float f2;
        int i2;
        int i3;
        try {
            uVar.B(4);
            int p = (uVar.p() & 3) + 1;
            if (p != 3) {
                ArrayList arrayList = new ArrayList();
                int p2 = uVar.p() & 31;
                for (int i4 = 0; i4 < p2; i4++) {
                    arrayList.add(a(uVar));
                }
                int p3 = uVar.p();
                for (int i5 = 0; i5 < p3; i5++) {
                    arrayList.add(a(uVar));
                }
                if (p2 > 0) {
                    s.b f3 = s.f((byte[]) arrayList.get(0), p, ((byte[]) arrayList.get(0)).length);
                    int i6 = f3.f5690e;
                    int i7 = f3.f5691f;
                    f2 = f3.f5692g;
                    i3 = i6;
                    i2 = i7;
                } else {
                    i3 = -1;
                    i2 = -1;
                    f2 = 1.0f;
                }
                return new h(arrayList, p, i3, i2, f2);
            }
            throw new IllegalStateException();
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw new h0("Error parsing AVC config", e2);
        }
    }
}
