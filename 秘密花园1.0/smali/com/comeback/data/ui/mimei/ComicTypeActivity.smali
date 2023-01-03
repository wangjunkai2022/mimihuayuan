.class public Lcom/comeback/data/ui/mimei/ComicTypeActivity;
.super Lcom/comeback/data/base/BaseViewPagerActivity;
.source "ComicTypeActivity.java"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

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

.method public static n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/mimei/ComicTypeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "XAca"

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "WQMOAQ=="

    .line 3
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "XhEgCwYaWg=="

    .line 4
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "XAca"

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/mimei/ComicTypeActivity;->b:Ljava/lang/String;

    const-string v0, "WQMOAQ=="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/mimei/ComicTypeActivity;->c:Ljava/lang/String;

    const-string v0, "XhEgCwYaWg=="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/comeback/data/ui/mimei/ComicTypeActivity;->d:Z

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c0098

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
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/ComicTypeActivity;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/mimei/ComicTypeActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public l()Ljava/util/ArrayList;
    .locals 8
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
    iget-boolean v1, p0, Lcom/comeback/data/ui/mimei/ComicTypeActivity;->d:Z

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/mimei/ComicTypeActivity;->b:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/comeback/data/ui/mimei/fragment/CTypeFragment;->o(ILjava/lang/String;)Lcom/comeback/data/ui/mimei/fragment/CTypeFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcom/comeback/data/ui/mimei/ComicTypeActivity;->b:Ljava/lang/String;

    invoke-static {v7, v1}, Lcom/comeback/data/ui/mimei/fragment/CTypeFragment;->o(ILjava/lang/String;)Lcom/comeback/data/ui/mimei/fragment/CTypeFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcom/comeback/data/ui/mimei/ComicTypeActivity;->b:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/comeback/data/ui/mimei/fragment/CTypeFragment;->o(ILjava/lang/String;)Lcom/comeback/data/ui/mimei/fragment/CTypeFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lcom/comeback/data/ui/mimei/ComicTypeActivity;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/comeback/data/ui/mimei/fragment/CTypeFragment;->o(ILjava/lang/String;)Lcom/comeback/data/ui/mimei/fragment/CTypeFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, p0, Lcom/comeback/data/ui/mimei/ComicTypeActivity;->b:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/comeback/data/ui/mimei/fragment/CTypeFragment;->o(ILjava/lang/String;)Lcom/comeback/data/ui/mimei/fragment/CTypeFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v1, p0, Lcom/comeback/data/ui/mimei/ComicTypeActivity;->b:Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/comeback/data/ui/mimei/fragment/CTypeFragment;->o(ILjava/lang/String;)Lcom/comeback/data/ui/mimei/fragment/CTypeFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/comeback/data/ui/mimei/ComicTypeActivity;->b:Ljava/lang/String;

    invoke-static {v7, v1}, Lcom/comeback/data/ui/mimei/fragment/NTypeFragment;->o(ILjava/lang/String;)Lcom/comeback/data/ui/mimei/fragment/NTypeFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v1, p0, Lcom/comeback/data/ui/mimei/ComicTypeActivity;->b:Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/comeback/data/ui/mimei/fragment/NTypeFragment;->o(ILjava/lang/String;)Lcom/comeback/data/ui/mimei/fragment/NTypeFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v1, p0, Lcom/comeback/data/ui/mimei/ComicTypeActivity;->b:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/comeback/data/ui/mimei/fragment/NTypeFragment;->o(ILjava/lang/String;)Lcom/comeback/data/ui/mimei/fragment/NTypeFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v1, p0, Lcom/comeback/data/ui/mimei/ComicTypeActivity;->b:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/comeback/data/ui/mimei/fragment/NTypeFragment;->o(ILjava/lang/String;)Lcom/comeback/data/ui/mimei/fragment/NTypeFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v1, p0, Lcom/comeback/data/ui/mimei/ComicTypeActivity;->b:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/comeback/data/ui/mimei/fragment/NTypeFragment;->o(ILjava/lang/String;)Lcom/comeback/data/ui/mimei/fragment/NTypeFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v1, p0, Lcom/comeback/data/ui/mimei/ComicTypeActivity;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/comeback/data/ui/mimei/fragment/NTypeFragment;->o(ILjava/lang/String;)Lcom/comeback/data/ui/mimei/fragment/NTypeFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x7

    .line 15
    iget-object v2, p0, Lcom/comeback/data/ui/mimei/ComicTypeActivity;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/comeback/data/ui/mimei/fragment/NTypeFragment;->o(ILjava/lang/String;)Lcom/comeback/data/ui/mimei/fragment/NTypeFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    .line 16
    iget-object v2, p0, Lcom/comeback/data/ui/mimei/ComicTypeActivity;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/comeback/data/ui/mimei/fragment/NTypeFragment;->o(ILjava/lang/String;)Lcom/comeback/data/ui/mimei/fragment/NTypeFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method public m()[Ljava/lang/String;
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/mimei/ComicTypeActivity;->d:Z

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "3v3KgtfY"

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "0u/2jMr/36/f"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "0vLvgNHJ"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "dA0Q"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "dCWG/9U="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "0P3Og8T0"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    return-object v0

    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v8, "393ygNHB3YrCgojB"

    .line 3
    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    const-string v7, "0urVgvf+0ZzCgLf2"

    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const-string v6, "0s/Fg//s35PSg6/K"

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    const-string v5, "0t7Zgc7L3LT/jorW"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const-string v4, "0dXIjOLB3YnJg5Lc"

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "0dL3jN/b3o39g5HU"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "0Nnsge7L0brBgLfi"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "0eHmgsfB357VgorH"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method
