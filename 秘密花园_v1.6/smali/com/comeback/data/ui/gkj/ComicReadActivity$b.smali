.class public Lcom/comeback/data/ui/gkj/ComicReadActivity$b;
.super Lm/j;
.source "ComicReadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/gkj/ComicReadActivity;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/gkj/bean/ComicRead;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/gkj/ComicReadActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gkj/ComicReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/ComicReadActivity$b;->e:Lcom/comeback/data/ui/gkj/ComicReadActivity;

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

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "0f7ugeHS3Krbg7nGkcvchIr8i8vclJG+lva6jv/ni8Si"

    .line 2
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/gkj/bean/ComicRead;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ComicReadActivity$b;->e:Lcom/comeback/data/ui/gkj/ComicReadActivity;

    .line 3
    iget-object v1, v0, Lcom/comeback/data/ui/gkj/ComicReadActivity;->g:Lcom/comeback/data/ui/gkj/adapter/PicAdapter;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/comeback/data/ui/gkj/adapter/PicAdapter;

    invoke-direct {v1, v0}, Lcom/comeback/data/ui/gkj/adapter/PicAdapter;-><init>(Landroid/content/Context;)V

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/gkj/ComicReadActivity;->g:Lcom/comeback/data/ui/gkj/adapter/PicAdapter;

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ComicReadActivity$b;->e:Lcom/comeback/data/ui/gkj/ComicReadActivity;

    iget-object v1, v0, Lcom/comeback/data/ui/gkj/ComicReadActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ComicReadActivity$b;->e:Lcom/comeback/data/ui/gkj/ComicReadActivity;

    iget-object v1, v0, Lcom/comeback/data/ui/gkj/ComicReadActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    iget-object v0, v0, Lcom/comeback/data/ui/gkj/ComicReadActivity;->g:Lcom/comeback/data/ui/gkj/adapter/PicAdapter;

    .line 9
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ComicReadActivity$b;->e:Lcom/comeback/data/ui/gkj/ComicReadActivity;

    .line 12
    iget-object v0, v0, Lcom/comeback/data/ui/gkj/ComicReadActivity;->g:Lcom/comeback/data/ui/gkj/adapter/PicAdapter;

    .line 13
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicRead;->getContent()Lcom/comeback/data/ui/gkj/bean/ComicRead$ContentEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicRead$ContentEntity;->getDataList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 14
    iget-object p1, p0, Lcom/comeback/data/ui/gkj/ComicReadActivity$b;->e:Lcom/comeback/data/ui/gkj/ComicReadActivity;

    .line 15
    iget-object v0, p1, Lcom/comeback/data/ui/gkj/ComicReadActivity;->g:Lcom/comeback/data/ui/gkj/adapter/PicAdapter;

    .line 16
    iput-object p1, v0, Lcom/comeback/data/ui/gkj/adapter/PicAdapter;->d:Landroid/view/View$OnClickListener;

    return-void
.end method
