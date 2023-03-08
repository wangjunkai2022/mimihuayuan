.class public final enum Lk/a/f/c$a;
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
    .locals 6

    .line 1
    iget-object v0, p1, Lk/a/f/i;->a:Lk/a/f/i$j;

    sget-object v1, Lk/a/f/i$j;->e:Lk/a/f/i$j;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    check-cast p1, Lk/a/f/i$c;

    .line 3
    iget-object v0, p1, Lk/a/f/i$c;->b:Ljava/lang/String;

    .line 4
    sget-object v1, Lk/a/f/c;->x:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v3

    .line 7
    :cond_0
    iget-object p2, p2, Lk/a/f/b;->r:Ljava/util/List;

    .line 8
    iget-object p1, p1, Lk/a/f/i$c;->b:Ljava/lang/String;

    .line 9
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2

    .line 10
    :cond_1
    iget-object v0, p2, Lk/a/f/b;->r:Ljava/util/List;

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 12
    iget-object v0, p2, Lk/a/f/b;->r:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 14
    invoke-static {v1}, Lk/a/d/a;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 15
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 16
    invoke-virtual {p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object v4

    .line 17
    iget-object v4, v4, Lk/a/e/h;->c:Lk/a/f/h;

    .line 18
    iget-object v4, v4, Lk/a/f/h;->b:Ljava/lang/String;

    .line 19
    sget-object v5, Lk/a/f/c$x;->C:[Ljava/lang/String;

    invoke-static {v4, v5}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 20
    iput-boolean v2, p2, Lk/a/f/b;->u:Z

    .line 21
    new-instance v4, Lk/a/f/i$c;

    invoke-direct {v4}, Lk/a/f/i$c;-><init>()V

    .line 22
    iput-object v1, v4, Lk/a/f/i$c;->b:Ljava/lang/String;

    .line 23
    sget-object v1, Lk/a/f/c;->g:Lk/a/f/c;

    .line 24
    iput-object v4, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 25
    invoke-virtual {v1, v4, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    .line 26
    iput-boolean v3, p2, Lk/a/f/b;->u:Z

    goto :goto_0

    .line 27
    :cond_2
    new-instance v4, Lk/a/f/i$c;

    invoke-direct {v4}, Lk/a/f/i$c;-><init>()V

    .line 28
    iput-object v1, v4, Lk/a/f/i$c;->b:Ljava/lang/String;

    .line 29
    sget-object v1, Lk/a/f/c;->g:Lk/a/f/c;

    .line 30
    iput-object v4, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 31
    invoke-virtual {v1, v4, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    goto :goto_0

    .line 32
    :cond_3
    new-instance v4, Lk/a/f/i$c;

    invoke-direct {v4}, Lk/a/f/i$c;-><init>()V

    .line 33
    iput-object v1, v4, Lk/a/f/i$c;->b:Ljava/lang/String;

    .line 34
    invoke-virtual {p2, v4}, Lk/a/f/b;->u(Lk/a/f/i$c;)V

    goto :goto_0

    .line 35
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p2, Lk/a/f/b;->r:Ljava/util/List;

    .line 36
    :cond_5
    iget-object v0, p2, Lk/a/f/b;->l:Lk/a/f/c;

    .line 37
    iput-object v0, p2, Lk/a/f/b;->k:Lk/a/f/c;

    .line 38
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 39
    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1
.end method
