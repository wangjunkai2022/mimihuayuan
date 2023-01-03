package g.a.f1;

import io.realm.exceptions.RealmException;
import java.lang.reflect.InvocationTargetException;

/* compiled from: ObjectServerFacade.java */
/* loaded from: classes.dex */
public class j {
    public static final j a = new j();
    public static j b;

    static {
        try {
            b = (j) Class.forName("io.realm.internal.SyncObjectServerFacade").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (ClassNotFoundException unused) {
        } catch (IllegalAccessException e2) {
            throw new RealmException("Failed to init SyncObjectServerFacade", e2);
        } catch (InstantiationException e3) {
            throw new RealmException("Failed to init SyncObjectServerFacade", e3);
        } catch (NoSuchMethodException e4) {
            throw new RealmException("Failed to init SyncObjectServerFacade", e4);
        } catch (InvocationTargetException e5) {
            throw new RealmException("Failed to init SyncObjectServerFacade", e5.getTargetException());
        }
    }

    public static j a(boolean z) {
        if (z) {
            return b;
        }
        return a;
    }

    public static j b() {
        j jVar = b;
        if (jVar != null) {
            return jVar;
        }
        return a;
    }
}
