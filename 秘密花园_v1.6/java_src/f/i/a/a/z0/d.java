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
        ArrayList arrayList = new ArrayList(eVar.f6081d);
        for (int i2 = 0; i2 < eVar.f6081d; i2++) {
            e.b bVar = eVar.a[i2];
            if ((bVar.b(null) || (q.f5850c.equals(null) && bVar.b(q.b))) && (bVar.f6084e != null || z)) {
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
        int i2 = bVar.f6072e - 1;
        bVar.f6072e = i2;
        if (i2 == 0) {
            bVar.f6071d = 0;
            bVar.f6070c.removeCallbacksAndMessages(null);
            bVar.f6074g.removeCallbacksAndMessages(null);
            bVar.f6074g = null;
            bVar.f6073f.quit();
            bVar.f6073f = null;
            bVar.f6075h = null;
            bVar.f6076i = null;
            bVar.f6078k = null;
            bVar.f6079l = null;
            byte[] bArr = bVar.f6077j;
            if (bArr != null) {
                bVar.a.a(bArr);
                bVar.f6077j = null;
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
