package i;

import i.d0;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.ExecutorService;
/* compiled from: Dispatcher.kt */
/* loaded from: classes.dex */
public final class q {

    /* renamed from: c  reason: collision with root package name */
    public ExecutorService f6843c;
    public int a = 64;
    public int b = 5;

    /* renamed from: d  reason: collision with root package name */
    public final ArrayDeque<d0.a> f6844d = new ArrayDeque<>();

    /* renamed from: e  reason: collision with root package name */
    public final ArrayDeque<d0.a> f6845e = new ArrayDeque<>();

    /* renamed from: f  reason: collision with root package name */
    public final ArrayDeque<d0> f6846f = new ArrayDeque<>();

    public final <T> void a(Deque<T> deque, T t) {
        synchronized (this) {
            if (!deque.remove(t)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        c();
    }

    public final void b(d0.a aVar) {
        aVar.a.decrementAndGet();
        a(this.f6845e, aVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean c() {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: i.q.c():boolean");
    }
}
