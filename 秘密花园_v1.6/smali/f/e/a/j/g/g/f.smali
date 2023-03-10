.class public Lf/e/a/j/g/g/f;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "ColumnFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/cucumber/bean/TopStar;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/g/g/f;->f:Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/comeback/data/ui/cucumber/bean/TopStar;

    .line 2
    new-instance v0, Lf/a/a/a/l/c;

    invoke-direct {v0}, Lf/a/a/a/l/c;-><init>()V

    .line 3
    iget-object v1, p0, Lf/e/a/j/g/g/f;->f:Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment;

    invoke-static {v1}, Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment;->q(Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment;)Lcom/alibaba/android/vlayout/DelegateAdapter;

    move-result-object v1

    new-instance v2, Lcom/comeback/data/ui/cucumber/adapter/Title4Adapter;

    iget-object v3, p0, Lf/e/a/j/g/g/f;->f:Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "09jZgtvn3JbAgoj/"

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/comeback/data/ui/cucumber/adapter/Title4Adapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/a/a/a/a;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 4
    iget-object v0, p0, Lf/e/a/j/g/g/f;->f:Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment;

    .line 5
    iget-object v1, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 7
    new-instance v2, Lf/a/a/a/l/i;

    invoke-direct {v2}, Lf/a/a/a/l/i;-><init>()V

    .line 8
    new-instance v3, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/TopStar;->getData()Ljava/util/List;

    move-result-object p1

    invoke-direct {v3, v0, p1, v2}, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    .line 9
    invoke-virtual {v1, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    return-void
.end method
