package i.m0.g;

import java.io.IOException;
import java.util.List;
/* compiled from: PushObserver.kt */
/* loaded from: classes.dex */
public interface q {
    public static final q a = new q() { // from class: i.m0.g.p$a
        @Override // i.m0.g.q
        public boolean a(int i2, List<c> list) {
            if (list != null) {
                return true;
            }
            h.o.c.g.f("requestHeaders");
            throw null;
        }

        @Override // i.m0.g.q
        public boolean b(int i2, List<c> list, boolean z) {
            if (list != null) {
                return true;
            }
            h.o.c.g.f("responseHeaders");
            throw null;
        }

        @Override // i.m0.g.q
        public void c(int i2, b bVar) {
            if (bVar != null) {
                return;
            }
            h.o.c.g.f("errorCode");
            throw null;
        }

        @Override // i.m0.g.q
        public boolean d(int i2, j.j jVar, int i3, boolean z) throws IOException {
            if (jVar != null) {
                jVar.skip(i3);
                return true;
            }
            h.o.c.g.f("source");
            throw null;
        }
    };

    boolean a(int i2, List<c> list);

    boolean b(int i2, List<c> list, boolean z);

    void c(int i2, b bVar);

    boolean d(int i2, j.j jVar, int i3, boolean z) throws IOException;
}
