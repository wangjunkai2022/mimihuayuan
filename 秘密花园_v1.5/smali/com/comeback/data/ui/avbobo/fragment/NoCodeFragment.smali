.class public Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;
.super Lcom/comeback/data/base/BaseRefreshFragment;
.source "NoCodeFragment.java"


# instance fields
.field public i:[[Ljava/lang/String;

.field public j:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

.field public tab1:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tab2:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tab3:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tab4:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshFragment;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [[Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "BVdUVVwVCVBEUgVUTQwFX1IBVlIOEVoFQ1QMAktSAlo="

    .line 2
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "AFMGAA8SXQdFUQUESF5XUwJXB1ZZSgxSQwcCVRoPVls="

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    aput-object v3, v1, v5

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const-string v7, "UlQBVwlFWlYSAwFUSQtWUgVSUFJTEFhQFVcDVRlaVFM="

    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const-string v7, "BlpaAA5AWwNBAgdRTgtaWgYGVAJcEAsHQVVXVUpbAV0="

    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const-string v7, "BFpaU1kQWgMVXgBUSFhTWg5aU1BSRgxVRlZVUxoIUgo="

    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    aput-object v4, v1, v6

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string v7, "VFdUB1pKDQcQVgVRSFhQX1QGVQUJEA0HSwQHXxxTB1o="

    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const-string v7, "BwNUAV1EC1EVBwUBHA5RDgRUUVYIRA5XQ1BSU0xZWl8="

    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const-string v7, "VFsGAgoRWwdEAlUCT14CXg9UBlBZQApXEl9WBklaB1M="

    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    const-string v7, "UwdSXAoVCVZDBwRXS11RDQFSBgANQlwEF1FWBk4JAFw="

    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    const-string v7, "AwACAFJCClIVBQxfTQtTUwVVUFBYQF8FQAdSBUBdWl0="

    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v0

    const-string v7, "UVJWUVwWCQsSVwQFSVpVWA9WVAENF19WRgIGAU9ZB1I="

    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    aput-object v7, v4, v8

    aput-object v4, v1, v2

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "U1BbXVJEDQsSX1cCSgtSDgQAVQIOS1wLQlZSUUxbUFg="

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    const-string v4, "BwZTV15BCVIRBAVWTQxRWlFUUgVcQlhQRFcEVRlYBVk="

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    const-string v4, "BAcBAVxDAQUXAABRTl8FCVEEAldfEgBVQlMGUxxbAgg="

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const-string v2, "UlcBXVxLCwJEVwNfS1wHXQ4EAVBcRQxWQl5QBEoIVlg="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    aput-object v0, v1, v3

    iput-object v1, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->i:[[Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment$a;-><init>(Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;)V

    iput-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->j:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    return-void
.end method

.method public static synthetic m(Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-object p0
.end method

.method public static synthetic n(Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic o(Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c00f1

    return v0
.end method

.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->tab1:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "0f7jgv3D3Yv5gKrR"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->tab1:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "0f7jgc/p36HegKDZ"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3}, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->tab2:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "0evjgvf63oLIg6rs"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->tab2:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "djQ="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->tab2:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "0tLsjMz10JHi"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->tab3:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "0evjgvf63rr0j6HY"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->tab3:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "B09WgeP1"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->tab3:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "Ak9SVI77vw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->tab3:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "BlJOVluWsbU="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->tab3:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "BVJOV1uWsbU="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->tab3:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "BFKG7O2XgpaX3r4="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 12
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->tab4:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "0evjgvf63rr0gZPq"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->tab4:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "0fXDg8vy"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 14
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->tab4:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "09rOgv303J7kg43y"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 15
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->tab4:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "09vSgNfV"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 16
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->tab1:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->j:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 17
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->tab2:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->j:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 18
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->tab3:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->j:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 19
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->tab4:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->j:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 20
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshFragment;->f()V

    return-void
.end method

.method public h()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 2

    .line 1
    new-instance v0, Lcom/comeback/data/ui/avbobo/adapter/VideoAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/avbobo/adapter/VideoAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public i()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public l(I)V
    .locals 13

    .line 1
    invoke-static {}, Lf/e/a/j/b/g/d;->a()Lf/e/a/j/b/g/a;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->tab1:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->tab2:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v3

    .line 5
    iget-object v4, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->tab3:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v4

    .line 6
    iget-object v5, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->tab4:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v5

    const-string v6, "bBlBAxkcTEMsD1BFQkhGGBUfPg=="

    .line 7
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "WA=="

    .line 8
    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->i:[[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    aget-object v2, v10, v2

    aput-object v2, v9, v11

    const-string v2, "TEBHBQUXGwkoHRYACgUWG2gLB0ZRUQALQAVQBE0JB1gPUQUFDxZcAUEEVQYcUwZeVlNRUloXG05fHRYACgUWG2gLB0ZRUV8DFQQGUx4JUVpSAFBXCkAPUUReVVUcXQUOD1EFUFkVG05fHRYACgUWG2gLB0ZRURxAURsYHFoNEQRCEjwND1EDEVYVFhpUEUEMRQ0WFDQaXRFJRBEUWhc+Fg=="

    invoke-static {v6, v9, v1, v7, v2}, Lf/b/a/a/a;->j(Ljava/lang/String;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "Rg=="

    .line 9
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v9, v7, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;->i:[[Ljava/lang/String;

    aget-object v12, v10, v8

    aget-object v3, v12, v3

    aput-object v3, v9, v11

    const/4 v3, 0x2

    aget-object v11, v10, v3

    aget-object v4, v11, v4

    aput-object v4, v9, v8

    aget-object v4, v10, v7

    aget-object v4, v4, v5

    aput-object v4, v9, v3

    const-string v3, "RwMEAQ=="

    invoke-static {v2, v9, v1, v6, v3}, Lf/b/a/a/a;->j(Ljava/lang/String;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "WwsODR8="

    .line 10
    invoke-static {p1, v1, v2, v3}, Lf/b/a/a/a;->G(ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BlQ="

    .line 11
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-interface {v0, v1}, Lf/e/a/j/b/g/a;->i(Ljava/util/HashMap;)Lm/e;

    move-result-object v0

    .line 13
    new-instance v1, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment$b;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment$b;-><init>(Lcom/comeback/data/ui/avbobo/fragment/NoCodeFragment;I)V

    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method

.method public final p(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void
.end method
