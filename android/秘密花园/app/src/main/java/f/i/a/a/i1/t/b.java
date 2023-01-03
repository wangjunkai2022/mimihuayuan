package f.i.a.a.i1.t;

import f.i.a.a.i1.c;
import f.i.a.a.i1.g;
import f.i.a.a.i1.t.e;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.u;
import java.util.ArrayList;
import java.util.Collections;

/* compiled from: Mp4WebvttDecoder.java */
/* loaded from: classes.dex */
public final class b extends c {
    public static final int p = h0.C("payl");
    public static final int q = h0.C("sttg");
    public static final int r = h0.C("vttc");
    public final u n = new u();
    public final e.b o = new e.b();

    public b() {
        super("Mp4WebvttDecoder");
    }

    @Override // f.i.a.a.i1.c
    public f.i.a.a.i1.e k(byte[] bArr, int i2, boolean z) throws g {
        u uVar = this.n;
        uVar.a = bArr;
        uVar.f5701c = i2;
        uVar.b = 0;
        ArrayList arrayList = new ArrayList();
        while (this.n.a() > 0) {
            if (this.n.a() >= 8) {
                int d2 = this.n.d();
                if (this.n.d() == r) {
                    u uVar2 = this.n;
                    e.b bVar = this.o;
                    int i3 = d2 - 8;
                    bVar.b();
                    while (i3 > 0) {
                        if (i3 >= 8) {
                            int d3 = uVar2.d();
                            int d4 = uVar2.d();
                            int i4 = d3 - 8;
                            String w = h0.w(uVar2.a, uVar2.b, i4);
                            uVar2.B(i4);
                            i3 = (i3 - 8) - i4;
                            if (d4 == q) {
                                f.c(w, bVar);
                            } else if (d4 == p) {
                                f.d(null, w.trim(), bVar, Collections.emptyList());
                            }
                        } else {
                            throw new g("Incomplete vtt cue box header found.");
                        }
                    }
                    arrayList.add(bVar.a());
                } else {
                    this.n.B(d2 - 8);
                }
            } else {
                throw new g("Incomplete Mp4Webvtt Top Level box header found.");
            }
        }
        return new c(arrayList);
    }
}
