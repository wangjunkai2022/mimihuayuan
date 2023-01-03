.class public Lcom/comeback/data/ui/fulao2/fragment/VideoListFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "VideoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/fulao2/fragment/VideoListFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/fulao2/bean/VideoList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/comeback/data/ui/fulao2/fragment/VideoListFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fulao2/fragment/VideoListFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/fragment/VideoListFragment$a;->g:Lcom/comeback/data/ui/fulao2/fragment/VideoListFragment;

    iput p2, p0, Lcom/comeback/data/ui/fulao2/fragment/VideoListFragment$a;->f:I

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/fulao2/bean/VideoList;

    .line 2
    iget v0, p0, Lcom/comeback/data/ui/fulao2/fragment/VideoListFragment$a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/fragment/VideoListFragment$a;->g:Lcom/comeback/data/ui/fulao2/fragment/VideoListFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/fulao2/fragment/VideoListFragment;->m(Lcom/comeback/data/ui/fulao2/fragment/VideoListFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/fragment/VideoListFragment$a;->g:Lcom/comeback/data/ui/fulao2/fragment/VideoListFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/fulao2/fragment/VideoListFragment;->n(Lcom/comeback/data/ui/fulao2/fragment/VideoListFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/VideoList;->getResponse()Lcom/comeback/data/ui/fulao2/bean/VideoList$ResponseBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/VideoList$ResponseBean;->getVideos()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
