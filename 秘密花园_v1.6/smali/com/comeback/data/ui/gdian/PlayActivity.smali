.class public Lcom/comeback/data/ui/gdian/PlayActivity;
.super Lcom/comeback/data/base/BasePlayByIdActivity;
.source "PlayActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BasePlayByIdActivity;-><init>()V

    return-void
.end method

.method public static synthetic n(Lcom/comeback/data/ui/gdian/PlayActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/base/BasePlayByIdActivity;->m(Ljava/lang/String;)V

    return-void
.end method

.method public static o(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/gdian/PlayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "XgY="

    .line 2
    invoke-static {v1, v0, p1, p0, v0}, Lf/b/a/a/a;->v(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/comeback/data/base/BasePlayByIdActivity;->c(Landroid/content/Intent;)V

    return-void
.end method

.method public e()V
    .locals 3

    const/high16 v0, -0x1000000

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->h(I)V

    const v0, 0x7f090353

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    .line 4
    invoke-static {p0, v0}, Lc/a/a/b/g/h;->k1(Landroid/app/Activity;Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V

    .line 5
    new-instance v1, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;-><init>(ILchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V

    new-instance v0, Lf/e/a/j/m/e/c;

    invoke-direct {v0, p0}, Lf/e/a/j/m/e/c;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v1, v0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->setDataSource(Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v2}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->setPlayerGestureOnTouch(Z)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    move-result-object v0

    new-instance v1, Lf/e/a/k/t;

    invoke-direct {v1}, Lf/e/a/k/t;-><init>()V

    .line 8
    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->addOnWindowListener(Lchuangyuan/ycj/videolibrary/listener/VideoWindowListener;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    move-result-object v0

    new-instance v1, Lf/e/a/k/s;

    invoke-direct {v1}, Lf/e/a/k/s;-><init>()V

    .line 9
    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->addVideoInfoListener(Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    move-result-object v0

    new-instance v1, Lf/e/a/k/r;

    invoke-direct {v1}, Lf/e/a/k/r;-><init>()V

    .line 10
    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->setOnCoverMapImage(Lchuangyuan/ycj/videolibrary/listener/OnCoverMapImageListener;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->create()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/comeback/data/base/BasePlayByIdActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    const-string v1, "XxYXFBhJFhwEEUNJHwUMDFsHTQcEHg=="

    .line 13
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/comeback/data/base/BasePlayByIdActivity;->b:Ljava/lang/String;

    .line 15
    invoke-static {}, Lf/e/a/j/m/e/e;->a()Lf/e/a/j/m/e/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lf/e/a/j/m/e/b;->a(Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 16
    new-instance v1, Lcom/comeback/data/ui/gdian/PlayActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/gdian/PlayActivity$a;-><init>(Lcom/comeback/data/ui/gdian/PlayActivity;)V

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lf/e/a/j/m/e/e;->a()Lf/e/a/j/m/e/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lf/e/a/j/m/e/b;->a(Ljava/lang/String;)Lm/e;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/comeback/data/ui/gdian/PlayActivity$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/gdian/PlayActivity$a;-><init>(Lcom/comeback/data/ui/gdian/PlayActivity;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method
