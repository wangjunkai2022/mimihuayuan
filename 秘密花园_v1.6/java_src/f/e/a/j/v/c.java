package f.e.a.j.v;

import com.comeback.data.ui.jav.VideoDetailActivity;
import f.e.a.e;
import i.i0;
import java.io.IOException;
import l.d;
import l.f;
import l.g0;
/* compiled from: VideoDetailActivity.java */
/* loaded from: classes.dex */
public class c implements f<i0> {
    public final /* synthetic */ VideoDetailActivity a;

    public c(VideoDetailActivity videoDetailActivity) {
        this.a = videoDetailActivity;
    }

    @Override // l.f
    public void a(d<i0> dVar, g0<i0> g0Var) {
        if (g0Var.a.f6533e > 300) {
            e.a("BFJTRA4BS1wB");
            f.e.a.k.f.a();
            return;
        }
        try {
            String H = g0Var.b.H();
            this.a.f1286d = f.e.a.j.v.e.a.c(H);
            VideoDetailActivity.l(this.a);
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    @Override // l.f
    public void b(d<i0> dVar, Throwable th) {
        e.a("aD08ARkBVkFJ");
        th.getMessage();
        f.e.a.k.f.b();
    }
}
