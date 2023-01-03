package f.i.b;

import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLongArray;

/* compiled from: Gson.java */
/* loaded from: classes.dex */
public final class i extends z<AtomicLongArray> {
    public final /* synthetic */ z a;

    public i(z zVar) {
        this.a = zVar;
    }

    @Override // f.i.b.z
    public AtomicLongArray a(f.i.b.e0.a aVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        aVar.d();
        while (aVar.I()) {
            arrayList.add(Long.valueOf(((Number) this.a.a(aVar)).longValue()));
        }
        aVar.E();
        int size = arrayList.size();
        AtomicLongArray atomicLongArray = new AtomicLongArray(size);
        for (int i2 = 0; i2 < size; i2++) {
            atomicLongArray.set(i2, ((Long) arrayList.get(i2)).longValue());
        }
        return atomicLongArray;
    }

    @Override // f.i.b.z
    public void b(f.i.b.e0.c cVar, AtomicLongArray atomicLongArray) throws IOException {
        AtomicLongArray atomicLongArray2 = atomicLongArray;
        cVar.e();
        int length = atomicLongArray2.length();
        for (int i2 = 0; i2 < length; i2++) {
            this.a.b(cVar, Long.valueOf(atomicLongArray2.get(i2)));
        }
        cVar.E();
    }
}
