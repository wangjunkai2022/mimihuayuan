package g.a;

import io.realm.internal.OsList;

/* compiled from: RealmList.java */
/* loaded from: classes.dex */
public abstract class o<T> {
    public final a a;
    public final OsList b;

    /* renamed from: c  reason: collision with root package name */
    public final Class<T> f6295c;

    public o(a aVar, OsList osList, Class<T> cls) {
        this.a = aVar;
        this.f6295c = cls;
        this.b = osList;
    }

    public abstract void a(Object obj);

    public abstract void b(Object obj);

    public abstract T c(int i2);

    public void d(int i2) {
        OsList.nativeInsertNull(this.b.a, (long) i2);
    }

    public abstract void e(int i2, Object obj);

    public void f(int i2) {
        OsList.nativeSetNull(this.b.a, (long) i2);
    }

    public abstract void g(int i2, Object obj);
}
