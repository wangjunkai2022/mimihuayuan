.class public Lcom/comeback/data/ui/jav/SearchResultActivity;
.super Lcom/comeback/data/base/BaseViewPagerActivity;
.source "SearchResultActivity.java"


# instance fields
.field public b:Ljava/lang/String;

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseViewPagerActivity;-><init>()V

    return-void
.end method

.method public static n(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/jav/SearchResultActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "WQMOAQ=="

    .line 2
    invoke-static {v1, v0, p1, p0, v0}, Lf/b/a/a/a;->v(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "WQMOAQ=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/jav/SearchResultActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c0076

    return v0
.end method

.method public e()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    invoke-super {p0}, Lcom/comeback/data/base/BaseViewPagerActivity;->e()V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/jav/SearchResultActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "0fL/g9/R3ojggKr7"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public l()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/base/BaseFragment;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lf/e/a/j/u/e/a;->a:Ljava/lang/String;

    const-string v3, "GBEGBRkQUQwVW1ULFEwSVg=="

    invoke-static {v1, v2, v3}, Lf/b/a/a/a;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/comeback/data/ui/jav/SearchResultActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/comeback/data/ui/jav/fragment/VideoListFragment;->o(Ljava/lang/String;Z)Lcom/comeback/data/ui/jav/fragment/VideoListFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lf/e/a/j/u/e/a;->a:Ljava/lang/String;

    const-string v3, "GBEGBRkQUQwVW1UEDAURTUZf"

    invoke-static {v1, v2, v3}, Lf/b/a/a/a;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/comeback/data/ui/jav/SearchResultActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/comeback/data/ui/jav/fragment/VideoListFragment;->o(Ljava/lang/String;Z)Lcom/comeback/data/ui/jav/fragment/VideoListFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public m()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0t/Sg+L0"

    .line 1
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "0d73gfjS"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method
