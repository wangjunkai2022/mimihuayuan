.class public final enum Lk/a/f/c$v;
.super Lk/a/f/c;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/f/c;
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
    invoke-direct {p0, p1, p2, v0}, Lk/a/f/c;-><init>(Ljava/lang/String;ILk/a/f/c$k;)V

    return-void
.end method


# virtual methods
.method public c(Lk/a/f/i;Lk/a/f/b;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lk/a/f/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lk/a/f/i$c;

    .line 3
    invoke-virtual {p2, p1}, Lk/a/f/b;->u(Lk/a/f/i$c;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lk/a/f/i;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 6
    invoke-virtual {p2}, Lk/a/f/b;->E()Lk/a/e/h;

    .line 7
    iget-object v0, p2, Lk/a/f/b;->l:Lk/a/f/c;

    .line 8
    iput-object v0, p2, Lk/a/f/b;->k:Lk/a/f/c;

    .line 9
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 10
    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 11
    :cond_1
    invoke-virtual {p1}, Lk/a/f/i;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p2}, Lk/a/f/b;->E()Lk/a/e/h;

    .line 13
    iget-object p1, p2, Lk/a/f/b;->l:Lk/a/f/c;

    .line 14
    iput-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
