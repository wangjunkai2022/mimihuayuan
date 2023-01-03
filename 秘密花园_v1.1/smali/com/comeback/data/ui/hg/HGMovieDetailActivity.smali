.class public Lcom/comeback/data/ui/hg/HGMovieDetailActivity;
.super Lcom/comeback/data/base/BasePlayByIdActivity;
.source "HGMovieDetailActivity.java"


# instance fields
.field public d:Lf/e/a/j/n/c/a;

.field public e:Li/b0;

.field public rvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvDetail:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvIntro:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BasePlayByIdActivity;-><init>()V

    return-void
.end method

.method public static n(Landroid/content/Context;Lf/e/a/j/n/c/a;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/hg/HGMovieDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "RwMRBQY="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "RwMRBQY="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lf/e/a/j/n/c/a;

    iput-object p1, p0, Lcom/comeback/data/ui/hg/HGMovieDetailActivity;->d:Lf/e/a/j/n/c/a;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c0062

    return v0
.end method

.method public e()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseActivity;->g()V

    const/high16 v0, -0x1000000

    .line 2
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->h(I)V

    const v0, 0x7f090348

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-static {p0, v0}, Lc/a/a/b/g/h;->h(Landroid/app/Activity;Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/comeback/data/base/BasePlayByIdActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    const-string v1, "XxYXFBhJFhwEEUNJHwUMDFsHTQcEHg=="

    .line 5
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 6
    new-instance v0, Li/b0;

    invoke-direct {v0}, Li/b0;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/hg/HGMovieDetailActivity;->e:Li/b0;

    .line 7
    new-instance v0, Li/e0$a;

    invoke-direct {v0}, Li/e0$a;-><init>()V

    iget-object v1, p0, Lcom/comeback/data/ui/hg/HGMovieDetailActivity;->d:Lf/e/a/j/n/c/a;

    .line 8
    iget-object v1, v1, Lf/e/a/j/n/c/a;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Li/e0$a;->i(Ljava/lang/String;)Li/e0$a;

    .line 10
    iget-object v1, p0, Lcom/comeback/data/ui/hg/HGMovieDetailActivity;->d:Lf/e/a/j/n/c/a;

    .line 11
    iget-object v1, v1, Lf/e/a/j/n/c/a;->b:Ljava/util/Map;

    .line 12
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 13
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/comeback/data/ui/hg/HGMovieDetailActivity;->e:Li/b0;

    invoke-virtual {v0}, Li/e0$a;->b()Li/e0;

    move-result-object v0

    invoke-virtual {v1, v0}, Li/b0;->a(Li/e0;)Li/f;

    move-result-object v0

    new-instance v1, Lf/e/a/j/n/b;

    invoke-direct {v1, p0}, Lf/e/a/j/n/b;-><init>(Lcom/comeback/data/ui/hg/HGMovieDetailActivity;)V

    check-cast v0, Li/d0;

    invoke-virtual {v0, v1}, Li/d0;->W(Li/g;)V

    .line 15
    iget-object v0, p0, Lcom/comeback/data/ui/hg/HGMovieDetailActivity;->d:Lf/e/a/j/n/c/a;

    .line 16
    iget-object v0, v0, Lf/e/a/j/n/c/a;->c:Ljava/lang/String;

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 18
    new-instance v0, Lcom/comeback/data/ui/hg/HGMovieDetailActivity$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/hg/HGMovieDetailActivity$a;-><init>(Lcom/comeback/data/ui/hg/HGMovieDetailActivity;)V

    .line 19
    sput-object v0, Lf/e/a/j/n/d/a;->b:Lf/e/a/j/n/d/b;

    :cond_1
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BasePlayByIdActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lf/e/a/j/n/d/a;->b:Lf/e/a/j/n/d/b;

    return-void
.end method
