.class public final enum Lk/a/f/l$e0;
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
    sget-object v0, Lk/a/f/l;->q0:[C

    invoke-virtual {p2, v0}, Lk/a/f/a;->i([C)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    .line 3
    iget-object v1, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    invoke-virtual {v1, v0}, Lk/a/f/i$i;->k(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    .line 5
    iput-boolean v2, v0, Lk/a/f/i$i;->g:Z

    .line 6
    :goto_0
    invoke-virtual {p2}, Lk/a/f/a;->d()C

    move-result p2

    if-eqz p2, :cond_5

    const/16 v0, 0x22

    if-eq p2, v0, :cond_4

    const/16 v1, 0x26

    if-eq p2, v1, :cond_2

    const v0, 0xffff

    if-eq p2, v0, :cond_1

    .line 7
    iget-object p1, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    invoke-virtual {p1, p2}, Lk/a/f/i$i;->j(C)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p1, p0}, Lk/a/f/k;->i(Lk/a/f/l;)V

    .line 9
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 10
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lk/a/f/k;->b(Ljava/lang/Character;Z)[I

    move-result-object p2

    if-eqz p2, :cond_3

    .line 12
    iget-object p1, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    invoke-virtual {p1, p2}, Lk/a/f/i$i;->l([I)V

    goto :goto_1

    .line 13
    :cond_3
    iget-object p1, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    invoke-virtual {p1, v1}, Lk/a/f/i$i;->j(C)V

    goto :goto_1

    .line 14
    :cond_4
    sget-object p2, Lk/a/f/l;->O:Lk/a/f/l;

    .line 15
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {p1, p0}, Lk/a/f/k;->k(Lk/a/f/l;)V

    .line 17
    iget-object p1, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lk/a/f/i$i;->j(C)V

    :goto_1
    return-void
.end method
