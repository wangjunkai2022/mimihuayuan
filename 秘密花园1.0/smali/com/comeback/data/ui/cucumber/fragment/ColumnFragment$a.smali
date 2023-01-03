.class public Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "ColumnFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/cucumber/bean/Column;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment$a;->f:Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/cucumber/bean/Column;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment$a;->f:Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment;->p(Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment;Lcom/comeback/data/ui/cucumber/bean/Column;)V

    return-void
.end method
