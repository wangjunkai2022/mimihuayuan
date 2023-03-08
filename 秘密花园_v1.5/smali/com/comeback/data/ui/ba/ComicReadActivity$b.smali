.class public Lcom/comeback/data/ui/ba/ComicReadActivity$b;
.super Lm/j;
.source "ComicReadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/ba/ComicReadActivity;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/ba/bean/ReadBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/ba/ComicReadActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ba/ComicReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ba/ComicReadActivity$b;->e:Lcom/comeback/data/ui/ba/ComicReadActivity;

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
    check-cast p1, Lcom/comeback/data/ui/ba/bean/ReadBean;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/ba/ComicReadActivity$b;->e:Lcom/comeback/data/ui/ba/ComicReadActivity;

    .line 3
    iget-object v1, v0, Lcom/comeback/data/ui/ba/ComicReadActivity;->h:Lcom/comeback/data/ui/ba/adapter/ChapterAdapter;

    .line 4
    iget v2, v0, Lcom/comeback/data/ui/ba/ComicReadActivity;->e:I

    .line 5
    iput v2, v1, Lcom/comeback/data/ui/ba/adapter/ChapterAdapter;->e:I

    .line 6
    iget-object v0, v0, Lcom/comeback/data/ui/ba/ComicReadActivity;->tvTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "F0KEyMc="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/comeback/data/ui/ba/ComicReadActivity$b;->e:Lcom/comeback/data/ui/ba/ComicReadActivity;

    .line 7
    iget v2, v2, Lcom/comeback/data/ui/ba/ComicReadActivity;->e:I

    add-int/lit8 v2, v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "0MnD"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/ba/ComicReadActivity$b;->e:Lcom/comeback/data/ui/ba/ComicReadActivity;

    .line 10
    iget-object v1, v0, Lcom/comeback/data/ui/ba/ComicReadActivity;->g:Lcom/comeback/data/ui/ba/adapter/PicAdapter;

    if-nez v1, :cond_0

    .line 11
    new-instance v1, Lcom/comeback/data/ui/ba/adapter/PicAdapter;

    invoke-direct {v1, v0}, Lcom/comeback/data/ui/ba/adapter/PicAdapter;-><init>(Landroid/content/Context;)V

    .line 12
    iput-object v1, v0, Lcom/comeback/data/ui/ba/ComicReadActivity;->g:Lcom/comeback/data/ui/ba/adapter/PicAdapter;

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/ba/ComicReadActivity$b;->e:Lcom/comeback/data/ui/ba/ComicReadActivity;

    .line 14
    iget-object v1, v0, Lcom/comeback/data/ui/ba/ComicReadActivity;->g:Lcom/comeback/data/ui/ba/adapter/PicAdapter;

    .line 15
    iput-object v0, v1, Lcom/comeback/data/ui/ba/adapter/PicAdapter;->d:Landroid/view/View$OnClickListener;

    .line 16
    iget-object v1, v0, Lcom/comeback/data/ui/ba/ComicReadActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 17
    iget-object v0, p0, Lcom/comeback/data/ui/ba/ComicReadActivity$b;->e:Lcom/comeback/data/ui/ba/ComicReadActivity;

    iget-object v1, v0, Lcom/comeback/data/ui/ba/ComicReadActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    iget-object v0, v0, Lcom/comeback/data/ui/ba/ComicReadActivity;->g:Lcom/comeback/data/ui/ba/adapter/PicAdapter;

    .line 19
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v1}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/comeback/data/ui/ba/ComicReadActivity$b;->e:Lcom/comeback/data/ui/ba/ComicReadActivity;

    .line 22
    iget-object v0, v0, Lcom/comeback/data/ui/ba/ComicReadActivity;->g:Lcom/comeback/data/ui/ba/adapter/PicAdapter;

    .line 23
    invoke-virtual {p1}, Lcom/comeback/data/ui/ba/bean/ReadBean;->getResults()Lcom/comeback/data/ui/ba/bean/ReadBean$ResultsBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/ba/bean/ReadBean$ResultsBean;->getEpisodes()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
