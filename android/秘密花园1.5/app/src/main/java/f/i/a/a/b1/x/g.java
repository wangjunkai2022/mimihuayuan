package f.i.a.a.b1.x;

import android.util.SparseArray;
import androidx.recyclerview.widget.RecyclerView;
import f.i.a.a.b1.x.c0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: DefaultTsPayloadReaderFactory.java */
/* loaded from: classes.dex */
public final class g implements c0.c {
    public final int a;
    public final List<f.i.a.a.b0> b;

    public g(int i2, List<f.i.a.a.b0> list) {
        this.a = i2;
        this.b = list;
    }

    @Override // f.i.a.a.b1.x.c0.c
    public SparseArray<c0> a() {
        return new SparseArray<>();
    }

    @Override // f.i.a.a.b1.x.c0.c
    public c0 b(int i2, c0.b bVar) {
        if (i2 != 2) {
            if (i2 == 3 || i2 == 4) {
                return new r(new p(bVar.b));
            }
            if (i2 == 15) {
                if (d(2)) {
                    return null;
                }
                return new r(new f(false, bVar.b));
            } else if (i2 == 17) {
                if (d(2)) {
                    return null;
                }
                return new r(new o(bVar.b));
            } else if (i2 != 21) {
                if (i2 == 27) {
                    if (d(4)) {
                        return null;
                    }
                    return new r(new l(new x(c(bVar)), d(1), d(8)));
                } else if (i2 != 36) {
                    if (i2 != 89) {
                        if (i2 != 138) {
                            if (i2 != 172) {
                                if (i2 != 129) {
                                    if (i2 != 130) {
                                        if (i2 == 134) {
                                            if (d(16)) {
                                                return null;
                                            }
                                            return new w(new y());
                                        } else if (i2 != 135) {
                                            return null;
                                        }
                                    } else if (!d(64)) {
                                        return null;
                                    }
                                }
                                return new r(new b(bVar.b));
                            }
                            return new r(new d(bVar.b));
                        }
                        return new r(new h(bVar.b));
                    }
                    return new r(new i(bVar.f4402c));
                } else {
                    return new r(new m(new x(c(bVar))));
                }
            } else {
                return new r(new n());
            }
        }
        return new r(new k(new d0(c(bVar))));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4 */
    public final List<f.i.a.a.b0> c(c0.b bVar) {
        String str;
        int i2;
        List list;
        if (d(32)) {
            return this.b;
        }
        f.i.a.a.m1.u uVar = new f.i.a.a.m1.u(bVar.f4403d);
        ArrayList arrayList = this.b;
        while (uVar.a() > 0) {
            int p = uVar.p();
            int p2 = uVar.b + uVar.p();
            if (p == 134) {
                arrayList = new ArrayList();
                int p3 = uVar.p() & 31;
                for (int i3 = 0; i3 < p3; i3++) {
                    String m2 = uVar.m(3);
                    int p4 = uVar.p();
                    boolean z = (p4 & 128) != 0;
                    if (z) {
                        i2 = p4 & 63;
                        str = "application/cea-708";
                    } else {
                        str = "application/cea-608";
                        i2 = 1;
                    }
                    byte p5 = (byte) uVar.p();
                    uVar.B(1);
                    if (z) {
                        list = Collections.singletonList(new byte[]{(byte) ((p5 & 64) != 0 ? 1 : 0)});
                    } else {
                        list = null;
                    }
                    arrayList.add(f.i.a.a.b0.r(null, str, null, -1, 0, m2, i2, null, RecyclerView.FOREVER_NS, list));
                }
            }
            uVar.A(p2);
            arrayList = arrayList;
        }
        return arrayList;
    }

    public final boolean d(int i2) {
        return (i2 & this.a) != 0;
    }

    public g(int i2) {
        List<f.i.a.a.b0> singletonList = Collections.singletonList(f.i.a.a.b0.q(null, "application/cea-608", 0, null, null));
        this.a = i2;
        this.b = singletonList;
    }
}
