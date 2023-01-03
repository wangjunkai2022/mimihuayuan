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
    public final /* synthetic */ boolean f6310c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ x.a.b f6311d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ RealmNotifier f6312e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ x.a.AbstractC0094a f6313f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ x f6314g;

    /* compiled from: Realm.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        public final /* synthetic */ OsSharedRealm.a a;

        /* compiled from: Realm.java */
        /* renamed from: g.a.w$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class RunnableC0093a implements Runnable {
            public RunnableC0093a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                w.this.f6311d.a();
            }
        }

        public a(OsSharedRealm.a aVar) {
            this.a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (w.this.f6314g.H()) {
                w.this.f6311d.a();
            } else if (w.this.f6314g.f6191d.getVersionID().compareTo(this.a) < 0) {
                w.this.f6314g.f6191d.realmNotifier.addTransactionCallback(new RunnableC0093a());
            } else {
                w.this.f6311d.a();
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
            x.a.AbstractC0094a aVar = w.this.f6313f;
            if (aVar != null) {
                aVar.a(this.a);
                return;
            }
            throw new RealmException("Async transaction failed", this.a);
        }
    }

    public w(x xVar, b0 b0Var, x.a aVar, boolean z, x.a.b bVar, RealmNotifier realmNotifier, x.a.AbstractC0094a aVar2) {
        this.f6314g = xVar;
        this.a = b0Var;
        this.b = aVar;
        this.f6310c = z;
        this.f6311d = bVar;
        this.f6312e = realmNotifier;
        this.f6313f = aVar2;
    }

    @Override // java.lang.Runnable
    public void run() {
        OsSharedRealm.a aVar;
        if (!Thread.currentThread().isInterrupted()) {
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
                    } catch (Throwable th3) {
                        xVar.close();
                        throw th3;
                    }
                }
                if (Thread.currentThread().isInterrupted()) {
                    try {
                        if (xVar.I()) {
                            xVar.e();
                        }
                        xVar.close();
                    } catch (Throwable th4) {
                        xVar.close();
                        throw th4;
                    }
                } else {
                    xVar.g();
                    aVar = xVar.f6191d.getVersionID();
                    try {
                        if (xVar.I()) {
                            xVar.e();
                        }
                        xVar.close();
                        if (this.f6310c) {
                            if (aVar != null && this.f6311d != null) {
                                this.f6312e.post(new a(aVar));
                            } else if (th != null) {
                                this.f6312e.post(new b(th));
                            }
                        } else if (th != null) {
                            throw new RealmException("Async transaction failed", th);
                        }
                    } catch (Throwable th5) {
                        xVar.close();
                        throw th5;
                    }
                }
            } else {
                throw new IllegalArgumentException("A non-null RealmConfiguration must be provided");
            }
        }
    }
}
