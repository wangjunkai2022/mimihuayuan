.class public Lcom/comeback/data/ui/hm/NovelReadActivity$a;
.super Ljava/lang/Object;
.source "NovelReadActivity.java"

# interfaces
.implements Ll/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/hm/NovelReadActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/f<",
        "Li/i0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/hm/NovelReadActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/hm/NovelReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hm/NovelReadActivity$a;->a:Lcom/comeback/data/ui/hm/NovelReadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll/d;Ll/g0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/d<",
            "Li/i0;",
            ">;",
            "Ll/g0<",
            "Li/i0;",
            ">;)V"
        }
    .end annotation

    const-string p1, "XxYXFA=="

    .line 1
    iget-object v0, p2, Ll/g0;->a:Li/h0;

    .line 2
    iget v0, v0, Li/h0;->e:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_3

    .line 3
    :try_start_0
    iget-object p2, p2, Ll/g0;->b:Ljava/lang/Object;

    .line 4
    check-cast p2, Li/i0;

    invoke-virtual {p2}, Li/i0;->H()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p2}, Lf/e/a/j/r/f/a;->f(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GQ8TVw=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    iget-object p1, p0, Lcom/comeback/data/ui/hm/NovelReadActivity$a;->a:Lcom/comeback/data/ui/hm/NovelReadActivity;

    iget-object p2, p0, Lcom/comeback/data/ui/hm/NovelReadActivity$a;->a:Lcom/comeback/data/ui/hm/NovelReadActivity;

    .line 10
    iget-object p2, p2, Lcom/comeback/data/ui/hm/NovelReadActivity;->b:Ljava/lang/String;

    .line 11
    invoke-static {p1, v1, p2}, Lcom/comeback/data/ui/commom/PlayActivity;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/comeback/data/ui/hm/NovelReadActivity$a;->a:Lcom/comeback/data/ui/hm/NovelReadActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_1

    .line 14
    iget-object p1, p0, Lcom/comeback/data/ui/hm/NovelReadActivity$a;->a:Lcom/comeback/data/ui/hm/NovelReadActivity;

    invoke-static {p1, p2}, Lcom/comeback/data/ui/commom/PicBrowseActivity;->l(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 15
    iget-object p1, p0, Lcom/comeback/data/ui/hm/NovelReadActivity$a;->a:Lcom/comeback/data/ui/hm/NovelReadActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 16
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_2

    .line 17
    iget-object p1, p0, Lcom/comeback/data/ui/hm/NovelReadActivity$a;->a:Lcom/comeback/data/ui/hm/NovelReadActivity;

    iget-object p1, p1, Lcom/comeback/data/ui/hm/NovelReadActivity;->tvDetail:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/comeback/data/ui/hm/NovelReadActivity$a;->a:Lcom/comeback/data/ui/hm/NovelReadActivity;

    iget-object p1, p1, Lcom/comeback/data/ui/hm/NovelReadActivity;->tvDetail:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_3
    const-string p1, "0ffTgubd3LnTjonanc7Sg4PH"

    .line 20
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public b(Ll/d;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/d<",
            "Li/i0;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->a()V

    return-void
.end method
