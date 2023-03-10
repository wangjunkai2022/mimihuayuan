package f.i.a.a.h1.u0;

import android.net.Uri;
import f.i.a.a.b0;
import f.i.a.a.m1.e0;
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
        public final f.i.a.a.b1.g a;
        public final boolean b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f5126c;

        public a(f.i.a.a.b1.g gVar, boolean z, boolean z2) {
            this.a = gVar;
            this.b = z;
            this.f5126c = z2;
        }
    }

    a a(f.i.a.a.b1.g gVar, Uri uri, b0 b0Var, List<b0> list, f.i.a.a.z0.e eVar, e0 e0Var, Map<String, List<String>> map, f.i.a.a.b1.d dVar) throws InterruptedException, IOException;
}
