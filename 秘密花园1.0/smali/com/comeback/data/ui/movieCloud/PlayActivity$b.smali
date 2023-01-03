.class public Lcom/comeback/data/ui/movieCloud/PlayActivity$b;
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
        "Lcom/comeback/data/ui/movieCloud/bean/XXPlay;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/movieCloud/PlayActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/movieCloud/PlayActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/movieCloud/PlayActivity$b;->e:Lcom/comeback/data/ui/movieCloud/PlayActivity;

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
    check-cast p1, Lcom/comeback/data/ui/movieCloud/bean/XXPlay;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/movieCloud/PlayActivity$b;->e:Lcom/comeback/data/ui/movieCloud/PlayActivity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/movieCloud/bean/XXPlay;->getData()Lcom/comeback/data/ui/movieCloud/bean/XXPlay$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/movieCloud/bean/XXPlay$DataBean;->getVodrow()Lcom/comeback/data/ui/movieCloud/bean/XXPlay$DataBean$VodrowBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/movieCloud/bean/XXPlay$DataBean$VodrowBean;->getPlayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    iget-object v1, v0, Lcom/comeback/data/ui/movieCloud/PlayActivity;->rvChapter:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    new-instance v1, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter;

    invoke-direct {v1, v0}, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v2, v0, Lcom/comeback/data/ui/movieCloud/PlayActivity;->rvChapter:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    iget-object v2, v1, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/comeback/data/base/BaseAbstractAdapter;->b(Ljava/util/List;I)V

    .line 7
    new-instance v2, Lf/e/a/j/f0/b;

    invoke-direct {v2, v0}, Lf/e/a/j/f0/b;-><init>(Lcom/comeback/data/ui/movieCloud/PlayActivity;)V

    .line 8
    iput-object v2, v1, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter;->d:Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter$a;

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/bean/PlayListBean;

    invoke-virtual {p1}, Lcom/comeback/data/bean/PlayListBean;->getUri()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {}, Lf/e/a/j/f0/h/b;->a()Lf/e/a/j/f0/h/a;

    move-result-object v1

    iget-object v2, v0, Lcom/comeback/data/ui/movieCloud/PlayActivity;->d:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lf/e/a/j/f0/h/a;->c(Ljava/lang/String;Ljava/lang/String;)Lm/e;

    move-result-object p1

    .line 11
    new-instance v1, Lcom/comeback/data/ui/movieCloud/PlayActivity$c;

    invoke-direct {v1, v0}, Lcom/comeback/data/ui/movieCloud/PlayActivity$c;-><init>(Lcom/comeback/data/ui/movieCloud/PlayActivity;)V

    .line 12
    invoke-virtual {v0, p1, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method
