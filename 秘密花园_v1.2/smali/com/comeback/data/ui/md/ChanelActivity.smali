.class public Lcom/comeback/data/ui/md/ChanelActivity;
.super Lcom/comeback/data/base/BaseRefreshActivity;
.source "ChanelActivity.java"


# instance fields
.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshActivity;-><init>()V

    return-void
.end method

.method public static synthetic r(Lcom/comeback/data/ui/md/ChanelActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic s(Lcom/comeback/data/ui/md/ChanelActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic t(Lcom/comeback/data/ui/md/bean/MdApiBean;)Lm/e;
    .locals 1

    .line 1
    invoke-static {}, Lf/e/a/j/e0/d/e;->b()Lf/e/a/j/e0/d/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/comeback/data/ui/md/bean/MdApiBean;->getData()Lcom/comeback/data/ui/md/bean/MdApiBean$DataEntity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/comeback/data/ui/md/bean/MdApiBean$DataEntity;->getFile_name()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lf/e/a/j/e0/d/b;->b(Ljava/lang/String;)Lm/e;

    move-result-object p0

    return-object p0
.end method

.method public static u(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/md/ChanelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "WQMOAQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "VAoCCg4fcFc="

    .line 3
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "VAoCCg4fcFc="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/md/ChanelActivity;->d:Ljava/lang/String;

    const-string v0, "WQMOAQ=="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshActivity;->e()V

    return-void
.end method

.method public l()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/md/adapter/VideoAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/md/adapter/VideoAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public m()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public p(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "WwsQEDQBVkQ="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AVI="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RwMEAQ=="

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "QxsTAQ=="

    .line 4
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BQ=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/comeback/data/ui/md/ChanelActivity;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VAoCCgUWVQ=="

    .line 6
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/md/ChanelActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    invoke-static {}, Lf/e/a/j/e0/d/e;->b()Lf/e/a/j/e0/d/b;

    move-result-object v1

    invoke-static {v0}, Lf/e/a/j/e0/d/d;->a(Ljava/util/TreeMap;)Ljava/util/Map;

    invoke-interface {v1, v0}, Lf/e/a/j/e0/d/b;->d(Ljava/util/Map;)Lm/e;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/comeback/data/ui/md/ChanelActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/md/ChanelActivity$a;-><init>(Lcom/comeback/data/ui/md/ChanelActivity;I)V

    .line 9
    invoke-static {}, Lm/r/a;->a()Lm/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Lm/e;->d(Lm/g;)Lm/e;

    move-result-object p1

    .line 10
    invoke-static {}, Lm/r/a;->a()Lm/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lm/e;->b(Lm/g;)Lm/e;

    move-result-object p1

    sget-object v0, Lf/e/a/j/e0/a;->a:Lf/e/a/j/e0/a;

    .line 11
    invoke-virtual {p1, v0}, Lm/e;->a(Lm/n/c;)Lm/e;

    move-result-object p1

    .line 12
    invoke-static {}, Lm/l/b/a;->a()Lm/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lm/e;->b(Lm/g;)Lm/e;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v1}, Lm/e;->c(Lm/j;)Lm/k;

    .line 14
    iget-object p1, p0, Lcom/comeback/data/base/BaseActivity;->a:Lm/s/a;

    invoke-virtual {p1, v1}, Lm/s/a;->b(Lm/k;)V

    return-void
.end method
