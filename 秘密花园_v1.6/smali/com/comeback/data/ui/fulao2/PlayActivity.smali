.class public Lcom/comeback/data/ui/fulao2/PlayActivity;
.super Lcom/comeback/data/base/BasePlayByIdActivity;
.source "PlayActivity.java"

# interfaces
.implements Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$a;


# instance fields
.field public rvList:Landroidx/recyclerview/widget/RecyclerView;
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

.method public static n(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/fulao2/PlayActivity;

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

.method public d()I
    .locals 1

    const v0, 0x7f0c0052

    return v0
.end method

.method public e()V
    .locals 4

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

    new-instance v0, Lf/e/a/j/l/h/c;

    invoke-direct {v0, p0}, Lf/e/a/j/l/h/c;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v1, v0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->setDataSource(Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v2}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->setPlayerGestureOnTouch(Z)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    move-result-object v0

    new-instance v1, Lf/e/a/k/q;

    invoke-direct {v1}, Lf/e/a/k/q;-><init>()V

    .line 8
    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->addOnWindowListener(Lchuangyuan/ycj/videolibrary/listener/VideoWindowListener;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    move-result-object v0

    new-instance v1, Lf/e/a/k/p;

    invoke-direct {v1}, Lf/e/a/k/p;-><init>()V

    .line 9
    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->addVideoInfoListener(Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    move-result-object v0

    new-instance v1, Lf/e/a/k/o;

    invoke-direct {v1}, Lf/e/a/k/o;-><init>()V

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

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/fulao2/PlayActivity;->l(Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/comeback/data/ui/fulao2/FuLao2Activity;->d:Lcom/comeback/data/ui/fulao2/bean/Host;

    if-nez v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/comeback/data/ui/fulao2/bean/Host;->getStream()Ljava/util/List;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/PlayActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 18
    new-instance v1, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter;

    invoke-direct {v1, p0, p0}, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$a;)V

    .line 19
    iget-object v2, p0, Lcom/comeback/data/ui/fulao2/PlayActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    invoke-virtual {v1, v0}, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter;->a(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lf/e/a/j/l/h/f;->b()Lf/e/a/j/l/h/b;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Vgw8FR4SVVoHHw=="

    .line 3
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "A1pT"

    const-string v4, "Vgw8Fx8BXFIe"

    invoke-static {v3, v1, v2, v4}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    sget-object v3, Lcom/comeback/data/ui/fulao2/bean/VideoInfo;->StreamHost:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Gk9OOzQsZh5eSxk4JzVORho="

    .line 5
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    sget-object v2, Lcom/comeback/data/ui/fulao2/bean/VideoInfo;->StreamHost:Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->b()V

    const-string v2, "QwsOARgHWF4D"

    .line 6
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {v0, p1, v1}, Lf/e/a/j/l/h/b;->j(Ljava/lang/String;Ljava/util/HashMap;)Lm/e;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/comeback/data/ui/fulao2/PlayActivity$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/fulao2/PlayActivity$a;-><init>(Lcom/comeback/data/ui/fulao2/PlayActivity;)V

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method
