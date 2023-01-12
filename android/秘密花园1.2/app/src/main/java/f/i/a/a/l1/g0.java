package f.i.a.a.l1;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* compiled from: StatsDataSource.java */
/* loaded from: classes.dex */
public final class g0 implements m {
    public final m a;
    public long b;

    /* renamed from: c  reason: collision with root package name */
    public Uri f5588c;

    /* renamed from: d  reason: collision with root package name */
    public Map<String, List<String>> f5589d;

    public g0(m mVar) {
        if (mVar != null) {
            this.a = mVar;
            this.f5588c = Uri.EMPTY;
            this.f5589d = Collections.emptyMap();
            return;
        }
        throw null;
    }

    @Override // f.i.a.a.l1.m
    public Map<String, List<String>> a() {
        return this.a.a();
    }

    @Override // f.i.a.a.l1.m
    public long b(p pVar) throws IOException {
        this.f5588c = pVar.a;
        this.f5589d = Collections.emptyMap();
        long b = this.a.b(pVar);
        Uri d2 = d();
        c.a.a.b.g.h.t(d2);
        this.f5588c = d2;
        this.f5589d = a();
        return b;
    }

    @Override // f.i.a.a.l1.m
    public void c(i0 i0Var) {
        this.a.c(i0Var);
    }

    @Override // f.i.a.a.l1.m
    public void close() throws IOException {
        this.a.close();
    }

    @Override // f.i.a.a.l1.m
    @Nullable
    public Uri d() {
        return this.a.d();
    }

    @Override // f.i.a.a.l1.m
    public int read(byte[] bArr, int i2, int i3) throws IOException {
        int read = this.a.read(bArr, i2, i3);
        if (read != -1) {
            this.b += read;
        }
        return read;
    }
}
