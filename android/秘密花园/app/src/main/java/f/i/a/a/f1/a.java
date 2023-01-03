package f.i.a.a.f1;

import android.view.View;
import f.i.a.a.t0;

/* compiled from: IRender.java */
/* loaded from: classes.dex */
public interface a {

    /* compiled from: IRender.java */
    /* renamed from: f.i.a.a.f1.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface AbstractC0064a {
    }

    /* compiled from: IRender.java */
    /* loaded from: classes.dex */
    public interface b {
        void a(t0 t0Var);
    }

    void a(int i2, int i3);

    void b(int i2);

    void c(int i2, int i3);

    void d(int i2);

    View getRenderView();

    int getResizeMode();

    void setPixelWidthHeightRatio(float f2);

    void setRenderCallback(AbstractC0064a aVar);

    void setVideoRotation(int i2);
}
