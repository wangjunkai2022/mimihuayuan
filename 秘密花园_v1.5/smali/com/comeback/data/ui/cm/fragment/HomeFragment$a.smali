.class public Lcom/comeback/data/ui/cm/fragment/HomeFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cm/fragment/HomeFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/cm/bean/HomeBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/cm/fragment/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cm/fragment/HomeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/fragment/HomeFragment$a;->f:Lcom/comeback/data/ui/cm/fragment/HomeFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/cm/bean/HomeBean;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/cm/fragment/HomeFragment$a;->f:Lcom/comeback/data/ui/cm/fragment/HomeFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/cm/fragment/HomeFragment;->m(Lcom/comeback/data/ui/cm/fragment/HomeFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/cm/fragment/HomeFragment$a;->f:Lcom/comeback/data/ui/cm/fragment/HomeFragment;

    .line 4
    iget-object v0, v0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/cm/bean/HomeBean;->getRescont()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
