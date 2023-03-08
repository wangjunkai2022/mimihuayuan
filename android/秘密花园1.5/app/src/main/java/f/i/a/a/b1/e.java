package f.i.a.a.b1;

import f.i.a.a.b1.x.b0;
import f.i.a.a.b1.x.u;
import f.i.a.a.m1.e0;
import java.lang.reflect.Constructor;
import java.util.Collections;

/* compiled from: DefaultExtractorsFactory.java */
/* loaded from: classes.dex */
public final class e implements i {

    /* renamed from: c  reason: collision with root package name */
    public static final Constructor<? extends g> f4121c;
    public int a;
    public int b = 1;

    static {
        Constructor<? extends g> constructor;
        try {
            constructor = Class.forName("com.google.android.exoplayer2.ext.flac.FlacExtractor").asSubclass(g.class).getConstructor(new Class[0]);
        } catch (ClassNotFoundException unused) {
            constructor = null;
        } catch (Exception e2) {
            throw new RuntimeException("Error instantiating FLAC extension", e2);
        }
        f4121c = constructor;
    }

    @Override // f.i.a.a.b1.i
    public synchronized g[] a() {
        g[] gVarArr;
        gVarArr = new g[f4121c == null ? 13 : 14];
        gVarArr[0] = new f.i.a.a.b1.s.d(0);
        gVarArr[1] = new f.i.a.a.b1.u.d(0, null, null, null, Collections.emptyList(), null);
        gVarArr[2] = new f.i.a.a.b1.u.g(this.a);
        gVarArr[3] = new f.i.a.a.b1.t.d(0, -9223372036854775807L);
        gVarArr[4] = new f.i.a.a.b1.x.e(0L, 0);
        gVarArr[5] = new f.i.a.a.b1.x.a();
        gVarArr[6] = new b0(this.b, new e0(0L), new f.i.a.a.b1.x.g(0));
        gVarArr[7] = new f.i.a.a.b1.r.b();
        gVarArr[8] = new f.i.a.a.b1.v.c();
        gVarArr[9] = new u();
        gVarArr[10] = new f.i.a.a.b1.y.a();
        gVarArr[11] = new f.i.a.a.b1.q.a(0);
        gVarArr[12] = new f.i.a.a.b1.x.c();
        if (f4121c != null) {
            try {
                gVarArr[13] = f4121c.newInstance(new Object[0]);
            } catch (Exception e2) {
                throw new IllegalStateException("Unexpected error creating FLAC extractor", e2);
            }
        }
        return gVarArr;
    }
}
