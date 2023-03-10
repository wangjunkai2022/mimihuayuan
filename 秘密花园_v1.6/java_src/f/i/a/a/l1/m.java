package f.i.a.a.l1;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* compiled from: DataSource.java */
/* loaded from: classes.dex */
public interface m {

    /* compiled from: DataSource.java */
    /* loaded from: classes.dex */
    public interface a {
        m createDataSource();
    }

    Map<String, List<String>> a();

    long b(p pVar) throws IOException;

    void c(i0 i0Var);

    void close() throws IOException;

    @Nullable
    Uri d();

    int read(byte[] bArr, int i2, int i3) throws IOException;
}
