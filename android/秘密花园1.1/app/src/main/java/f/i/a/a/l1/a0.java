package f.i.a.a.l1;

import androidx.annotation.Nullable;
import f.i.a.a.l1.m;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: HttpDataSource.java */
/* loaded from: classes.dex */
public interface a0 extends m {

    /* compiled from: HttpDataSource.java */
    /* loaded from: classes.dex */
    public static abstract class a implements b {
        public final f a = new f();

        public abstract a0 a(f fVar);

        @Override // f.i.a.a.l1.m.a
        public m createDataSource() {
            return a(this.a);
        }
    }

    /* compiled from: HttpDataSource.java */
    /* loaded from: classes.dex */
    public interface b extends m.a {
    }

    /* compiled from: HttpDataSource.java */
    /* loaded from: classes.dex */
    public static class c extends IOException {
        public c(String str, p pVar, int i2) {
            super(str);
        }

        public c(IOException iOException, p pVar, int i2) {
            super(iOException);
        }

        public c(String str, IOException iOException, p pVar, int i2) {
            super(str, iOException);
        }
    }

    /* compiled from: HttpDataSource.java */
    /* loaded from: classes.dex */
    public static final class d extends c {
        public d(String str, p pVar) {
            super(f.b.a.a.a.f("Invalid content type: ", str), pVar, 1);
        }
    }

    /* compiled from: HttpDataSource.java */
    /* loaded from: classes.dex */
    public static final class e extends c {
        public final int a;

        public e(int i2, @Nullable String str, Map<String, List<String>> map, p pVar) {
            super(f.b.a.a.a.J("Response code: ", i2), pVar, 1);
            this.a = i2;
        }
    }

    /* compiled from: HttpDataSource.java */
    /* loaded from: classes.dex */
    public static final class f {
        public final Map<String, String> a = new HashMap();
        public Map<String, String> b;

        public synchronized Map<String, String> a() {
            if (this.b == null) {
                this.b = Collections.unmodifiableMap(new HashMap(this.a));
            }
            return this.b;
        }
    }
}
