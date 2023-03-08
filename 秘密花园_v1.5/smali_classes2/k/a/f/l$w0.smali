.class public final enum Lk/a/f/l$w0;
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
    .locals 3

    .line 1
    invoke-virtual {p2}, Lk/a/f/a;->l()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Lk/a/f/k;->i(Lk/a/f/l;)V

    .line 3
    iget-object p2, p1, Lk/a/f/k;->m:Lk/a/f/i$e;

    iput-boolean v1, p2, Lk/a/f/i$e;->f:Z

    .line 4
    invoke-virtual {p1, p2}, Lk/a/f/k;->g(Lk/a/f/i;)V

    .line 5
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 6
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    return-void

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [C

    .line 7
    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Lk/a/f/a;->q([C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p2}, Lk/a/f/a;->a()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e

    .line 9
    invoke-virtual {p2, v0}, Lk/a/f/a;->p(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object p2, p1, Lk/a/f/k;->m:Lk/a/f/i$e;

    invoke-virtual {p1, p2}, Lk/a/f/k;->g(Lk/a/f/i;)V

    .line 11
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 12
    iget-object v0, p1, Lk/a/f/k;->a:Lk/a/f/a;

    invoke-virtual {v0}, Lk/a/f/a;->a()V

    .line 13
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    :cond_2
    const-string v0, "PUBLIC"

    .line 14
    invoke-virtual {p2, v0}, Lk/a/f/a;->o(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 15
    iget-object p2, p1, Lk/a/f/k;->m:Lk/a/f/i$e;

    iput-object v0, p2, Lk/a/f/i$e;->c:Ljava/lang/String;

    .line 16
    sget-object p2, Lk/a/f/l;->c0:Lk/a/f/l;

    .line 17
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    :cond_3
    const-string v0, "SYSTEM"

    .line 18
    invoke-virtual {p2, v0}, Lk/a/f/a;->o(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 19
    iget-object p2, p1, Lk/a/f/k;->m:Lk/a/f/i$e;

    iput-object v0, p2, Lk/a/f/i$e;->c:Ljava/lang/String;

    .line 20
    sget-object p2, Lk/a/f/l;->i0:Lk/a/f/l;

    .line 21
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 22
    :cond_4
    invoke-virtual {p1, p0}, Lk/a/f/k;->k(Lk/a/f/l;)V

    .line 23
    iget-object p2, p1, Lk/a/f/k;->m:Lk/a/f/i$e;

    iput-boolean v1, p2, Lk/a/f/i$e;->f:Z

    .line 24
    sget-object p2, Lk/a/f/l;->n0:Lk/a/f/l;

    .line 25
    iget-object v0, p1, Lk/a/f/k;->a:Lk/a/f/a;

    invoke-virtual {v0}, Lk/a/f/a;->a()V

    .line 26
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    :goto_0
    return-void

    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
    .end array-data
.end method
