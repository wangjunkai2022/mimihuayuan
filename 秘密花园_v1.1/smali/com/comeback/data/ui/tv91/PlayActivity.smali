.class public Lcom/comeback/data/ui/tv91/PlayActivity;
.super Lcom/comeback/data/base/BasePlayByIdActivity;
.source "PlayActivity.java"


# instance fields
.field public d:I

.field public e:Li/b0;

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Li/f;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/Thread;

.field public h:Z

.field public i:I

.field public j:Li/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BasePlayByIdActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/tv91/PlayActivity;->f:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lcom/comeback/data/ui/tv91/PlayActivity$b;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/tv91/PlayActivity$b;-><init>(Lcom/comeback/data/ui/tv91/PlayActivity;)V

    iput-object v0, p0, Lcom/comeback/data/ui/tv91/PlayActivity;->j:Li/g;

    return-void
.end method

.method public static n(Lcom/comeback/data/ui/tv91/PlayActivity;Lcom/comeback/data/ui/tv91/bean/MovieInfo;)V
    .locals 4

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/comeback/data/ui/tv91/bean/MovieInfo;->getMessage()Lcom/comeback/data/ui/tv91/bean/MovieInfo$MessageEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/tv91/bean/MovieInfo$MessageEntity;->getTs0()Ljava/util/ArrayList;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "3+zUgeTl3Yv+g7zXnvjOjaPchvjblqSz"

    .line 3
    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_0
    new-instance v0, Li/b0$a;

    invoke-direct {v0}, Li/b0$a;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x19

    .line 5
    invoke-virtual {v0, v2, v3, v1}, Li/b0$a;->c(JLjava/util/concurrent/TimeUnit;)Li/b0$a;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-virtual {v0, v2, v3, v1}, Li/b0$a;->d(JLjava/util/concurrent/TimeUnit;)Li/b0$a;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 7
    iput-object v1, v0, Li/b0$a;->m:Ljava/net/Proxy;

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Li/b0$a;->f:Z

    .line 9
    new-instance v1, Li/b0;

    invoke-direct {v1, v0}, Li/b0;-><init>(Li/b0$a;)V

    .line 10
    iput-object v1, p0, Lcom/comeback/data/ui/tv91/PlayActivity;->e:Li/b0;

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 12
    new-instance v1, Li/e0$a;

    invoke-direct {v1}, Li/e0$a;-><init>()V

    .line 13
    invoke-virtual {v1, v0}, Li/e0$a;->i(Ljava/lang/String;)Li/e0$a;

    const-string v0, "dA0NCg4QTVocCA=="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VA4MFw4="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {v1, v0, v2}, Li/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    const-string v0, "QhEGFkYSXlYdEg=="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DlM3MjsfWEoWFBtUVllDQ3sLDRETSHhdFxRbDhxKVUUHTFJNSzZBXCMKVR4dGC8CVU1RSlpAFwA="

    invoke-static {v2, v1, v0}, Lf/b/a/a/a;->s(Ljava/lang/String;Li/e0$a;Ljava/lang/String;)Li/e0;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/comeback/data/ui/tv91/PlayActivity;->e:Li/b0;

    invoke-virtual {v1, v0}, Li/b0;->a(Li/e0;)Li/f;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/comeback/data/ui/tv91/PlayActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v1, p0, Lcom/comeback/data/ui/tv91/PlayActivity;->j:Li/g;

    check-cast v0, Li/d0;

    invoke-virtual {v0, v1}, Li/d0;->W(Li/g;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 p0, 0x0

    .line 18
    throw p0
.end method

.method public static o(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/tv91/PlayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "XgY="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "RA0WFggWcFc="

    .line 3
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/comeback/data/base/BasePlayByIdActivity;->c(Landroid/content/Intent;)V

    const-string v0, "RA0WFggWcFc="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/comeback/data/ui/tv91/PlayActivity;->d:I

    return-void
.end method

.method public e()V
    .locals 3

    const/high16 v0, -0x1000000

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->h(I)V

    .line 3
    new-instance v0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    const/4 v1, 0x1

    const v2, 0x7f090348

    invoke-direct {v0, p0, v1, v2}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;-><init>(Landroid/app/Activity;II)V

    new-instance v2, Lf/e/a/l/d;

    invoke-direct {v2, p0}, Lf/e/a/l/d;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v0, v2}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->setDataSource(Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->setPlayerGestureOnTouch(Z)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->create()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/base/BasePlayByIdActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 7
    iget-object v0, p0, Lcom/comeback/data/base/BasePlayByIdActivity;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/tv91/PlayActivity;->l(Ljava/lang/String;)V

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lf/e/a/j/n0/i/b;->a()Lf/e/a/j/n0/i/a;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v1, p0, Lcom/comeback/data/ui/tv91/PlayActivity;->d:I

    invoke-static {p1, v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->buildMovieInfo(II)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Lf/e/a/j/n0/i/a;->f(Ljava/util/Map;)Lm/e;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/comeback/data/ui/tv91/PlayActivity$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/tv91/PlayActivity$a;-><init>(Lcom/comeback/data/ui/tv91/PlayActivity;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lf/e/a/k/f;->a()V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/base/BasePlayByIdActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/base/BasePlayByIdActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 5
    iget-object v0, p0, Lcom/comeback/data/base/BasePlayByIdActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getVideoPlayerView()Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    move-result-object v0

    invoke-static {v0, p1}, Lc/a/a/b/g/h;->h1(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BasePlayByIdActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/PlayActivity;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/PlayActivity;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/PlayActivity;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/f;

    .line 6
    invoke-interface {v1}, Li/f;->cancel()V

    goto :goto_0

    :cond_1
    return-void
.end method
