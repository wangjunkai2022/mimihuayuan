package f.i.b;

import f.i.b.e0.a;
import f.i.b.e0.b;
import f.i.b.e0.c;
import java.io.IOException;

/* compiled from: TypeAdapter.java */
/* loaded from: classes.dex */
public class y extends z<T> {
    public final /* synthetic */ z a;

    public y(z zVar) {
        this.a = zVar;
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [T, java.lang.Object] */
    @Override // f.i.b.z
    public T a(a aVar) throws IOException {
        if (aVar.V() != b.NULL) {
            return this.a.a(aVar);
        }
        aVar.R();
        return null;
    }

    @Override // f.i.b.z
    public void b(c cVar, T t) throws IOException {
        if (t == 0) {
            cVar.I();
        } else {
            this.a.b(cVar, t);
        }
    }
}
