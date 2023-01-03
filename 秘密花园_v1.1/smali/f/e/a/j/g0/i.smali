.class public Lf/e/a/j/g0/i;
.super Ljava/lang/Object;
.source "NanaLaunchActivity.java"

# interfaces
.implements Li/g;


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/nana/NanaLaunchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/nana/NanaLaunchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/g0/i;->a:Lcom/comeback/data/ui/nana/NanaLaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Li/f;Li/h0;)V
    .locals 1

    .line 1
    iget p2, p2, Li/h0;->e:I

    const/16 v0, 0x12c

    if-le p2, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Li/f;->S()Li/e0;

    move-result-object p1

    .line 3
    iget-object p1, p1, Li/e0;->b:Li/x;

    .line 4
    iget-object p1, p1, Li/x;->j:Ljava/lang/String;

    const-string p2, "GBETAQ4XF1sHC1g="

    .line 5
    invoke-static {p2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lf/e/a/j/g0/m/d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {p2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lf/e/a/j/g0/m/d;->b:Ljava/lang/String;

    :cond_1
    const-string p1, "Xg8Ejevp0Yz0"

    .line 7
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->a()V

    .line 8
    iget-object p1, p0, Lf/e/a/j/g0/i;->a:Lcom/comeback/data/ui/nana/NanaLaunchActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/nana/NanaLaunchActivity;->n(Lcom/comeback/data/ui/nana/NanaLaunchActivity;)V

    return-void
.end method

.method public d(Li/f;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method
