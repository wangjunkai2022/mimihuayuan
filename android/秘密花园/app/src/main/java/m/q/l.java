package m.q;

import java.io.PrintStream;
import m.c;
import m.e;
import m.h;
import m.k;
import m.n.a;
import m.n.b;
import m.n.c;
import m.n.d;

/* compiled from: RxJavaHooks.java */
/* loaded from: classes2.dex */
public final class l {
    public static volatile b<Throwable> a = new f();

    /* renamed from: e  reason: collision with root package name */
    public static volatile d<e, e.a, e.a> f7328e = new g();

    /* renamed from: g  reason: collision with root package name */
    public static volatile c<k, k> f7330g = new h();

    /* renamed from: f  reason: collision with root package name */
    public static volatile c<a, a> f7329f = new i();

    /* renamed from: h  reason: collision with root package name */
    public static volatile c<Throwable, Throwable> f7331h = new j();

    /* renamed from: i  reason: collision with root package name */
    public static volatile c<e.b, e.b> f7332i = new k();
    public static volatile c<e.a, e.a> b = new c();

    /* renamed from: c  reason: collision with root package name */
    public static volatile c<h.a, h.a> f7326c = new d();

    /* renamed from: d  reason: collision with root package name */
    public static volatile c<c.a, c.a> f7327d = new e();

    public static void a(Throwable th) {
        b<Throwable> bVar = a;
        if (bVar != null) {
            try {
                bVar.a(th);
                return;
            } catch (Throwable th2) {
                PrintStream printStream = System.err;
                th2.getMessage();
                th2.printStackTrace();
                Thread currentThread = Thread.currentThread();
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th2);
            }
        }
        Thread currentThread2 = Thread.currentThread();
        currentThread2.getUncaughtExceptionHandler().uncaughtException(currentThread2, th);
    }

    public static Throwable b(Throwable th) {
        m.n.c<Throwable, Throwable> cVar = f7331h;
        return cVar != null ? cVar.a(th) : th;
    }

    public static a c(a aVar) {
        m.n.c<a, a> cVar = f7329f;
        return cVar != null ? cVar.a(aVar) : aVar;
    }
}
