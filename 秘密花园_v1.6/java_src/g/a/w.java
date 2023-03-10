package g.a;

import g.a.x;
import io.realm.exceptions.RealmException;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.RealmNotifier;
/* compiled from: Realm.java */
/* loaded from: classes.dex */
public class w implements Runnable {
    public final /* synthetic */ b0 a;
    public final /* synthetic */ x.a b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ boolean f6394c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ x.a.b f6395d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ RealmNotifier f6396e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ x.a.InterfaceC0101a f6397f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ x f6398g;

    /* compiled from: Realm.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        public final /* synthetic */ OsSharedRealm.a a;

        /* compiled from: Realm.java */
        /* renamed from: g.a.w$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class RunnableC0100a implements Runnable {
            public RunnableC0100a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                w.this.f6395d.a();
            }
        }

        public a(OsSharedRealm.a aVar) {
            this.a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (w.this.f6398g.H()) {
                w.this.f6395d.a();
            } else if (w.this.f6398g.f6275d.getVersionID().compareTo(this.a) < 0) {
                w.this.f6398g.f6275d.realmNotifier.addTransactionCallback(new RunnableC0100a());
            } else {
                w.this.f6395d.a();
            }
        }
    }

    /* compiled from: Realm.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        public final /* synthetic */ Throwable a;

        public b(Throwable th) {
            this.a = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            x.a.InterfaceC0101a interfaceC0101a = w.this.f6397f;
            if (interfaceC0101a != null) {
                interfaceC0101a.a(this.a);
                return;
            }
            throw new RealmException("Async transaction failed", this.a);
        }
    }

    public w(x xVar, b0 b0Var, x.a aVar, boolean z, x.a.b bVar, RealmNotifier realmNotifier, x.a.InterfaceC0101a interfaceC0101a) {
        this.f6398g = xVar;
        this.a = b0Var;
        this.b = aVar;
        this.f6394c = z;
        this.f6395d = bVar;
        this.f6396e = realmNotifier;
        this.f6397f = interfaceC0101a;
    }

    @Override // java.lang.Runnable
    public void run() {
        OsSharedRealm.a aVar;
        if (Thread.currentThread().isInterrupted()) {
            return;
        }
        b0 b0Var = this.a;
        if (b0Var != null) {
            x xVar = (x) z.b(b0Var, x.class);
            xVar.d();
            Throwable th = null;
            try {
                this.b.a(xVar);
            } catch (Throwable th2) {
                try {
                    if (xVar.I()) {
                        xVar.e();
                    }
                    xVar.close();
                    aVar = null;
                    th = th2;
                } finally {
                }
            }
            if (Thread.currentThread().isInterrupted()) {
                try {
                    if (xVar.I()) {
                        xVar.e();
                    }
                    return;
                } finally {
                }
            }
            xVar.g();
            aVar = xVar.f6275d.getVersionID();
            try {
                if (xVar.I()) {
                    xVar.e();
                }
                if (!this.f6394c) {
                    if (th != null) {
                        throw new RealmException("Async transaction failed", th);
                    }
                    return;
                } else if (aVar != null && this.f6395d != null) {
                    this.f6396e.post(new a(aVar));
                    return;
                } else if (th != null) {
                    this.f6396e.post(new b(th));
                    return;
                } else {
                    return;
                }
            } finally {
            }
        }
        throw new IllegalArgumentException("A non-null RealmConfiguration must be provided");
    }
}
