.class public Lf/e/a/j/r/e;
.super Ljava/lang/Object;
.source "HmLauncherActivity.java"

# interfaces
.implements Ll/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/f<",
        "Li/i0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/hm/HmLauncherActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/hm/HmLauncherActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/r/e;->a:Lcom/comeback/data/ui/hm/HmLauncherActivity;

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
    iget-object p1, p0, Lf/e/a/j/r/e;->a:Lcom/comeback/data/ui/hm/HmLauncherActivity;

    .line 4
    iget-object p2, p2, Ll/g0;->b:Ljava/lang/Object;

    .line 5
    check-cast p2, Li/i0;

    invoke-virtual {p2}, Li/i0;->H()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lf/e/a/j/r/f/a;->g(Ljava/lang/String;)Lcom/comeback/data/ui/hm/bean/Host;

    move-result-object p2

    .line 6
    iput-object p2, p1, Lcom/comeback/data/ui/hm/HmLauncherActivity;->c:Lcom/comeback/data/ui/hm/bean/Host;

    .line 7
    iget-object p1, p0, Lf/e/a/j/r/e;->a:Lcom/comeback/data/ui/hm/HmLauncherActivity;

    iget-object p1, p1, Lcom/comeback/data/ui/hm/HmLauncherActivity;->flLoad:Landroid/widget/FrameLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lf/e/a/j/r/e;->a:Lcom/comeback/data/ui/hm/HmLauncherActivity;

    .line 9
    invoke-virtual {p1}, Lcom/comeback/data/ui/hm/HmLauncherActivity;->l()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "0ffTgubd3LnTjonanc7Sg4PH"

    .line 11
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

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
