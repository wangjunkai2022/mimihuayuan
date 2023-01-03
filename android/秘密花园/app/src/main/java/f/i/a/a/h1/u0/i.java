package f.i.a.a.h1.u0;

import android.net.Uri;
import f.i.a.a.b0;
import f.i.a.a.b1.d;
import f.i.a.a.b1.g;
import f.i.a.a.m1.e0;
import f.i.a.a.z0.e;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* compiled from: HlsExtractorFactory.java */
/* loaded from: classes.dex */
public interface i {
    public static final i a = new f();

    /* compiled from: HlsExtractorFactory.java */
    /* loaded from: classes.dex */
    public static final class a {
        public final g a;
        public final boolean b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f5042c;

        public a(g gVar, boolean z, boolean z2) {
            this.a = gVar;
            this.b = z;
            this.f5042c = z2;
        }
    }

    a a(g gVar, Uri uri, b0 b0Var, List<b0> list, e eVar, e0 e0Var, Map<String, List<String>> map, d dVar) throws InterruptedException, IOException;
}
