package g.a;

import io.realm.internal.OsObjectStore;
import io.realm.internal.OsSharedRealm;
/* compiled from: DynamicRealm.java */
/* loaded from: classes.dex */
public class i extends g.a.a {

    /* renamed from: j  reason: collision with root package name */
    public final k0 f6353j;

    /* compiled from: DynamicRealm.java */
    /* loaded from: classes.dex */
    public class a {
        public final /* synthetic */ z a;

        public a(z zVar) {
            this.a = zVar;
        }

        public void a(int i2) {
            if (i2 <= 0 && !this.a.f6406c.f6291m && OsObjectStore.nativeGetSchemaVersion(i.this.f6275d.getNativePtr()) == -1) {
                i.this.f6275d.beginTransaction();
                if (OsObjectStore.nativeGetSchemaVersion(i.this.f6275d.getNativePtr()) == -1) {
                    OsObjectStore.nativeSetSchemaVersion(i.this.f6275d.getNativePtr(), -1L);
                }
                i.this.f6275d.commitTransaction();
            }
        }
    }

    public i(z zVar) {
        super(zVar, null);
        b0 b0Var = zVar.f6406c;
        a aVar = new a(zVar);
        synchronized (z.f6404e) {
            z d2 = z.d(b0Var.f6281c, false);
            if (d2 == null) {
                aVar.a(0);
            } else {
                synchronized (d2) {
                    aVar.a(d2.e());
                }
            }
        }
        this.f6353j = new q(this);
    }

    @Override // g.a.a
    public k0 G() {
        return this.f6353j;
    }

    public i(OsSharedRealm osSharedRealm) {
        super(osSharedRealm);
        this.f6353j = new q(this);
    }
}
