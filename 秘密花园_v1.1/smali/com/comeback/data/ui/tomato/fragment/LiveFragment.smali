.class public Lcom/comeback/data/ui/tomato/fragment/LiveFragment;
.super Lcom/comeback/data/base/BaseRefreshFragment;
.source "LiveFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshFragment;-><init>()V

    return-void
.end method

.method public static synthetic m(Lcom/comeback/data/ui/tomato/fragment/LiveFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method


# virtual methods
.method public h()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 2

    .line 1
    new-instance v0, Lcom/comeback/data/ui/tomato/adapter/RoomAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/tomato/adapter/RoomAdapter;-><init>(Landroid/content/Context;)V

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
    .locals 3

    const-string v0, "TEABFgodWlswDlUJFg8PIlNAWUZbQwhsHRNYC1pGQRtWBQYqHh5bVgFEDkIcRkEbVgUGNwIJXBFJVAQa"

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "VhITCAIQWEcaCVpIEhkMBQxCAAwKAUpWB1tBEx5HWw=="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li/z;->c(Ljava/lang/String;)Li/z;

    move-result-object v0

    invoke-static {p1, v0}, Li/g0;->c(Ljava/lang/String;Li/z;)Li/g0;

    move-result-object p1

    .line 2
    const-class v0, Lf/e/a/j/m0/c/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lf/e/a/j/m0/c/c;->b:Lf/e/a/j/m0/c/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lf/e/a/j/m0/c/c;

    invoke-direct {v1}, Lf/e/a/j/m0/c/c;-><init>()V

    sput-object v1, Lf/e/a/j/m0/c/c;->b:Lf/e/a/j/m0/c/c;

    .line 5
    :cond_0
    sget-object v1, Lf/e/a/j/m0/c/c;->b:Lf/e/a/j/m0/c/c;

    iget-object v1, v1, Lf/e/a/j/m0/c/c;->a:Lf/e/a/j/m0/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 6
    invoke-interface {v1, p1}, Lf/e/a/j/m0/c/a;->a(Li/g0;)Lm/e;

    move-result-object p1

    .line 7
    new-instance v0, Lf/e/a/j/m0/b/a;

    invoke-direct {v0, p0}, Lf/e/a/j/m0/b/a;-><init>(Lcom/comeback/data/ui/tomato/fragment/LiveFragment;)V

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0

    throw p1
.end method
