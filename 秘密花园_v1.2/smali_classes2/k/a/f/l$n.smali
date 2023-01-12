.class public final enum Lk/a/f/l$n;
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
    invoke-virtual {p2}, Lk/a/f/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Lk/a/f/k;->i(Lk/a/f/l;)V

    .line 3
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 4
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    return-void

    .line 5
    :cond_0
    invoke-virtual {p2}, Lk/a/f/a;->k()C

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [C

    .line 6
    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Lk/a/f/a;->h([C)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Lk/a/f/k;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object p2, Lk/a/f/l;->y:Lk/a/f/l;

    .line 9
    iget-object v0, p1, Lk/a/f/k;->a:Lk/a/f/a;

    invoke-virtual {v0}, Lk/a/f/a;->a()V

    .line 10
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1, v1}, Lk/a/f/k;->e(C)V

    .line 12
    sget-object p2, Lk/a/f/l;->w:Lk/a/f/l;

    .line 13
    iget-object v0, p1, Lk/a/f/k;->a:Lk/a/f/a;

    invoke-virtual {v0}, Lk/a/f/a;->a()V

    .line 14
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p1, p0}, Lk/a/f/k;->k(Lk/a/f/l;)V

    .line 16
    invoke-virtual {p2}, Lk/a/f/a;->a()V

    const p2, 0xfffd

    .line 17
    invoke-virtual {p1, p2}, Lk/a/f/k;->e(C)V

    :goto_0
    return-void

    :array_0
    .array-data 2
        0x2ds
        0x3cs
        0x0s
    .end array-data
.end method
