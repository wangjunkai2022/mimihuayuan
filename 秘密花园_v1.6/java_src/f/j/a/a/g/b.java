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
    public final boolean f6211c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f6212d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f6213e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f6214f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f6215g;

    b(int i2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        this.a = i2 == 1;
        this.b = i2 == 2;
        this.f6212d = z;
        this.f6213e = z2;
        this.f6214f = z3;
        this.f6211c = z4;
        this.f6215g = z5;
    }

    public b a() {
        return (!this.a || this.f6211c) ? this : values()[ordinal() + 1];
    }

    public b b() {
        return (!this.b || this.f6211c) ? this : values()[ordinal() - 1];
    }
}
