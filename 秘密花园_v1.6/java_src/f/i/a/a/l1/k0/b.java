package f.i.a.a.l1.k0;

import androidx.annotation.Nullable;
import java.io.File;
import java.io.IOException;
import java.util.NavigableSet;
/* compiled from: Cache.java */
/* loaded from: classes.dex */
public interface b {

    /* compiled from: Cache.java */
    /* loaded from: classes.dex */
    public static class a extends IOException {
        public a(String str) {
            super(str);
        }

        public a(Throwable th) {
            super(th);
        }

        public a(String str, Throwable th) {
            super(str, th);
        }
    }

    /* compiled from: Cache.java */
    /* renamed from: f.i.a.a.l1.k0.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0088b {
        void a(b bVar, k kVar);

        void b(b bVar, k kVar, k kVar2);

        void c(b bVar, k kVar);
    }

    File a(String str, long j2, long j3) throws a;

    void b(File file, long j2) throws a;

    p c(String str);

    void d(String str, q qVar) throws a;

    void e(k kVar) throws a;

    long f();

    k g(String str, long j2) throws InterruptedException, a;

    void h(k kVar);

    @Nullable
    k i(String str, long j2) throws a;

    NavigableSet<k> j(String str);

    long k(String str, long j2, long j3);
}
