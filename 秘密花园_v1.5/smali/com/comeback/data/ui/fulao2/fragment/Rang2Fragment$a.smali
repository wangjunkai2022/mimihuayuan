.class public Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment$a;
.super Lm/j;
.source "Rang2Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/fulao2/bean/VideoList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment$a;->e:Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment;

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
    check-cast p1, Lcom/comeback/data/ui/fulao2/bean/VideoList;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment$a;->e:Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment;

    iget-object v1, v0, Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment;->rvGuide:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    new-instance v0, Lcom/comeback/data/ui/fulao2/adapter/HVideoAdapter;

    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment$a;->e:Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/fulao2/adapter/HVideoAdapter;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment$a;->e:Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment;

    iget-object v1, v1, Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment;->rvGuide:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/VideoList;->getResponse()Lcom/comeback/data/ui/fulao2/bean/VideoList$ResponseBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/VideoList$ResponseBean;->getVideos()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
