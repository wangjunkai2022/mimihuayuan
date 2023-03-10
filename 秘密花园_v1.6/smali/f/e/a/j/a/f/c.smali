.class public Lf/e/a/j/a/f/c;
.super Ljava/lang/Object;
.source "AMJPlayerInterceptor.java"

# interfaces
.implements Li/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li/y$a;)Li/h0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Li/y$a;->S()Li/e0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Li/e0$a;

    invoke-direct {v1, v0}, Li/e0$a;-><init>(Li/e0;)V

    .line 3
    invoke-interface {p1}, Li/y$a;->S()Li/e0;

    move-result-object v0

    .line 4
    iget-object v0, v0, Li/e0;->b:Li/x;

    .line 5
    iget-object v0, v0, Li/x;->j:Ljava/lang/String;

    const-string v2, "GQ9QEQ=="

    .line 6
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "QBEwAQgBXEc="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-static {v0}, Lf/e/a/j/a/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v1, v0}, Li/e0$a;->i(Ljava/lang/String;)Li/e0$a;

    .line 9
    :cond_0
    invoke-virtual {v1}, Li/e0$a;->b()Li/e0;

    move-result-object v0

    invoke-interface {p1, v0}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 10
    throw p1
.end method
