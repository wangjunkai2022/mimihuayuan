.class public Lf/e/a/j/f0/d;
.super Lm/j;
.source "ComicReadActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/mimei/bean/ComicDetailBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/mimei/ComicReadActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/mimei/ComicReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/f0/d;->e:Lcom/comeback/data/ui/mimei/ComicReadActivity;

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
    check-cast p1, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean;

    .line 2
    iget-object v0, p0, Lf/e/a/j/f0/d;->e:Lcom/comeback/data/ui/mimei/ComicReadActivity;

    .line 3
    iput-object p1, v0, Lcom/comeback/data/ui/mimei/ComicReadActivity;->f:Lcom/comeback/data/ui/mimei/bean/ComicDetailBean;

    .line 4
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v1, v0, Lcom/comeback/data/ui/mimei/ComicReadActivity;->rvChapter:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 6
    new-instance p1, Lcom/comeback/data/ui/mimei/adapter/ChapterAdapter;

    invoke-direct {p1, v0}, Lcom/comeback/data/ui/mimei/adapter/ChapterAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lcom/comeback/data/ui/mimei/ComicReadActivity;->h:Lcom/comeback/data/ui/mimei/adapter/ChapterAdapter;

    .line 7
    iget v1, v0, Lcom/comeback/data/ui/mimei/ComicReadActivity;->e:I

    .line 8
    iput v1, p1, Lcom/comeback/data/ui/mimei/adapter/ChapterAdapter;->e:I

    .line 9
    new-instance v1, Lf/e/a/j/f0/a;

    invoke-direct {v1, v0}, Lf/e/a/j/f0/a;-><init>(Lcom/comeback/data/ui/mimei/ComicReadActivity;)V

    .line 10
    iput-object v1, p1, Lcom/comeback/data/ui/mimei/adapter/ChapterAdapter;->d:Lcom/comeback/data/ui/mimei/adapter/ChapterAdapter$a;

    .line 11
    iget-object p1, v0, Lcom/comeback/data/ui/mimei/ComicReadActivity;->rvChapter:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Lcom/comeback/data/ui/mimei/ComicReadActivity;->h:Lcom/comeback/data/ui/mimei/adapter/ChapterAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    iget-object p1, v0, Lcom/comeback/data/ui/mimei/ComicReadActivity;->h:Lcom/comeback/data/ui/mimei/adapter/ChapterAdapter;

    iget-object v0, v0, Lcom/comeback/data/ui/mimei/ComicReadActivity;->f:Lcom/comeback/data/ui/mimei/bean/ComicDetailBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean;->getSuccess()Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean;->getDirectory()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 13
    iget-object p1, p0, Lf/e/a/j/f0/d;->e:Lcom/comeback/data/ui/mimei/ComicReadActivity;

    .line 14
    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/ComicReadActivity;->m()V

    return-void
.end method
