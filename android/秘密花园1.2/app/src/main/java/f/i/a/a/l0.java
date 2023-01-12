package f.i.a.a;

import androidx.annotation.Nullable;

/* compiled from: Player.java */
/* loaded from: classes.dex */
public interface l0 {

    /* compiled from: Player.java */
    @Deprecated
    /* loaded from: classes.dex */
    public static abstract class a implements b {
        @Override // f.i.a.a.l0.b
        public /* synthetic */ void onLoadingChanged(boolean z) {
            m0.a(this, z);
        }

        @Override // f.i.a.a.l0.b
        public /* synthetic */ void onPlaybackParametersChanged(j0 j0Var) {
            m0.b(this, j0Var);
        }

        @Override // f.i.a.a.l0.b
        public /* synthetic */ void onPlayerError(w wVar) {
            m0.c(this, wVar);
        }

        @Override // f.i.a.a.l0.b
        public /* synthetic */ void onRepeatModeChanged(int i2) {
            m0.f(this, i2);
        }

        @Override // f.i.a.a.l0.b
        public /* synthetic */ void onSeekProcessed() {
            m0.g(this);
        }

        @Override // f.i.a.a.l0.b
        public /* synthetic */ void onShuffleModeEnabledChanged(boolean z) {
            m0.h(this, z);
        }

        @Deprecated
        public void onTimelineChanged(u0 u0Var, @Nullable Object obj) {
        }

        @Override // f.i.a.a.l0.b
        public void onTimelineChanged(u0 u0Var, @Nullable Object obj, int i2) {
            onTimelineChanged(u0Var, obj);
        }

        @Override // f.i.a.a.l0.b
        public /* synthetic */ void onTracksChanged(f.i.a.a.h1.p0 p0Var, f.i.a.a.j1.k kVar) {
            m0.j(this, p0Var, kVar);
        }
    }

    /* compiled from: Player.java */
    /* loaded from: classes.dex */
    public interface b {
        void onLoadingChanged(boolean z);

        void onPlaybackParametersChanged(j0 j0Var);

        void onPlayerError(w wVar);

        void onPlayerStateChanged(boolean z, int i2);

        void onPositionDiscontinuity(int i2);

        void onRepeatModeChanged(int i2);

        void onSeekProcessed();

        void onShuffleModeEnabledChanged(boolean z);

        void onTimelineChanged(u0 u0Var, @Nullable Object obj, int i2);

        void onTracksChanged(f.i.a.a.h1.p0 p0Var, f.i.a.a.j1.k kVar);
    }

    /* compiled from: Player.java */
    /* loaded from: classes.dex */
    public interface c {
    }

    /* compiled from: Player.java */
    /* loaded from: classes.dex */
    public interface d {
    }

    f.i.a.a.j1.k A();

    int B(int i2);

    long C();

    @Nullable
    c D();

    j0 e();

    void f(boolean z);

    @Nullable
    d g();

    boolean h();

    long i();

    long j();

    void k(int i2, long j2);

    long l();

    boolean m();

    void n(boolean z);

    int o();

    int p();

    void q(int i2);

    void r(b bVar);

    int s();

    f.i.a.a.h1.p0 t();

    int u();

    long v();

    u0 w();

    boolean x();

    void y(b bVar);

    int z();
}
