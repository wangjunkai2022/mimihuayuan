.class public Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "MovieDetailActivity.java"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

.field public llChapter:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rvChapter:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvArea:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvDirector:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvIntro:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvPlayCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvScore:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvStar:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public videoView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static n(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "XgY="

    .line 2
    invoke-static {v1, v0, p1, p0, v0}, Lf/b/a/a/a;->v(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "XgY="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c0020

    return v0
.end method

.method public e()V
    .locals 4

    const/high16 v0, -0x1000000

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->videoView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    .line 3
    invoke-static {p0, v0}, Lc/a/a/b/g/h;->i1(Landroid/app/Activity;Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V

    .line 4
    new-instance v1, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;-><init>(ILchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V

    new-instance v0, Lf/e/a/j/a/f/b;

    invoke-direct {v0, p0}, Lf/e/a/j/a/f/b;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v1, v0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->setDataSource(Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v2}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->setPlayerGestureOnTouch(Z)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    move-result-object v0

    new-instance v1, Lf/e/a/k/n;

    invoke-direct {v1}, Lf/e/a/k/n;-><init>()V

    .line 7
    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->addOnWindowListener(Lchuangyuan/ycj/videolibrary/listener/VideoWindowListener;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    move-result-object v0

    new-instance v1, Lf/e/a/k/m;

    invoke-direct {v1}, Lf/e/a/k/m;-><init>()V

    .line 8
    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->addVideoInfoListener(Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    move-result-object v0

    new-instance v1, Lf/e/a/k/l;

    invoke-direct {v1}, Lf/e/a/k/l;-><init>()V

    .line 9
    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->setOnCoverMapImage(Lchuangyuan/ycj/videolibrary/listener/OnCoverMapImageListener;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->create()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    const-string v1, "XxYXFBhJFhwEEUNJHwUMDFsHTQcEHg=="

    .line 12
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lf/e/a/j/a/f/f;->a()Lf/e/a/j/a/f/e;

    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "XgY="

    .line 15
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Qw0IAQU="

    .line 16
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-interface {v0, v1}, Lf/e/a/j/a/f/e;->f(Ljava/util/Map;)Lm/e;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity$a;-><init>(Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;)V

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public synthetic l(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0, p2}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p2}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 3
    iget-object p2, p0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->rvChapter:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public final m(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/bean/PlayListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->rvChapter:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->rvChapter:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 3
    new-instance v0, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object v2, p0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->rvChapter:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    iget-object v2, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/comeback/data/base/BaseAbstractAdapter;->b(Ljava/util/List;I)V

    .line 6
    new-instance v2, Lf/e/a/j/a/b;

    invoke-direct {v2, p0}, Lf/e/a/j/a/b;-><init>(Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;)V

    .line 7
    iput-object v2, v0, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter;->d:Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter$a;

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/bean/PlayListBean;

    invoke-virtual {p1}, Lcom/comeback/data/bean/PlayListBean;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Landroidx/core/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onDestroy()V

    .line 2
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onResume()V

    return-void
.end method
