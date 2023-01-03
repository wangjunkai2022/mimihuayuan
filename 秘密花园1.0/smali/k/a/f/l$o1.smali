.class public final enum Lk/a/f/l$o1;
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
    .locals 1

    .line 1
    invoke-virtual {p2}, Lk/a/f/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Lk/a/f/k;->i(Lk/a/f/l;)V

    const-string p2, "</"

    .line 3
    invoke-virtual {p1, p2}, Lk/a/f/k;->f(Ljava/lang/String;)V

    .line 4
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 5
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Lk/a/f/a;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2}, Lk/a/f/k;->d(Z)Lk/a/f/i$i;

    .line 8
    sget-object p2, Lk/a/f/l;->j:Lk/a/f/l;

    .line 9
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e

    .line 10
    invoke-virtual {p2, v0}, Lk/a/f/a;->p(C)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p1, p0}, Lk/a/f/k;->k(Lk/a/f/l;)V

    .line 12
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 13
    iget-object v0, p1, Lk/a/f/k;->a:Lk/a/f/a;

    invoke-virtual {v0}, Lk/a/f/a;->a()V

    .line 14
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p1, p0}, Lk/a/f/k;->k(Lk/a/f/l;)V

    .line 16
    invoke-virtual {p1}, Lk/a/f/k;->c()V

    .line 17
    sget-object p2, Lk/a/f/l;->Q:Lk/a/f/l;

    .line 18
    iget-object v0, p1, Lk/a/f/k;->a:Lk/a/f/a;

    invoke-virtual {v0}, Lk/a/f/a;->a()V

    .line 19
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    :goto_0
    return-void
.end method
