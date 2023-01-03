.class public final enum Lk/a/f/l$r;
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

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lk/a/f/k;->d(Z)Lk/a/f/i$i;

    .line 3
    iget-object v0, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    invoke-virtual {p2}, Lk/a/f/a;->k()C

    move-result v1

    invoke-virtual {v0, v1}, Lk/a/f/i$i;->m(C)V

    .line 4
    iget-object v0, p1, Lk/a/f/k;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lk/a/f/a;->k()C

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    sget-object p2, Lk/a/f/l;->A:Lk/a/f/l;

    .line 6
    iget-object v0, p1, Lk/a/f/k;->a:Lk/a/f/a;

    invoke-virtual {v0}, Lk/a/f/a;->a()V

    .line 7
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    :cond_0
    const-string p2, "</"

    .line 8
    invoke-virtual {p1, p2}, Lk/a/f/k;->f(Ljava/lang/String;)V

    .line 9
    sget-object p2, Lk/a/f/l;->v:Lk/a/f/l;

    .line 10
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    :goto_0
    return-void
.end method
