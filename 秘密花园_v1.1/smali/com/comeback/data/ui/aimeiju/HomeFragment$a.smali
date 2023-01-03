.class public Lcom/comeback/data/ui/aimeiju/HomeFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/aimeiju/HomeFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/aimeiju/bean/BannerBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/aimeiju/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/aimeiju/HomeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/HomeFragment$a;->f:Lcom/comeback/data/ui/aimeiju/HomeFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;->e(Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/aimeiju/HomeFragment$a;->f:Lcom/comeback/data/ui/aimeiju/HomeFragment;

    invoke-static {p1}, Lcom/comeback/data/ui/aimeiju/HomeFragment;->q(Lcom/comeback/data/ui/aimeiju/HomeFragment;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/comeback/data/ui/aimeiju/bean/BannerBean;

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/aimeiju/bean/BannerBean;->getData()Ljava/util/List;

    move-result-object p1

    .line 3
    new-instance v0, Lf/a/a/a/l/l;

    invoke-direct {v0}, Lf/a/a/a/l/l;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/comeback/data/ui/aimeiju/HomeFragment$a;->f:Lcom/comeback/data/ui/aimeiju/HomeFragment;

    invoke-static {v1}, Lcom/comeback/data/ui/aimeiju/HomeFragment;->p(Lcom/comeback/data/ui/aimeiju/HomeFragment;)Lcom/alibaba/android/vlayout/DelegateAdapter;

    move-result-object v1

    new-instance v2, Lcom/comeback/data/base/BannerAdapter;

    iget-object v3, p0, Lcom/comeback/data/ui/aimeiju/HomeFragment$a;->f:Lcom/comeback/data/ui/aimeiju/HomeFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lf/e/a/j/a/e;

    invoke-direct {v4, p0}, Lf/e/a/j/a/e;-><init>(Lcom/comeback/data/ui/aimeiju/HomeFragment$a;)V

    invoke-direct {v2, v3, v0, p1, v4}, Lcom/comeback/data/base/BannerAdapter;-><init>(Landroid/content/Context;Lf/a/a/a/a;Ljava/util/List;Lcom/comeback/data/base/BannerAdapter$a;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/alibaba/android/vlayout/DelegateAdapter;->a(ILcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 5
    iget-object p1, p0, Lcom/comeback/data/ui/aimeiju/HomeFragment$a;->f:Lcom/comeback/data/ui/aimeiju/HomeFragment;

    .line 6
    invoke-virtual {p1}, Lcom/comeback/data/ui/aimeiju/HomeFragment;->s()V

    return-void
.end method
