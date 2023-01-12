package f.i.a.a.z0;

import android.annotation.TargetApi;
import android.os.Looper;
import androidx.annotation.Nullable;
import f.i.a.a.q;
import f.i.a.a.z0.e;
import f.i.a.a.z0.j;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/* compiled from: DefaultDrmSessionManager.java */
@TargetApi(18)
/* loaded from: classes.dex */
public class d<T extends j> implements g<T> {
    @Nullable
    public Looper a;

    public static List<e.b> a(e eVar, UUID uuid, boolean z) {
        ArrayList arrayList = new ArrayList(eVar.f6072d);
        for (int i2 = 0; i2 < eVar.f6072d; i2++) {
            e.b bVar = eVar.a[i2];
            if ((bVar.b(null) || (q.f5841c.equals(null) && bVar.b(q.b))) && (bVar.f6075e != null || z)) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    public void b(f<T> fVar) {
        if (fVar instanceof h) {
            return;
        }
        b bVar = (b) fVar;
        boolean z = true;
        int i2 = bVar.f6063e - 1;
        bVar.f6063e = i2;
        if (i2 == 0) {
            bVar.f6062d = 0;
            bVar.f6061c.removeCallbacksAndMessages(null);
            bVar.f6065g.removeCallbacksAndMessages(null);
            bVar.f6065g = null;
            bVar.f6064f.quit();
            bVar.f6064f = null;
            bVar.f6066h = null;
            bVar.f6067i = null;
            bVar.f6069k = null;
            bVar.f6070l = null;
            byte[] bArr = bVar.f6068j;
            if (bArr != null) {
                bVar.a.a(bArr);
                bVar.f6068j = null;
                bVar.b.b(a.a);
            }
        } else {
            z = false;
        }
        if (z) {
            throw null;
        }
    }
}
