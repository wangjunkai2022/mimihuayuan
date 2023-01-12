package f.j.a.a.g;

/* compiled from: RefreshState.java */
/* loaded from: classes.dex */
public enum b {
    None(0, false, false, false, false, false),
    PullDownToRefresh(1, true, false, false, false, false),
    PullUpToLoad(2, true, false, false, false, false),
    PullDownCanceled(1, false, false, false, false, false),
    PullUpCanceled(2, false, false, false, false, false),
    ReleaseToRefresh(1, true, false, false, false, true),
    ReleaseToLoad(2, true, false, false, false, true),
    ReleaseToTwoLevel(1, true, false, false, true, true),
    TwoLevelReleased(1, false, false, false, true, false),
    RefreshReleased(1, false, false, false, false, false),
    LoadReleased(2, false, false, false, false, false),
    Refreshing(1, false, true, false, false, false),
    Loading(2, false, true, false, false, false),
    TwoLevel(1, false, true, false, true, false),
    RefreshFinish(1, false, false, true, false, false),
    LoadFinish(2, false, false, true, false, false),
    TwoLevelFinish(1, false, false, true, true, false);
    
    public final boolean a;
    public final boolean b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f6202c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f6203d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f6204e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f6205f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f6206g;

    b(int i2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        this.a = i2 == 1;
        this.b = i2 == 2;
        this.f6203d = z;
        this.f6204e = z2;
        this.f6205f = z3;
        this.f6202c = z4;
        this.f6206g = z5;
    }

    public b a() {
        return (!this.a || this.f6202c) ? this : values()[ordinal() + 1];
    }

    public b b() {
        return (!this.b || this.f6202c) ? this : values()[ordinal() - 1];
    }
}
