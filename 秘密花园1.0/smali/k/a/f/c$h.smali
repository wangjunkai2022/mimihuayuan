.class public final enum Lk/a/f/c$h;
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
    .locals 4

    .line 1
    invoke-virtual {p1}, Lk/a/f/i;->f()Z

    move-result v0

    const-string v1, "select"

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lk/a/f/i$h;

    .line 3
    iget-object v0, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 4
    sget-object v2, Lk/a/f/c$x;->I:[Ljava/lang/String;

    invoke-static {v0, v2}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 6
    invoke-virtual {p2, v1}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    .line 7
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 8
    iget-object v0, p2, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lk/a/f/i;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    move-object v0, p1

    check-cast v0, Lk/a/f/i$g;

    .line 11
    iget-object v2, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 12
    sget-object v3, Lk/a/f/c$x;->I:[Ljava/lang/String;

    invoke-static {v2, v3}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 14
    iget-object v0, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 15
    invoke-virtual {p2, v0}, Lk/a/f/b;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p2, v1}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    .line 17
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 18
    iget-object v0, p2, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 19
    :cond_2
    sget-object v0, Lk/a/f/c;->p:Lk/a/f/c;

    .line 20
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 21
    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1
.end method
