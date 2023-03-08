.class public Lf/e/a/j/q0/f/c;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "dAMADA5eelwdEkYIFA=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Li/y$a;->S()Li/e0;

    move-result-object v1

    invoke-interface {p1, v1}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object p1

    .line 3
    sget-object v1, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 4
    invoke-static {v1}, Lc/a/a/b/g/h;->l0(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "ZxACAwYS"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/16 v1, 0x14

    if-eqz p1, :cond_0

    .line 5
    new-instance v3, Li/h0$a;

    invoke-direct {v3, p1}, Li/h0$a;-><init>(Li/h0;)V

    .line 6
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {v3, p1}, Li/h0$a;->i(Ljava/lang/String;)Li/h0$a;

    .line 8
    invoke-virtual {v3, v0}, Li/h0$a;->i(Ljava/lang/String;)Li/h0$a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RxcBCAIQFRMeB0xKGQ0GVg=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {v3, v0, p1}, Li/h0$a;->e(Ljava/lang/String;Ljava/lang/String;)Li/h0$a;

    .line 10
    invoke-virtual {v3}, Li/h0$a;->b()Li/h0;

    move-result-object p1

    return-object p1

    .line 11
    :cond_0
    throw v3

    :cond_1
    const v1, 0x24ea00

    if-eqz p1, :cond_2

    .line 12
    new-instance v3, Li/h0$a;

    invoke-direct {v3, p1}, Li/h0$a;-><init>(Li/h0;)V

    .line 13
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {v3, p1}, Li/h0$a;->i(Ljava/lang/String;)Li/h0$a;

    .line 15
    invoke-virtual {v3, v0}, Li/h0$a;->i(Ljava/lang/String;)Li/h0$a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RxcBCAIQFRMcCFgeVQMFRlQDAAwOFxUTHgdMSgseAgdSXw=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {v3, v0, p1}, Li/h0$a;->e(Ljava/lang/String;Ljava/lang/String;)Li/h0$a;

    .line 17
    invoke-virtual {v3}, Li/h0$a;->b()Li/h0;

    move-result-object p1

    return-object p1

    .line 18
    :cond_2
    throw v3
.end method
