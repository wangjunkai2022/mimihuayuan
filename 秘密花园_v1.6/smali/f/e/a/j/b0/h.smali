.class public Lf/e/a/j/b0/h;
.super Ljava/lang/Object;
.source "LutubeLaunchActivity.java"

# interfaces
.implements Li/g;


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/b0/h;->b:Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lf/e/a/j/b0/h;->a:Z

    return-void
.end method


# virtual methods
.method public c(Li/f;Li/h0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Li/f;->S()Li/e0;

    move-result-object p1

    .line 2
    iget-object p1, p1, Li/e0;->b:Li/x;

    .line 3
    iget-object p1, p1, Li/x;->j:Ljava/lang/String;

    const-string v0, "GBETAQ4XF1sHC1g="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget p2, p2, Li/h0;->e:I

    const/16 v0, 0x12c

    const-string v1, "RBYRAQoeAw=="

    if-le p2, v0, :cond_0

    .line 6
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "0uXZgNH1CgND"

    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->a()V

    return-void

    .line 7
    :cond_0
    iget-boolean p2, p0, Lf/e/a/j/b0/h;->a:Z

    if-eqz p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lf/e/a/j/b0/h;->a:Z

    .line 9
    sput-object p1, Lf/e/a/k/b;->s:Ljava/lang/String;

    .line 10
    iget-object p1, p0, Lf/e/a/j/b0/h;->b:Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;->m(Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;)I

    .line 11
    iget-object p1, p0, Lf/e/a/j/b0/h;->b:Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;->n(Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;)V

    .line 12
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "0erzgeHs"

    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->a()V

    return-void
.end method

.method public d(Li/f;Ljava/io/IOException;)V
    .locals 1

    const-string p2, "RBYRAQoeAw=="

    .line 1
    invoke-static {p2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p1}, Li/f;->S()Li/e0;

    move-result-object p1

    .line 2
    iget-object p1, p1, Li/e0;->b:Li/x;

    .line 3
    iget-object p1, p1, Li/x;->j:Ljava/lang/String;

    const-string p2, "GBETAQ4XF1sHC1g="

    .line 4
    invoke-static {p2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string p1, "0sbSjN/W"

    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->a()V

    return-void
.end method
