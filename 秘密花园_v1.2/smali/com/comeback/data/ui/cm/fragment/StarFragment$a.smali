.class public Lcom/comeback/data/ui/cm/fragment/StarFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "StarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cm/fragment/StarFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/cm/bean/ArtistList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/cm/fragment/StarFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cm/fragment/StarFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/fragment/StarFragment$a;->f:Lcom/comeback/data/ui/cm/fragment/StarFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Lcom/comeback/data/ui/cm/bean/ArtistList;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/cm/fragment/StarFragment$a;->f:Lcom/comeback/data/ui/cm/fragment/StarFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/cm/fragment/StarFragment;->p(Lcom/comeback/data/ui/cm/fragment/StarFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    .line 4
    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t(Z)Lf/j/a/a/f/i;

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/cm/fragment/StarFragment$a;->f:Lcom/comeback/data/ui/cm/fragment/StarFragment;

    if-eqz v0, :cond_1

    .line 6
    new-instance v2, Lf/a/a/a/l/c;

    invoke-direct {v2}, Lf/a/a/a/l/c;-><init>()V

    .line 7
    iget-object v3, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v4, Lcom/comeback/data/ui/cm/adapter/StarTitleAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "09jZgtvn3JbAgoj/"

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v2}, Lcom/comeback/data/ui/cm/adapter/StarTitleAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/a/a/a/a;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 8
    new-instance v2, Lf/a/a/a/l/g;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lf/a/a/a/l/g;-><init>(I)V

    const/16 v4, 0xf

    .line 9
    invoke-virtual {v2, v4, v1, v4, v1}, Lf/a/a/a/l/j;->q(IIII)V

    .line 10
    invoke-virtual {v2, v4}, Lf/a/a/a/l/g;->D(I)V

    .line 11
    invoke-virtual {v2, v4}, Lf/a/a/a/l/g;->C(I)V

    .line 12
    iput-boolean v1, v2, Lf/a/a/a/l/g;->s:Z

    .line 13
    iget-object v5, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v6, Lcom/comeback/data/ui/cm/adapter/StarAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p1}, Lcom/comeback/data/ui/cm/bean/ArtistList;->getRescont()Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity;->getHotArtist()Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v7, v8, v2}, Lcom/comeback/data/ui/cm/adapter/StarAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v5, v6}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 14
    invoke-virtual {p1}, Lcom/comeback/data/ui/cm/bean/ArtistList;->getRescont()Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity;->getAllArtist()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity;

    .line 15
    new-instance v5, Lf/a/a/a/l/m;

    invoke-direct {v5}, Lf/a/a/a/l/m;-><init>()V

    .line 16
    iget-object v6, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v7, Lcom/comeback/data/ui/cm/adapter/StarTitleAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2}, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity;->getLetter()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v5}, Lcom/comeback/data/ui/cm/adapter/StarTitleAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/a/a/a/a;)V

    invoke-virtual {v6, v7}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 17
    new-instance v5, Lf/a/a/a/l/g;

    invoke-direct {v5, v3}, Lf/a/a/a/l/g;-><init>(I)V

    .line 18
    invoke-virtual {v5, v4, v1, v4, v1}, Lf/a/a/a/l/j;->q(IIII)V

    .line 19
    invoke-virtual {v5, v4}, Lf/a/a/a/l/g;->D(I)V

    .line 20
    invoke-virtual {v5, v4}, Lf/a/a/a/l/g;->C(I)V

    .line 21
    iput-boolean v1, v5, Lf/a/a/a/l/g;->s:Z

    .line 22
    iget-object v6, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v7, Lcom/comeback/data/ui/cm/adapter/StarAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2}, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v7, v8, v2, v5}, Lcom/comeback/data/ui/cm/adapter/StarAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v6, v7}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 23
    throw p1
.end method
