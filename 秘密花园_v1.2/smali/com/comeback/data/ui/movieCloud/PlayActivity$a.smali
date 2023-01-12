.class public Lcom/comeback/data/ui/movieCloud/PlayActivity$a;
.super Lm/j;
.source "PlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/movieCloud/PlayActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/movieCloud/bean/AMJPlay;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/movieCloud/PlayActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/movieCloud/PlayActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/movieCloud/PlayActivity$a;->e:Lcom/comeback/data/ui/movieCloud/PlayActivity;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/comeback/data/ui/movieCloud/bean/AMJPlay;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/movieCloud/PlayActivity$a;->e:Lcom/comeback/data/ui/movieCloud/PlayActivity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/movieCloud/bean/AMJPlay;->getData()Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/movieCloud/PlayActivity;->f:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/movieCloud/PlayActivity$a;->e:Lcom/comeback/data/ui/movieCloud/PlayActivity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/movieCloud/bean/AMJPlay;->getData()Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX;->getPlayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 5
    iput-object p1, v0, Lcom/comeback/data/ui/movieCloud/PlayActivity;->e:Ljava/util/List;

    .line 6
    iget-object v1, v0, Lcom/comeback/data/ui/movieCloud/PlayActivity;->rvChapter:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    new-instance v1, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter;

    invoke-direct {v1, v0}, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter;-><init>(Landroid/content/Context;)V

    .line 8
    iget-object v2, v0, Lcom/comeback/data/ui/movieCloud/PlayActivity;->rvChapter:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    iget-object v2, v1, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/comeback/data/base/BaseAbstractAdapter;->b(Ljava/util/List;I)V

    .line 10
    new-instance v2, Lf/e/a/j/g0/a;

    invoke-direct {v2, v0}, Lf/e/a/j/g0/a;-><init>(Lcom/comeback/data/ui/movieCloud/PlayActivity;)V

    .line 11
    iput-object v2, v1, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter;->d:Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter$a;

    .line 12
    iget-object v1, v0, Lcom/comeback/data/ui/movieCloud/PlayActivity;->b:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/comeback/data/bean/PlayListBean;

    invoke-virtual {v3}, Lcom/comeback/data/bean/PlayListBean;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 13
    iget-object v1, v0, Lcom/comeback/data/ui/movieCloud/PlayActivity;->b:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 14
    iget-object v0, v0, Lcom/comeback/data/ui/movieCloud/PlayActivity;->b:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getVideoPlayerView()Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/bean/PlayListBean;

    invoke-virtual {p1}, Lcom/comeback/data/bean/PlayListBean;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lc/a/a/b/g/h;->h1(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;Ljava/lang/String;)V

    return-void
.end method
