.class public final enum Lk/a/f/l$n1;
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
    invoke-virtual {p2}, Lk/a/f/a;->k()C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p2}, Lk/a/f/a;->r()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p2}, Lk/a/f/k;->d(Z)Lk/a/f/i$i;

    .line 4
    sget-object p2, Lk/a/f/l;->j:Lk/a/f/l;

    .line 5
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, p0}, Lk/a/f/k;->k(Lk/a/f/l;)V

    const/16 p2, 0x3c

    .line 7
    invoke-virtual {p1, p2}, Lk/a/f/k;->e(C)V

    .line 8
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 9
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Lk/a/f/k;->c()V

    .line 11
    sget-object p2, Lk/a/f/l;->Q:Lk/a/f/l;

    .line 12
    iget-object v0, p1, Lk/a/f/k;->a:Lk/a/f/a;

    invoke-virtual {v0}, Lk/a/f/a;->a()V

    .line 13
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 14
    :cond_2
    sget-object p2, Lk/a/f/l;->i:Lk/a/f/l;

    .line 15
    iget-object v0, p1, Lk/a/f/k;->a:Lk/a/f/a;

    invoke-virtual {v0}, Lk/a/f/a;->a()V

    .line 16
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 17
    :cond_3
    sget-object p2, Lk/a/f/l;->R:Lk/a/f/l;

    .line 18
    iget-object v0, p1, Lk/a/f/k;->a:Lk/a/f/a;

    invoke-virtual {v0}, Lk/a/f/a;->a()V

    .line 19
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    :goto_0
    return-void
.end method
