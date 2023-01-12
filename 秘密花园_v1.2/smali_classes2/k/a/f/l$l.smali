.class public final enum Lk/a/f/l$l;
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

    const/16 v0, 0x2d

    .line 1
    invoke-virtual {p2, v0}, Lk/a/f/a;->p(C)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lk/a/f/k;->e(C)V

    .line 3
    sget-object p2, Lk/a/f/l;->u:Lk/a/f/l;

    .line 4
    iget-object v0, p1, Lk/a/f/k;->a:Lk/a/f/a;

    invoke-virtual {v0}, Lk/a/f/a;->a()V

    .line 5
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 6
    :cond_0
    sget-object p2, Lk/a/f/l;->f:Lk/a/f/l;

    .line 7
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    :goto_0
    return-void
.end method
