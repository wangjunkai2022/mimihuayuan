.class public Lcom/comeback/data/ui/cucumber/fragment/HomeType2Fragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "HomeType2Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cucumber/fragment/HomeType2Fragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/cucumber/bean/SelectionQuery;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/cucumber/fragment/HomeType2Fragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/fragment/HomeType2Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/fragment/HomeType2Fragment$a;->f:Lcom/comeback/data/ui/cucumber/fragment/HomeType2Fragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/cucumber/bean/SelectionQuery;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/HomeType2Fragment$a;->f:Lcom/comeback/data/ui/cucumber/fragment/HomeType2Fragment;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/SelectionQuery;->getData()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/comeback/data/ui/cucumber/fragment/HomeType2Fragment;->p(Lcom/comeback/data/ui/cucumber/fragment/HomeType2Fragment;Ljava/util/List;)V

    return-void
.end method
