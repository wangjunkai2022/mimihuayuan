.class public final enum Lk/a/f/l$d;
.super Lk/a/f/l;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/f/l;
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
    invoke-direct {p0, p1, p2, v0}, Lk/a/f/l;-><init>(Ljava/lang/String;ILk/a/f/l$k;)V

    return-void
.end method


# virtual methods
.method public f(Lk/a/f/k;Lk/a/f/a;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lk/a/f/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lk/a/f/a;->f()Ljava/lang/String;

    move-result-object p2

    .line 3
    iget-object v0, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    invoke-virtual {v0, p2}, Lk/a/f/i$i;->n(Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Lk/a/f/k;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 5
    :cond_0
    invoke-virtual {p2}, Lk/a/f/a;->d()C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_1

    .line 6
    invoke-virtual {p0, p1, p2}, Lk/a/f/l$d;->g(Lk/a/f/k;Lk/a/f/a;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lk/a/f/k;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Lk/a/f/k;->h()V

    .line 9
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 10
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0, p1, p2}, Lk/a/f/l$d;->g(Lk/a/f/k;Lk/a/f/a;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p1}, Lk/a/f/k;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    sget-object p2, Lk/a/f/l;->P:Lk/a/f/l;

    .line 14
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p0, p1, p2}, Lk/a/f/l$d;->g(Lk/a/f/k;Lk/a/f/a;)V

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {p1}, Lk/a/f/k;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    sget-object p2, Lk/a/f/l;->H:Lk/a/f/l;

    .line 18
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 19
    :cond_6
    invoke-virtual {p0, p1, p2}, Lk/a/f/l$d;->g(Lk/a/f/k;Lk/a/f/a;)V

    :goto_0
    return-void
.end method

.method public final g(Lk/a/f/k;Lk/a/f/a;)V
    .locals 2

    const-string v0, "</"

    .line 1
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lk/a/f/k;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lk/a/f/k;->f(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lk/a/f/a;->v()V

    .line 3
    sget-object p2, Lk/a/f/l;->c:Lk/a/f/l;

    .line 4
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    return-void
.end method
