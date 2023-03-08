.class public final enum Lk/a/f/c$n;
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
    .locals 2

    .line 1
    invoke-virtual {p1}, Lk/a/f/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lk/a/f/i$d;

    .line 3
    invoke-virtual {p2, p1}, Lk/a/f/b;->v(Lk/a/f/i$d;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lk/a/f/i;->c()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lk/a/f/c;->a(Lk/a/f/i;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lk/a/f/i;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    move-object v0, p1

    check-cast v0, Lk/a/f/i$h;

    .line 6
    iget-object v0, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    const-string v1, "html"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p1}, Lk/a/f/i;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 9
    :cond_2
    invoke-virtual {p1}, Lk/a/f/i;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    move-object v0, p1

    check-cast v0, Lk/a/f/i$h;

    .line 11
    iget-object v0, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    const-string v1, "noframes"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    sget-object v0, Lk/a/f/c;->d:Lk/a/f/c;

    .line 14
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 15
    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 16
    :cond_3
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    const/4 p1, 0x0

    return p1

    .line 17
    :cond_4
    :goto_1
    sget-object v0, Lk/a/f/c;->g:Lk/a/f/c;

    .line 18
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 19
    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1
.end method
