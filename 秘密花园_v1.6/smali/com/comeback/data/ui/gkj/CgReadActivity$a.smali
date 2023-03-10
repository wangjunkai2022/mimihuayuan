.class public Lcom/comeback/data/ui/gkj/CgReadActivity$a;
.super Lm/j;
.source "CgReadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/gkj/CgReadActivity;->e()V
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
.field public final synthetic e:Lcom/comeback/data/ui/gkj/CgReadActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gkj/CgReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/CgReadActivity$a;->e:Lcom/comeback/data/ui/gkj/CgReadActivity;

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
    check-cast p1, Lcom/comeback/data/ui/gkj/bean/ComicRead;

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/gkj/CgReadActivity$a;->e:Lcom/comeback/data/ui/gkj/CgReadActivity;

    iget-object v0, p1, Lcom/comeback/data/ui/gkj/CgReadActivity;->c:Lcom/comeback/data/ui/gkj/adapter/PicAdapter;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/comeback/data/ui/gkj/adapter/PicAdapter;

    invoke-direct {v0, p1}, Lcom/comeback/data/ui/gkj/adapter/PicAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcom/comeback/data/ui/gkj/CgReadActivity;->c:Lcom/comeback/data/ui/gkj/adapter/PicAdapter;

    .line 4
    iget-object p1, p0, Lcom/comeback/data/ui/gkj/CgReadActivity$a;->e:Lcom/comeback/data/ui/gkj/CgReadActivity;

    iget-object v0, p1, Lcom/comeback/data/ui/gkj/CgReadActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    iget-object p1, p0, Lcom/comeback/data/ui/gkj/CgReadActivity$a;->e:Lcom/comeback/data/ui/gkj/CgReadActivity;

    iget-object p1, p1, Lcom/comeback/data/ui/gkj/CgReadActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lf/e/a/j/n/l;

    invoke-direct {v0, p0}, Lf/e/a/j/n/l;-><init>(Lcom/comeback/data/ui/gkj/CgReadActivity$a;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 6
    iget-object p1, p0, Lcom/comeback/data/ui/gkj/CgReadActivity$a;->e:Lcom/comeback/data/ui/gkj/CgReadActivity;

    iget-object v0, p1, Lcom/comeback/data/ui/gkj/CgReadActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Lcom/comeback/data/ui/gkj/CgReadActivity;->c:Lcom/comeback/data/ui/gkj/adapter/PicAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    :goto_0
    return-void
.end method
