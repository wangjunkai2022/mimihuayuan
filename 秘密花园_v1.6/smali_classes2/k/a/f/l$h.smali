.class public final enum Lk/a/f/l$h;
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
    invoke-virtual {p2}, Lk/a/f/a;->d()C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    const v1, 0xffff

    const-string v2, "<"

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p1, v2}, Lk/a/f/k;->f(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lk/a/f/a;->v()V

    .line 4
    sget-object p2, Lk/a/f/l;->f:Lk/a/f/l;

    .line 5
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v2}, Lk/a/f/k;->f(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, p0}, Lk/a/f/k;->i(Lk/a/f/l;)V

    .line 8
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 9
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 10
    :cond_1
    iget-object p2, p1, Lk/a/f/k;->h:Ljava/lang/StringBuilder;

    invoke-static {p2}, Lk/a/f/i;->h(Ljava/lang/StringBuilder;)V

    .line 11
    sget-object p2, Lk/a/f/l;->r:Lk/a/f/l;

    .line 12
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    :cond_2
    const-string p2, "<!"

    .line 13
    invoke-virtual {p1, p2}, Lk/a/f/k;->f(Ljava/lang/String;)V

    .line 14
    sget-object p2, Lk/a/f/l;->t:Lk/a/f/l;

    .line 15
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    :goto_0
    return-void
.end method
