.class public Lcom/comeback/data/ui/cucumber/MovieDetailActivity$a;
.super Ljava/lang/Object;
.source "MovieDetailActivity.java"

# interfaces
.implements Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/comeback/data/ui/cucumber/MovieDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/MovieDetailActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity$a;->b:Lcom/comeback/data/ui/cucumber/MovieDetailActivity;

    iput-object p2, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isPlaying(Z)V
    .locals 0

    return-void
.end method

.method public onLoadingChanged()V
    .locals 0

    return-void
.end method

.method public onPlayEnd()V
    .locals 0

    return-void
.end method

.method public onPlayStart(J)V
    .locals 0

    return-void
.end method

.method public onPlayerError(Lf/i/a/a/w;)V
    .locals 2
    .param p1    # Lf/i/a/a/w;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity$a;->b:Lcom/comeback/data/ui/cucumber/MovieDetailActivity;

    iget v0, p1, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->g:I

    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity$a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity$a;->b:Lcom/comeback/data/ui/cucumber/MovieDetailActivity;

    .line 3
    iget-object v0, p1, Lcom/comeback/data/base/BasePlayByIdActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 4
    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity$a;->a:Ljava/util/List;

    iget p1, p1, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->g:I

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity$a;->b:Lcom/comeback/data/ui/cucumber/MovieDetailActivity;

    .line 6
    iget-object p1, p1, Lcom/comeback/data/base/BasePlayByIdActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 7
    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getVideoPlayerView()Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getErrorLayout()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity$a;->b:Lcom/comeback/data/ui/cucumber/MovieDetailActivity;

    .line 9
    iget-object p1, p1, Lcom/comeback/data/base/BasePlayByIdActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 10
    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    :cond_0
    return-void
.end method
