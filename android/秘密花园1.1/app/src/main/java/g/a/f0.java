package g.a;

import androidx.appcompat.widget.ActivityChooserView;
import io.realm.DynamicRealmObject;
import io.realm.internal.OsList;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsObjectStore;
import io.realm.internal.Property;
import io.realm.internal.Util;
import java.util.HashMap;
import java.util.Locale;

/* compiled from: RealmList.java */
/* loaded from: classes.dex */
public final class f0<T> extends o<T> {

    /* renamed from: d  reason: collision with root package name */
    public final String f6226d;

    public f0(a aVar, OsList osList, Class<T> cls, String str) {
        super(aVar, osList, cls);
        this.f6226d = str;
    }

    @Override // g.a.o
    public void a(Object obj) {
        OsList osList = this.b;
        OsList.nativeAddRow(osList.a, ((g.a.f1.n) h((e0) obj)).realmGet$proxyState().f6305c.l());
    }

    @Override // g.a.o
    public void b(Object obj) {
        if (obj != null) {
            if (!(obj instanceof e0)) {
                throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.lang.String", obj.getClass().getName()));
            }
            return;
        }
        throw new IllegalArgumentException("RealmList does not accept null values.");
    }

    @Override // g.a.o
    public T c(int i2) {
        a aVar = this.a;
        Class<T> cls = this.f6295c;
        String str = this.f6226d;
        OsList osList = this.b;
        return (T) aVar.F(cls, str, osList.f6920c.m(OsList.nativeGetRow(osList.a, i2)));
    }

    @Override // g.a.o
    public void d(int i2) {
        throw new RuntimeException("Should not reach here.");
    }

    @Override // g.a.o
    public void e(int i2, Object obj) {
        long b = this.b.b();
        int i3 = b < 2147483647L ? (int) b : ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        if (i2 >= 0 && i3 >= i2) {
            OsList.nativeInsertRow(this.b.a, i2, ((g.a.f1.n) h((e0) obj)).realmGet$proxyState().f6305c.l());
            return;
        }
        StringBuilder p = f.b.a.a.a.p("Invalid index ", i2, ", size is ");
        p.append(this.b.b());
        throw new IndexOutOfBoundsException(p.toString());
    }

    @Override // g.a.o
    public void f(int i2) {
        throw new RuntimeException("Should not reach here.");
    }

    @Override // g.a.o
    public void g(int i2, Object obj) {
        OsList osList = this.b;
        OsList.nativeSetRow(osList.a, i2, ((g.a.f1.n) h((e0) obj)).realmGet$proxyState().f6305c.l());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <E extends e0> E h(E e2) {
        if (e2 instanceof g.a.f1.n) {
            g.a.f1.n nVar = (g.a.f1.n) e2;
            if (nVar instanceof DynamicRealmObject) {
                String str = this.f6226d;
                a aVar = nVar.realmGet$proxyState().f6307e;
                a aVar2 = this.a;
                if (aVar == aVar2) {
                    String type = ((DynamicRealmObject) e2).getType();
                    if (str.equals(type)) {
                        return e2;
                    }
                    throw new IllegalArgumentException(String.format(Locale.US, "The object has a different type from list's. Type of the list is '%s', type of object is '%s'.", str, type));
                } else if (aVar2.a == nVar.realmGet$proxyState().f6307e.a) {
                    throw new IllegalArgumentException("Cannot copy DynamicRealmObject between Realm instances.");
                } else {
                    throw new IllegalStateException("Cannot copy an object to a Realm instance created in another thread.");
                }
            } else if (nVar.realmGet$proxyState().f6305c != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(this.a.b.f6197c)) {
                if (this.a == nVar.realmGet$proxyState().f6307e) {
                    return e2;
                }
                throw new IllegalArgumentException("Cannot copy an object from another Realm instance.");
            }
        }
        x xVar = (x) this.a;
        if (OsObjectStore.a(xVar.f6191d, xVar.b.f6204j.g(e2.getClass())) != null) {
            m[] mVarArr = new m[0];
            xVar.J(e2);
            Class<?> cls = e2.getClass();
            OsObjectSchemaInfo a = xVar.f6191d.getSchemaInfo().a(xVar.b.f6204j.g(cls));
            if ((OsObjectSchemaInfo.nativeGetPrimaryKeyProperty(a.a) == 0 ? null : new Property(OsObjectSchemaInfo.nativeGetPrimaryKeyProperty(a.a))) != null) {
                return (E) xVar.K(e2, true, new HashMap(), Util.b(mVarArr));
            }
            StringBuilder o = f.b.a.a.a.o("A RealmObject with no @PrimaryKey cannot be updated: ");
            o.append(cls.toString());
            throw new IllegalArgumentException(o.toString());
        }
        return (E) xVar.L(e2, new m[0]);
    }
}
