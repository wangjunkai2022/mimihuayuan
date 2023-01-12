.class public Lcom/comeback/data/ui/slf/ImageReadActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "ImageReadActivity.java"


# instance fields
.field public b:Lcom/comeback/data/ui/slf/adapter/PicAdapter;

.field public c:Ljava/lang/String;

.field public rvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/slf/ImageReadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "XgY="

    .line 2
    invoke-static {v1, v0, p1, p0, v0}, Lf/b/a/a/a;->v(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "XgY="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/slf/ImageReadActivity;->c:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c005e

    return v0
.end method

.method public e()V
    .locals 3

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    new-instance v0, Lf/i/b/r;

    invoke-direct {v0}, Lf/i/b/r;-><init>()V

    const-string v1, "XgY="

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/slf/ImageReadActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lf/i/b/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lf/e/a/j/l0/h/b;->a()Lf/e/a/j/l0/h/a;

    move-result-object v1

    invoke-virtual {v0}, Lf/i/b/o;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/e/a/j/l0/h/d;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v1, v0}, Lf/e/a/j/l0/h/a;->c(Ljava/util/HashMap;)Lm/e;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/comeback/data/ui/slf/ImageReadActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/slf/ImageReadActivity$a;-><init>(Lcom/comeback/data/ui/slf/ImageReadActivity;)V

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method
