.class public Lcom/comeback/data/ui/cucumber/CucumberShortListActivity$b;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "CucumberShortListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cucumber/CucumberShortListActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/CucumberShortListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    invoke-static {}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->getInstance()Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;

    move-result-object p1

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->getVideoPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onResume()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->getInstance()Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->onPause(Z)V

    :goto_0
    return-void
.end method
