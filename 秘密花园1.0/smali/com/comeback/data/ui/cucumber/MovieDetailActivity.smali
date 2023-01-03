.class public Lcom/comeback/data/ui/cucumber/MovieDetailActivity;
.super Lcom/comeback/data/base/BasePlayByIdActivity;
.source "MovieDetailActivity.java"


# instance fields
.field public d:Lcom/comeback/data/ui/cucumber/bean/Video;

.field public e:I

.field public f:Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;

.field public g:I

.field public ivCollect:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public ivStarHead:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rlStar:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rvStarWork:Landroidx/recyclerview/widget/RecyclerView;
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

.field public tvStarIntro:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvStarName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvStarWork:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BasePlayByIdActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->g:I

    return-void
.end method

.method public static o(Landroid/content/Context;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "XgY="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static p(Landroid/content/Context;Lcom/comeback/data/ui/cucumber/bean/Video;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getId()I

    move-result p1

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "XgY="

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "UwMXBQ=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/cucumber/bean/Video;

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->d:Lcom/comeback/data/ui/cucumber/bean/Video;

    const-string v0, "XgY="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->e:I

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c003c

    return v0
.end method

.method public e()V
    .locals 2

    const/high16 v0, -0x1000000

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    iget v0, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->e:I

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->d:Lcom/comeback/data/ui/cucumber/bean/Video;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getId()I

    move-result v0

    .line 5
    :cond_0
    invoke-static {}, Lf/e/a/j/g/h/c;->a()Lf/e/a/j/g/h/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lf/e/a/j/g/h/a;->t(I)Lm/e;

    move-result-object v0

    .line 6
    new-instance v1, Lf/e/a/j/g/e;

    invoke-direct {v1, p0}, Lf/e/a/j/g/e;-><init>(Lcom/comeback/data/ui/cucumber/MovieDetailActivity;)V

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    .line 8
    iget v0, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->e:I

    .line 9
    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->d:Lcom/comeback/data/ui/cucumber/bean/Video;

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getId()I

    move-result v0

    .line 11
    :cond_1
    invoke-static {}, Lf/e/a/j/g/h/c;->a()Lf/e/a/j/g/h/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lf/e/a/j/g/h/a;->h(I)Lm/e;

    move-result-object v0

    .line 12
    new-instance v1, Lf/e/a/j/g/d;

    invoke-direct {v1, p0}, Lf/e/a/j/g/d;-><init>(Lcom/comeback/data/ui/cucumber/MovieDetailActivity;)V

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    .line 14
    invoke-virtual {p0}, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->n()V

    .line 15
    iget v0, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->e:I

    .line 16
    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->d:Lcom/comeback/data/ui/cucumber/bean/Video;

    if-eqz v1, :cond_2

    .line 17
    invoke-virtual {v1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getId()I

    move-result v0

    .line 18
    :cond_2
    invoke-static {}, Lf/e/a/j/g/h/c;->a()Lf/e/a/j/g/h/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lf/e/a/j/g/h/a;->p(I)Lm/e;

    move-result-object v0

    .line 19
    new-instance v1, Lf/e/a/j/g/c;

    invoke-direct {v1, p0}, Lf/e/a/j/g/c;-><init>(Lcom/comeback/data/ui/cucumber/MovieDetailActivity;)V

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/comeback/data/base/BasePlayByIdActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    if-nez v0, :cond_0

    const v0, 0x7f090348

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-static {p0, v0}, Lc/a/a/b/g/h;->h(Landroid/app/Activity;Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/comeback/data/base/BasePlayByIdActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->d:Lcom/comeback/data/ui/cucumber/bean/Video;

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/comeback/data/base/BasePlayByIdActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getVideoPlayerView()Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->d:Lcom/comeback/data/ui/cucumber/bean/Video;

    invoke-virtual {v1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getMovName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->setTitle(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/base/BasePlayByIdActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setShowVideoSwitch(Z)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->d:Lcom/comeback/data/ui/cucumber/bean/Video;

    invoke-virtual {v0}, Lcom/comeback/data/ui/cucumber/bean/Video;->getPlayUrl()Ljava/util/List;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->d:Lcom/comeback/data/ui/cucumber/bean/Video;

    invoke-virtual {v1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getPlayName()Ljava/util/List;

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->g:I

    .line 10
    iget-object v2, p0, Lcom/comeback/data/base/BasePlayByIdActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/comeback/data/base/BasePlayByIdActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    new-instance v3, Lcom/comeback/data/ui/cucumber/MovieDetailActivity$a;

    invoke-direct {v3, p0, v0}, Lcom/comeback/data/ui/cucumber/MovieDetailActivity$a;-><init>(Lcom/comeback/data/ui/cucumber/MovieDetailActivity;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->addVideoInfoListener(Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;)V

    .line 12
    iget-object v2, p0, Lcom/comeback/data/base/BasePlayByIdActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v2}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 13
    iget-object v2, p0, Lcom/comeback/data/base/BasePlayByIdActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v2}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getVideoPlayerView()Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    move-result-object v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lc/a/a/b/g/h;->h1(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;Ljava/lang/String;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "UwMXBQ=="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/cucumber/bean/Video;

    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->d:Lcom/comeback/data/ui/cucumber/bean/Video;

    .line 3
    invoke-virtual {p0}, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->e()V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900f2

    if-eq p1, v0, :cond_1

    const v0, 0x7f0901ec

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->f:Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;->getId()I

    move-result p1

    invoke-static {p0, p1}, Lcom/comeback/data/ui/cucumber/ActorDetailActivity;->l(Landroid/content/Context;I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;

    .line 4
    invoke-virtual {p1}, Lg/a/g0;->getRealm()Lg/a/x;

    move-result-object v0

    invoke-static {v0}, Lf/e/a/k/g;->d(Lg/a/x;)Lf/e/a/k/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/e/a/k/g;->a(Lg/a/g0;)V

    .line 5
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->ivCollect:Landroid/widget/ImageView;

    const v0, 0x7f0e0020

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string p1, "0fbVjPz837vjg774"

    .line 6
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
