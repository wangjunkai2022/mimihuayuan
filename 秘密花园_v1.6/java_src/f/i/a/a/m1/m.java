package f.i.a.a.m1;

import android.os.Handler;
import f.i.a.a.m1.m;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: EventDispatcher.java */
/* loaded from: classes.dex */
public final class m<T> {
    public final CopyOnWriteArrayList<b<T>> a = new CopyOnWriteArrayList<>();

    /* compiled from: EventDispatcher.java */
    /* loaded from: classes.dex */
    public interface a<T> {
        void a(T t);
    }

    /* compiled from: EventDispatcher.java */
    /* loaded from: classes.dex */
    public static final class b<T> {
        public final Handler a;
        public final T b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f5765c;

        public b(Handler handler, T t) {
            this.a = handler;
            this.b = t;
        }

        public /* synthetic */ void a(a aVar) {
            if (this.f5765c) {
                return;
            }
            aVar.a(this.b);
        }
    }

    public void a(Handler handler, T t) {
        c.a.a.b.g.h.m((handler == null || t == null) ? false : true);
        c(t);
        this.a.add(new b<>(handler, t));
    }

    public void b(final a<T> aVar) {
        Iterator<b<T>> it = this.a.iterator();
        while (it.hasNext()) {
            final b<T> next = it.next();
            next.a.post(new Runnable() { // from class: f.i.a.a.m1.a
                @Override // java.lang.Runnable
                public final void run() {
                    m.b.this.a(aVar);
                }
            });
        }
    }

    public void c(T t) {
        Iterator<b<T>> it = this.a.iterator();
        while (it.hasNext()) {
            b<T> next = it.next();
            if (next.b == t) {
                next.f5765c = true;
                this.a.remove(next);
            }
        }
    }
}
