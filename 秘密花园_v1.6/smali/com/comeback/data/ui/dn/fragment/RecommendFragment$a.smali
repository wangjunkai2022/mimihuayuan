.class public Lcom/comeback/data/ui/dn/fragment/RecommendFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/dn/fragment/RecommendFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/dn/bean/VideoList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/dn/fragment/RecommendFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/dn/fragment/RecommendFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/fragment/RecommendFragment$a;->f:Lcom/comeback/data/ui/dn/fragment/RecommendFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/dn/bean/VideoList;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/dn/fragment/RecommendFragment$a;->f:Lcom/comeback/data/ui/dn/fragment/RecommendFragment;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/dn/fragment/RecommendFragment;->m(Lcom/comeback/data/ui/dn/fragment/RecommendFragment;Lcom/comeback/data/ui/dn/bean/VideoList;)V

    return-void
.end method
