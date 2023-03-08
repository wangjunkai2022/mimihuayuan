.class public Lcom/comeback/data/ui/xj/fragment/HomeFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/xj/fragment/HomeFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/xj/bean/HomeData;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/xj/fragment/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/xj/fragment/HomeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/fragment/HomeFragment$a;->f:Lcom/comeback/data/ui/xj/fragment/HomeFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lcom/comeback/data/ui/xj/bean/HomeData;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/xj/fragment/HomeFragment$a;->f:Lcom/comeback/data/ui/xj/fragment/HomeFragment;

    .line 3
    iput-object p1, v0, Lcom/comeback/data/ui/xj/fragment/HomeFragment;->j:Lcom/comeback/data/ui/xj/bean/HomeData;

    .line 4
    new-instance v1, Lf/a/a/a/l/i;

    invoke-direct {v1}, Lf/a/a/a/l/i;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/HomeData;->getData()Lcom/comeback/data/ui/xj/bean/HomeData$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/xj/bean/HomeData$DataBean;->getV2sliderows()Ljava/util/List;

    move-result-object v2

    .line 6
    iget-object v3, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v4, Lcom/comeback/data/base/Banner2Adapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lf/e/a/j/s0/f/a;

    invoke-direct {v6, v0}, Lf/e/a/j/s0/f/a;-><init>(Lcom/comeback/data/ui/xj/fragment/HomeFragment;)V

    invoke-direct {v4, v5, v1, v2, v6}, Lcom/comeback/data/base/Banner2Adapter;-><init>(Landroid/content/Context;Lf/a/a/a/a;Ljava/util/List;Lcom/comeback/data/widget/viewpager/AdPagerAdapter$a;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 7
    new-instance v1, Lf/a/a/a/l/l;

    invoke-direct {v1}, Lf/a/a/a/l/l;-><init>()V

    .line 8
    iget-object v2, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v3, Lcom/comeback/data/ui/xj/adapter/VHomeTypeAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/comeback/data/ui/xj/adapter/VHomeTypeAdapter;-><init>(Landroid/content/Context;Lf/a/a/a/a;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 9
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/HomeData;->getData()Lcom/comeback/data/ui/xj/bean/HomeData$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/xj/bean/HomeData$DataBean;->getDayrows()Ljava/util/List;

    move-result-object v1

    .line 10
    new-instance v2, Lf/a/a/a/l/c;

    invoke-direct {v2}, Lf/a/a/a/l/c;-><init>()V

    .line 11
    iget-object v3, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v4, Lcom/comeback/data/ui/xj/adapter/VTitle2Adapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "3sT6jP763JfHgKnG"

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v2}, Lcom/comeback/data/ui/xj/adapter/VTitle2Adapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/a/a/a/a;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 12
    new-instance v2, Lf/a/a/a/l/i;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lf/a/a/a/l/i;-><init>(I)V

    .line 13
    iget-object v3, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v4, Lcom/comeback/data/ui/xj/adapter/VMovie1Adapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v1, v2}, Lcom/comeback/data/ui/xj/adapter/VMovie1Adapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 14
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/HomeData;->getData()Lcom/comeback/data/ui/xj/bean/HomeData$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/xj/bean/HomeData$DataBean;->getLatestrows()Ljava/util/List;

    move-result-object v1

    const-string v2, "0f7jgv3D0ZT1j5b2"

    .line 15
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comeback/data/ui/xj/fragment/HomeFragment;->q(Ljava/util/List;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/HomeData;->getData()Lcom/comeback/data/ui/xj/bean/HomeData$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/xj/bean/HomeData$DataBean;->getLikerows()Ljava/util/List;

    move-result-object v1

    const-string v2, "0O7/gNbT3KXvgJjF"

    .line 17
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comeback/data/ui/xj/fragment/HomeFragment;->q(Ljava/util/List;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/HomeData;->getData()Lcom/comeback/data/ui/xj/bean/HomeData$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/xj/bean/HomeData$DataBean;->getA_vodrows()Ljava/util/List;

    move-result-object v1

    const-string v2, "0uPUguD+0bTZgL/q"

    .line 19
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comeback/data/ui/xj/fragment/HomeFragment;->q(Ljava/util/List;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/HomeData;->getData()Lcom/comeback/data/ui/xj/bean/HomeData$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/xj/bean/HomeData$DataBean;->getB_vodrows()Ljava/util/List;

    move-result-object v1

    const-string v2, "0erzgNHJ3LnbgIjM"

    .line 21
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comeback/data/ui/xj/fragment/HomeFragment;->q(Ljava/util/List;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/HomeData;->getData()Lcom/comeback/data/ui/xj/bean/HomeData$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/xj/bean/HomeData$DataBean;->getC_vodrows()Ljava/util/List;

    move-result-object v1

    const-string v2, "0Nnsge7L3Y/VgaTh"

    .line 23
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comeback/data/ui/xj/fragment/HomeFragment;->q(Ljava/util/List;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/HomeData;->getData()Lcom/comeback/data/ui/xj/bean/HomeData$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/xj/bean/HomeData$DataBean;->getD_vodrows()Ljava/util/List;

    move-result-object v1

    const-string v2, "09rOgv303J7kg43y"

    .line 25
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comeback/data/ui/xj/fragment/HomeFragment;->q(Ljava/util/List;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/HomeData;->getData()Lcom/comeback/data/ui/xj/bean/HomeData$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/xj/bean/HomeData$DataBean;->getTagvodrows()Ljava/util/List;

    move-result-object v1

    const-string v2, "09rujfD20ZT1j5b2"

    .line 27
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comeback/data/ui/xj/fragment/HomeFragment;->q(Ljava/util/List;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/HomeData;->getData()Lcom/comeback/data/ui/xj/bean/HomeData$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/HomeData$DataBean;->getHotrows()Ljava/util/List;

    move-result-object p1

    const-string v1, "0OHOg+L00ZT1j5b2"

    .line 29
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/comeback/data/ui/xj/fragment/HomeFragment;->q(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
