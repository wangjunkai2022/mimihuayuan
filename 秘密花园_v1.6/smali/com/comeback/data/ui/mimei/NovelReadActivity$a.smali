.class public Lcom/comeback/data/ui/mimei/NovelReadActivity$a;
.super Ljava/lang/Object;
.source "NovelReadActivity.java"

# interfaces
.implements Ll/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/mimei/NovelReadActivity;->e()V
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
.field public final synthetic a:Lcom/comeback/data/ui/mimei/NovelReadActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/mimei/NovelReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/NovelReadActivity$a;->a:Lcom/comeback/data/ui/mimei/NovelReadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll/d;Ll/g0;)V
    .locals 1
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

    .line 1
    iget-object p1, p2, Ll/g0;->a:Li/h0;

    .line 2
    iget p1, p1, Li/h0;->e:I

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    .line 3
    :try_start_0
    iget-object p1, p2, Ll/g0;->b:Ljava/lang/Object;

    .line 4
    check-cast p1, Li/i0;

    invoke-virtual {p1}, Li/i0;->H()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/comeback/data/ui/mimei/NovelReadActivity$a;->a:Lcom/comeback/data/ui/mimei/NovelReadActivity;

    iget-object p2, p2, Lcom/comeback/data/ui/mimei/NovelReadActivity;->tvDetail:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "0ffTgubd3LnTjonanc7Sg4PH"

    .line 7
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

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
