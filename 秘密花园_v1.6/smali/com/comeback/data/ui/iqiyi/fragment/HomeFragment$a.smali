.class public Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Ljava/util/ArrayList<",
        "Lcom/comeback/data/ui/iqiyi/bean/VideoInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment$a;->f:Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment$a;->f:Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment;->m(Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment;Ljava/util/ArrayList;)V

    return-void
.end method
