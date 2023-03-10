package f.i.a.a.l1;

import android.net.Uri;
import androidx.annotation.Nullable;
import f.i.a.a.l1.m;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* compiled from: DummyDataSource.java */
/* loaded from: classes.dex */
public final class x implements m {
    public static final m.a a = a.a;

    @Override // f.i.a.a.l1.m
    public /* synthetic */ Map<String, List<String>> a() {
        return l.a(this);
    }

    @Override // f.i.a.a.l1.m
    public long b(p pVar) throws IOException {
        throw new IOException("Dummy source");
    }

    @Override // f.i.a.a.l1.m
    public void c(i0 i0Var) {
    }

    @Override // f.i.a.a.l1.m
    public void close() throws IOException {
    }

    @Override // f.i.a.a.l1.m
    @Nullable
    public Uri d() {
        return null;
    }

    @Override // f.i.a.a.l1.m
    public int read(byte[] bArr, int i2, int i3) throws IOException {
        throw new UnsupportedOperationException();
    }
}
