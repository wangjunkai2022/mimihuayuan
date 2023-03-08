.class public final enum Lk/a/f/l$a;
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
    .locals 13

    .line 1
    invoke-virtual {p2}, Lk/a/f/a;->b()V

    .line 2
    iget v0, p2, Lk/a/f/a;->e:I

    .line 3
    iget v1, p2, Lk/a/f/a;->c:I

    .line 4
    iget-object v2, p2, Lk/a/f/a;->a:[C

    move v3, v0

    :goto_0
    const/16 v4, 0xd

    const/16 v5, 0xc

    const/16 v6, 0xa

    const/16 v7, 0x9

    const/16 v8, 0x3e

    const/16 v9, 0x3c

    const/16 v10, 0x2f

    const/16 v11, 0x20

    if-ge v3, v1, :cond_0

    .line 5
    aget-char v12, v2, v3

    if-eqz v12, :cond_0

    if-eq v12, v11, :cond_0

    if-eq v12, v10, :cond_0

    if-eq v12, v9, :cond_0

    if-eq v12, v8, :cond_0

    if-eq v12, v7, :cond_0

    if-eq v12, v6, :cond_0

    if-eq v12, v5, :cond_0

    if-eq v12, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iput v3, p2, Lk/a/f/a;->e:I

    if-le v3, v0, :cond_1

    .line 7
    iget-object v1, p2, Lk/a/f/a;->a:[C

    iget-object v2, p2, Lk/a/f/a;->h:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lk/a/f/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 8
    :goto_1
    iget-object v1, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    invoke-virtual {v1, v0}, Lk/a/f/i$i;->n(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lk/a/f/a;->d()C

    move-result v0

    if-eqz v0, :cond_7

    if-eq v0, v11, :cond_6

    if-eq v0, v10, :cond_5

    if-eq v0, v9, :cond_3

    if-eq v0, v8, :cond_4

    const p2, 0xffff

    if-eq v0, p2, :cond_2

    if-eq v0, v7, :cond_6

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_6

    .line 10
    iget-object p1, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    invoke-virtual {p1, v0}, Lk/a/f/i$i;->m(C)V

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {p1, p0}, Lk/a/f/k;->i(Lk/a/f/l;)V

    .line 12
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 13
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {p2}, Lk/a/f/a;->v()V

    .line 15
    invoke-virtual {p1, p0}, Lk/a/f/k;->k(Lk/a/f/l;)V

    .line 16
    :cond_4
    invoke-virtual {p1}, Lk/a/f/k;->h()V

    .line 17
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 18
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_2

    .line 19
    :cond_5
    sget-object p2, Lk/a/f/l;->P:Lk/a/f/l;

    .line 20
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_2

    .line 21
    :cond_6
    sget-object p2, Lk/a/f/l;->H:Lk/a/f/l;

    .line 22
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_2

    .line 23
    :cond_7
    iget-object p1, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    .line 24
    sget-object p2, Lk/a/f/l;->t0:Ljava/lang/String;

    .line 25
    invoke-virtual {p1, p2}, Lk/a/f/i$i;->n(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
