.class public Lcom/comeback/data/ui/slf/NovelReadActivity$a;
.super Lm/j;
.source "NovelReadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/slf/NovelReadActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/slf/bean/ComicDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/slf/NovelReadActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/slf/NovelReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/NovelReadActivity$a;->e:Lcom/comeback/data/ui/slf/NovelReadActivity;

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
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/slf/bean/ComicDetail;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/slf/NovelReadActivity$a;->e:Lcom/comeback/data/ui/slf/NovelReadActivity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/ComicDetail;->getChapter()Ljava/util/List;

    move-result-object p1

    .line 3
    iput-object p1, v0, Lcom/comeback/data/ui/slf/NovelReadActivity;->d:Ljava/util/List;

    .line 4
    iget-object p1, p0, Lcom/comeback/data/ui/slf/NovelReadActivity$a;->e:Lcom/comeback/data/ui/slf/NovelReadActivity;

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/NovelReadActivity;->o()V

    .line 6
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 7
    iget-object v1, p1, Lcom/comeback/data/ui/slf/NovelReadActivity;->rvChapter:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    new-instance v1, Lcom/comeback/data/ui/slf/adapter/ChapterAdapter;

    invoke-direct {v1, p1}, Lcom/comeback/data/ui/slf/adapter/ChapterAdapter;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 9
    iput v2, v1, Lcom/comeback/data/ui/slf/adapter/ChapterAdapter;->e:I

    .line 10
    new-instance v2, Lf/e/a/j/l0/b;

    invoke-direct {v2, p1, v0}, Lf/e/a/j/l0/b;-><init>(Lcom/comeback/data/ui/slf/NovelReadActivity;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    .line 11
    iput-object v2, v1, Lcom/comeback/data/ui/slf/adapter/ChapterAdapter;->d:Lcom/comeback/data/ui/slf/adapter/ChapterAdapter$a;

    .line 12
    iget-object v0, p1, Lcom/comeback/data/ui/slf/NovelReadActivity;->rvChapter:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    iget-object p1, p1, Lcom/comeback/data/ui/slf/NovelReadActivity;->d:Ljava/util/List;

    invoke-virtual {v1, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
