.class public Lf/e/a/j/i/f;
.super Lm/j;
.source "ComicReadActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/ds/bean/ComicDetailBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/ds/ComicReadActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ds/ComicReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/i/f;->e:Lcom/comeback/data/ui/ds/ComicReadActivity;

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

    const-string p1, "0MnDjOHx3YzSgLXIkOTUjrj0hsDam42W"

    .line 1
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/ds/bean/ComicDetailBean;

    .line 2
    iget-object v0, p0, Lf/e/a/j/i/f;->e:Lcom/comeback/data/ui/ds/ComicReadActivity;

    .line 3
    iput-object p1, v0, Lcom/comeback/data/ui/ds/ComicReadActivity;->f:Lcom/comeback/data/ui/ds/bean/ComicDetailBean;

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/ds/bean/ComicDetailBean;->isSucc()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/ds/bean/ComicDetailBean;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lf/e/a/j/i/f;->e:Lcom/comeback/data/ui/ds/ComicReadActivity;

    if-eqz p1, :cond_1

    .line 7
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 8
    iget-object v1, p1, Lcom/comeback/data/ui/ds/ComicReadActivity;->rvChapter:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    new-instance v0, Lcom/comeback/data/ui/ds/adapter/ChapterAdapter;

    invoke-direct {v0, p1}, Lcom/comeback/data/ui/ds/adapter/ChapterAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcom/comeback/data/ui/ds/ComicReadActivity;->h:Lcom/comeback/data/ui/ds/adapter/ChapterAdapter;

    .line 10
    iget v1, p1, Lcom/comeback/data/ui/ds/ComicReadActivity;->e:I

    .line 11
    iput v1, v0, Lcom/comeback/data/ui/ds/adapter/ChapterAdapter;->e:I

    .line 12
    new-instance v1, Lf/e/a/j/i/a;

    invoke-direct {v1, p1}, Lf/e/a/j/i/a;-><init>(Lcom/comeback/data/ui/ds/ComicReadActivity;)V

    .line 13
    iput-object v1, v0, Lcom/comeback/data/ui/ds/adapter/ChapterAdapter;->d:Lcom/comeback/data/ui/ds/adapter/ChapterAdapter$a;

    .line 14
    iget-object v0, p1, Lcom/comeback/data/ui/ds/ComicReadActivity;->rvChapter:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p1, Lcom/comeback/data/ui/ds/ComicReadActivity;->h:Lcom/comeback/data/ui/ds/adapter/ChapterAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 15
    iget-object v0, p1, Lcom/comeback/data/ui/ds/ComicReadActivity;->h:Lcom/comeback/data/ui/ds/adapter/ChapterAdapter;

    iget-object p1, p1, Lcom/comeback/data/ui/ds/ComicReadActivity;->f:Lcom/comeback/data/ui/ds/bean/ComicDetailBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/ds/bean/ComicDetailBean;->getResult()Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 16
    iget-object p1, p0, Lf/e/a/j/i/f;->e:Lcom/comeback/data/ui/ds/ComicReadActivity;

    .line 17
    invoke-virtual {p1}, Lcom/comeback/data/ui/ds/ComicReadActivity;->m()V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 18
    throw p1
.end method
