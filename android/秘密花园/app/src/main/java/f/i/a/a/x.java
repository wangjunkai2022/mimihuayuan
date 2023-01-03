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

    /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
    public x(y yVar, Looper looper) {
        super(looper);
        this.a = yVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        y yVar = this.a;
        if (yVar != null) {
            int i2 = message.what;
            boolean z = true;
            int i3 = 2;
            if (i2 == 0) {
                i0 i0Var = (i0) message.obj;
                int i4 = message.arg1;
                if (message.arg2 == -1) {
                    z = false;
                }
                int i5 = message.arg2;
                int i6 = yVar.o - i4;
                yVar.o = i6;
                if (i6 == 0) {
                    if (i0Var.f5212d == -9223372036854775807L) {
                        e0.a aVar = i0Var.f5211c;
                        i0Var = new i0(i0Var.a, i0Var.b, aVar, 0, aVar.b() ? i0Var.f5213e : -9223372036854775807L, i0Var.f5214f, i0Var.f5215g, i0Var.f5216h, i0Var.f5217i, aVar, 0, 0, 0);
                    }
                    if (!yVar.t.a.q() && i0Var.a.q()) {
                        yVar.v = 0;
                        yVar.u = 0;
                        yVar.w = 0;
                    }
                    if (yVar.p) {
                        i3 = 0;
                    }
                    boolean z2 = yVar.q;
                    yVar.p = false;
                    yVar.q = false;
                    yVar.U(i0Var, z, i5, i3, z2);
                }
            } else if (i2 == 1) {
                j0 j0Var = (j0) message.obj;
                if (!yVar.r.equals(j0Var)) {
                    yVar.r = j0Var;
                    yVar.O(new o.b() { // from class: f.i.a.a.e
                        @Override // f.i.a.a.o.b
                        public final void a(l0.b bVar) {
                            bVar.onPlaybackParametersChanged(j0.this);
                        }
                    });
                }
            } else if (i2 == 2) {
                w wVar = (w) message.obj;
                yVar.s = wVar;
                yVar.O(new o.b() { // from class: f.i.a.a.l
                    @Override // f.i.a.a.o.b
                    public final void a(l0.b bVar) {
                        bVar.onPlayerError(w.this);
                    }
                });
            } else {
                throw new IllegalStateException();
            }
        } else {
            throw null;
        }
    }
}
