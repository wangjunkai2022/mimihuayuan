package f.i.a.a.l1;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* compiled from: TeeDataSource.java */
/* loaded from: classes.dex */
public final class h0 implements m {
    public final m a;
    public final k b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f5517c;

    /* renamed from: d  reason: collision with root package name */
    public long f5518d;

    public h0(m mVar, k kVar) {
        if (mVar != null) {
            this.a = mVar;
            this.b = kVar;
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
        long b = this.a.b(pVar);
        this.f5518d = b;
        if (b == 0) {
            return 0L;
        }
        if (pVar.f5606f == -1 && b != -1) {
            pVar = pVar.d(0L, b);
        }
        this.f5517c = true;
        this.b.b(pVar);
        return this.f5518d;
    }

    @Override // f.i.a.a.l1.m
    public void c(i0 i0Var) {
        this.a.c(i0Var);
    }

    @Override // f.i.a.a.l1.m
    public void close() throws IOException {
        try {
            this.a.close();
        } finally {
            if (this.f5517c) {
                this.f5517c = false;
                this.b.close();
            }
        }
    }

    @Override // f.i.a.a.l1.m
    @Nullable
    public Uri d() {
        return this.a.d();
    }

    @Override // f.i.a.a.l1.m
    public int read(byte[] bArr, int i2, int i3) throws IOException {
        if (this.f5518d == 0) {
            return -1;
        }
        int read = this.a.read(bArr, i2, i3);
        if (read > 0) {
            this.b.a(bArr, i2, read);
            long j2 = this.f5518d;
            if (j2 != -1) {
                this.f5518d = j2 - read;
            }
        }
        return read;
    }
}
