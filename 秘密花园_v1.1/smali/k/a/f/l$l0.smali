.class public final enum Lk/a/f/l$l0;
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

    const-string v0, "--"

    .line 1
    invoke-virtual {p2, v0}, Lk/a/f/a;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p1, Lk/a/f/k;->n:Lk/a/f/i$d;

    invoke-virtual {p2}, Lk/a/f/i$d;->g()Lk/a/f/i;

    .line 3
    sget-object p2, Lk/a/f/l;->S:Lk/a/f/l;

    .line 4
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    :cond_0
    const-string v0, "DOCTYPE"

    .line 5
    invoke-virtual {p2, v0}, Lk/a/f/a;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object p2, Lk/a/f/l;->Y:Lk/a/f/l;

    .line 7
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    :cond_1
    const-string v0, "[CDATA["

    .line 8
    invoke-virtual {p2, v0}, Lk/a/f/a;->n(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    iget-object p2, p1, Lk/a/f/k;->h:Ljava/lang/StringBuilder;

    invoke-static {p2}, Lk/a/f/i;->h(Ljava/lang/StringBuilder;)V

    .line 10
    sget-object p2, Lk/a/f/l;->o0:Lk/a/f/l;

    .line 11
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1, p0}, Lk/a/f/k;->k(Lk/a/f/l;)V

    .line 13
    invoke-virtual {p1}, Lk/a/f/k;->c()V

    .line 14
    sget-object p2, Lk/a/f/l;->Q:Lk/a/f/l;

    .line 15
    iget-object v0, p1, Lk/a/f/k;->a:Lk/a/f/a;

    invoke-virtual {v0}, Lk/a/f/a;->a()V

    .line 16
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    :goto_0
    return-void
.end method
