package f.d.a.o.m;

import androidx.annotation.NonNull;
import f.d.a.o.m.e;
import f.d.a.o.n.b0.b;
import f.d.a.o.p.c.v;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: InputStreamRewinder.java */
/* loaded from: classes.dex */
public final class k implements e<InputStream> {
    public final v a;

    /* compiled from: InputStreamRewinder.java */
    /* loaded from: classes.dex */
    public static final class a implements e.a<InputStream> {
        public final b a;

        public a(b bVar) {
            this.a = bVar;
        }

        @Override // f.d.a.o.m.e.a
        @NonNull
        public Class<InputStream> a() {
            return InputStream.class;
        }

        /* Return type fixed from 'f.d.a.o.m.e' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // f.d.a.o.m.e.a
        @NonNull
        public e<InputStream> b(InputStream inputStream) {
            return new k(inputStream, this.a);
        }
    }

    public k(InputStream inputStream, b bVar) {
        v vVar = new v(inputStream, bVar);
        this.a = vVar;
        vVar.mark(5242880);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // f.d.a.o.m.e
    @NonNull
    public InputStream a() throws IOException {
        this.a.reset();
        return this.a;
    }

    @Override // f.d.a.o.m.e
    public void b() {
        this.a.e();
    }
}
