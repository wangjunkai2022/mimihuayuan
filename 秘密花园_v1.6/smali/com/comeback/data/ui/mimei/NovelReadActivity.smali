.class public Lcom/comeback/data/ui/mimei/NovelReadActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "NovelReadActivity.java"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ll/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/d<",
            "Li/i0;",
            ">;"
        }
    .end annotation
.end field

.field public tvDetail:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName:Landroid/widget/TextView;
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

.method public static l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/mimei/NovelReadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "QwsXCA4="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "QhAP"

    .line 3
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "QwsXCA4="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/mimei/NovelReadActivity;->b:Ljava/lang/String;

    const-string v0, "QhAP"

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/mimei/NovelReadActivity;->c:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c0096

    return v0
.end method

.method public e()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/NovelReadActivity;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/mimei/NovelReadActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {}, Lf/e/a/j/i0/c;->a()Lf/e/a/j/i0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/mimei/NovelReadActivity;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lf/e/a/j/i0/a;->c(Ljava/lang/String;)Ll/d;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/mimei/NovelReadActivity;->d:Ll/d;

    .line 4
    new-instance v1, Lcom/comeback/data/ui/mimei/NovelReadActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/mimei/NovelReadActivity$a;-><init>(Lcom/comeback/data/ui/mimei/NovelReadActivity;)V

    invoke-interface {v0, v1}, Ll/d;->X(Ll/f;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/NovelReadActivity;->d:Ll/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ll/d;->cancel()V

    :cond_0
    return-void
.end method
