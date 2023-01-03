package f.i.a.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import f.i.a.a.h1.e0;
import f.i.a.a.l0;
import f.i.a.a.o;

/* compiled from: ExoPlayerImpl.java */
/* loaded from: classes.dex */
public class x extends Handler {
    public final /* synthetic */ y a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(y yVar, Looper looper) {
        super(looper);
        this.a = yVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        y yVar = this.a;
        if (yVar != null) {
            int i2 = message.what;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 == 2) {
                        final w wVar = (w) message.obj;
                        yVar.s = wVar;
                        yVar.O(new o.b() { // from class: f.i.a.a.l
                            @Override // f.i.a.a.o.b
                            public final void a(l0.b bVar) {
                                bVar.onPlayerError(w.this);
                            }
                        });
                        return;
                    }
                    throw new IllegalStateException();
                }
                final j0 j0Var = (j0) message.obj;
                if (yVar.r.equals(j0Var)) {
                    return;
                }
                yVar.r = j0Var;
                yVar.O(new o.b() { // from class: f.i.a.a.e
                    @Override // f.i.a.a.o.b
                    public final void a(l0.b bVar) {
                        bVar.onPlaybackParametersChanged(j0.this);
                    }
                });
                return;
            }
            i0 i0Var = (i0) message.obj;
            int i3 = message.arg1;
            boolean z = message.arg2 != -1;
            int i4 = message.arg2;
            int i5 = yVar.o - i3;
            yVar.o = i5;
            if (i5 == 0) {
                if (i0Var.f5212d == -9223372036854775807L) {
                    e0.a aVar = i0Var.f5211c;
                    i0Var = new i0(i0Var.a, i0Var.b, aVar, 0L, aVar.b() ? i0Var.f5213e : -9223372036854775807L, i0Var.f5214f, i0Var.f5215g, i0Var.f5216h, i0Var.f5217i, aVar, 0L, 0L, 0L);
                }
                if (!yVar.t.a.q() && i0Var.a.q()) {
                    yVar.v = 0;
                    yVar.u = 0;
                    yVar.w = 0L;
                }
                int i6 = yVar.p ? 0 : 2;
                boolean z2 = yVar.q;
                yVar.p = false;
                yVar.q = false;
                yVar.U(i0Var, z, i4, i6, z2);
                return;
            }
            return;
        }
        throw null;
    }
}
