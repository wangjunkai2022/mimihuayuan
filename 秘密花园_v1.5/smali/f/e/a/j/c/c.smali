.class public Lf/e/a/j/c/c;
.super Lm/j;
.source "ComicReadActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/ba/bean/ComicDetailBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/ba/ComicReadActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ba/ComicReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/c/c;->e:Lcom/comeback/data/ui/ba/ComicReadActivity;

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
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/ba/bean/ComicDetailBean;

    .line 2
    iget-object v0, p0, Lf/e/a/j/c/c;->e:Lcom/comeback/data/ui/ba/ComicReadActivity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/ba/bean/ComicDetailBean;->getSelf()Lcom/comeback/data/ui/ba/bean/ComicDetailBean;

    move-result-object p1

    .line 3
    iput-object p1, v0, Lcom/comeback/data/ui/ba/ComicReadActivity;->f:Lcom/comeback/data/ui/ba/bean/ComicDetailBean;

    .line 4
    iget-object p1, p0, Lf/e/a/j/c/c;->e:Lcom/comeback/data/ui/ba/ComicReadActivity;

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 6
    iget-object v1, p1, Lcom/comeback/data/ui/ba/ComicReadActivity;->rvChapter:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    new-instance v0, Lcom/comeback/data/ui/ba/adapter/ChapterAdapter;

    invoke-direct {v0, p1}, Lcom/comeback/data/ui/ba/adapter/ChapterAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcom/comeback/data/ui/ba/ComicReadActivity;->h:Lcom/comeback/data/ui/ba/adapter/ChapterAdapter;

    .line 8
    iget v1, p1, Lcom/comeback/data/ui/ba/ComicReadActivity;->e:I

    .line 9
    iput v1, v0, Lcom/comeback/data/ui/ba/adapter/ChapterAdapter;->e:I

    .line 10
    new-instance v1, Lf/e/a/j/c/b;

    invoke-direct {v1, p1}, Lf/e/a/j/c/b;-><init>(Lcom/comeback/data/ui/ba/ComicReadActivity;)V

    .line 11
    iput-object v1, v0, Lcom/comeback/data/ui/ba/adapter/ChapterAdapter;->d:Lcom/comeback/data/ui/ba/adapter/ChapterAdapter$a;

    .line 12
    iget-object v0, p1, Lcom/comeback/data/ui/ba/ComicReadActivity;->rvChapter:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p1, Lcom/comeback/data/ui/ba/ComicReadActivity;->h:Lcom/comeback/data/ui/ba/adapter/ChapterAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    iget-object v0, p1, Lcom/comeback/data/ui/ba/ComicReadActivity;->h:Lcom/comeback/data/ui/ba/adapter/ChapterAdapter;

    iget-object p1, p1, Lcom/comeback/data/ui/ba/ComicReadActivity;->f:Lcom/comeback/data/ui/ba/bean/ComicDetailBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/ba/bean/ComicDetailBean;->getResults()Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean;->getComic_episodes()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 14
    iget-object p1, p0, Lf/e/a/j/c/c;->e:Lcom/comeback/data/ui/ba/ComicReadActivity;

    .line 15
    invoke-virtual {p1}, Lcom/comeback/data/ui/ba/ComicReadActivity;->m()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 16
    throw p1
.end method
