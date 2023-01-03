.class public Lcom/comeback/data/ui/fulao2/RankActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "RankActivity.java"


# instance fields
.field public b:I

.field public c:[Ljava/lang/String;

.field public d:[Ljava/lang/String;

.field public e:[I

.field public ivCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "0f7Pgfrb3L7yg5DAnvzTjL7l"

    .line 2
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "0f7Pgfrb3L7yg5DAnv3DjJfj"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "0f7Pgfrb3L7yg5DAnvbqjJfj"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "0f7Pgfrb3L7yg5DAnc/Qj4v6"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/comeback/data/ui/fulao2/RankActivity;->c:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "WQcU"

    .line 3
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "QgwACx0WSw=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "VA0VARk="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "VgEXCxk="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/comeback/data/ui/fulao2/RankActivity;->d:[Ljava/lang/String;

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/comeback/data/ui/fulao2/RankActivity;->e:[I

    return-void

    :array_0
    .array-data 4
        0x7f080089
        0x7f080088
        0x7f08008a
        0x7f080087
    .end array-data
.end method

.method public static m(Landroid/content/Context;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/fulao2/RankActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "XgwHARM="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "XgwHARM="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/comeback/data/ui/fulao2/RankActivity;->b:I

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c004e

    return v0
.end method

.method public e()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseActivity;->i()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/RankActivity;->ivCover:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/RankActivity;->e:[I

    iget v2, p0, Lcom/comeback/data/ui/fulao2/RankActivity;->b:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/RankActivity;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/RankActivity;->c:[Ljava/lang/String;

    iget v2, p0, Lcom/comeback/data/ui/fulao2/RankActivity;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget v0, p0, Lcom/comeback/data/ui/fulao2/RankActivity;->b:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 5
    invoke-static {}, Lf/e/a/j/k/h/f;->b()Lf/e/a/j/k/h/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/comeback/data/ui/fulao2/RankActivity;->l()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/e/a/j/k/h/b;->e(Ljava/util/HashMap;)Lm/e;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/comeback/data/ui/fulao2/RankActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/fulao2/RankActivity$a;-><init>(Lcom/comeback/data/ui/fulao2/RankActivity;)V

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lf/e/a/j/k/h/f;->b()Lf/e/a/j/k/h/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/comeback/data/ui/fulao2/RankActivity;->l()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/e/a/j/k/h/b;->c(Ljava/util/HashMap;)Lm/e;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/comeback/data/ui/fulao2/RankActivity$b;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/fulao2/RankActivity$b;-><init>(Lcom/comeback/data/ui/fulao2/RankActivity;)V

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    :goto_0
    return-void
.end method

.method public final l()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "QxsTAQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/fulao2/RankActivity;->d:[Ljava/lang/String;

    iget v3, p0, Lcom/comeback/data/ui/fulao2/RankActivity;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "QwsOARgHWF4D"

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
