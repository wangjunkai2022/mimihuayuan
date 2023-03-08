.class public final enum Lk/a/f/c$k;
.super Lk/a/f/c;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lk/a/f/c;-><init>(Ljava/lang/String;ILk/a/f/c$k;)V

    return-void
.end method


# virtual methods
.method public c(Lk/a/f/i;Lk/a/f/b;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Lk/a/f/c;->a(Lk/a/f/i;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lk/a/f/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lk/a/f/i$d;

    .line 4
    invoke-virtual {p2, p1}, Lk/a/f/b;->v(Lk/a/f/i$d;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lk/a/f/i;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6
    check-cast p1, Lk/a/f/i$e;

    .line 7
    new-instance v0, Lk/a/e/g;

    iget-object v2, p2, Lk/a/f/m;->h:Lk/a/f/f;

    .line 8
    iget-object v3, p1, Lk/a/f/i$e;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_5

    .line 9
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 10
    iget-boolean v2, v2, Lk/a/f/f;->a:Z

    if-nez v2, :cond_2

    .line 11
    invoke-static {v3}, Lj/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12
    :cond_2
    iget-object v2, p1, Lk/a/f/i$e;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13
    iget-object v4, p1, Lk/a/f/i$e;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-direct {v0, v3, v2, v4}, Lk/a/e/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v2, p1, Lk/a/f/i$e;->c:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v3, "pubSysKey"

    .line 16
    invoke-virtual {v0, v3, v2}, Lk/a/e/k;->c(Ljava/lang/String;Ljava/lang/String;)Lk/a/e/l;

    .line 17
    :cond_3
    iget-object v2, p2, Lk/a/f/m;->d:Lk/a/e/f;

    .line 18
    invoke-virtual {v2, v0}, Lk/a/e/h;->z(Lk/a/e/l;)Lk/a/e/h;

    .line 19
    iget-boolean p1, p1, Lk/a/f/i$e;->f:Z

    if-eqz p1, :cond_4

    .line 20
    iget-object p1, p2, Lk/a/f/m;->d:Lk/a/e/f;

    .line 21
    sget-object v0, Lk/a/e/f$b;->b:Lk/a/e/f$b;

    .line 22
    iput-object v0, p1, Lk/a/e/f;->k:Lk/a/e/f$b;

    .line 23
    :cond_4
    sget-object p1, Lk/a/f/c;->b:Lk/a/f/c;

    .line 24
    iput-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    :goto_0
    return v1

    :cond_5
    const/4 p1, 0x0

    .line 25
    throw p1

    .line 26
    :cond_6
    sget-object v0, Lk/a/f/c;->b:Lk/a/f/c;

    .line 27
    iput-object v0, p2, Lk/a/f/b;->k:Lk/a/f/c;

    .line 28
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 29
    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1
.end method
