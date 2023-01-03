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
        ArrayList arrayList = new ArrayList(eVar.f5997d);
        for (int i2 = 0; i2 < eVar.f5997d; i2++) {
            e.b bVar = eVar.a[i2];
            if ((bVar.b(null) || (q.f5766c.equals(null) && bVar.b(q.b))) && (bVar.f6000e != null || z)) {
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
        int i2 = bVar.f5988e - 1;
        bVar.f5988e = i2;
        if (i2 == 0) {
            bVar.f5987d = 0;
            bVar.f5986c.removeCallbacksAndMessages(null);
            bVar.f5990g.removeCallbacksAndMessages(null);
            bVar.f5990g = null;
            bVar.f5989f.quit();
            bVar.f5989f = null;
            bVar.f5991h = null;
            bVar.f5992i = null;
            bVar.f5994k = null;
            bVar.f5995l = null;
            byte[] bArr = bVar.f5993j;
            if (bArr != null) {
                bVar.a.a(bArr);
                bVar.f5993j = null;
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
