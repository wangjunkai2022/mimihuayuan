.class public abstract Lk/a/f/m;
.super Ljava/lang/Object;
.source "TreeBuilder.java"


# instance fields
.field public a:Lk/a/f/g;

.field public b:Lk/a/f/a;

.field public c:Lk/a/f/k;

.field public d:Lk/a/e/f;

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lk/a/e/h;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/String;

.field public g:Lk/a/f/i;

.field public h:Lk/a/f/f;

.field public i:Lk/a/f/i$h;

.field public j:Lk/a/f/i$g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk/a/f/i$h;

    invoke-direct {v0}, Lk/a/f/i$h;-><init>()V

    iput-object v0, p0, Lk/a/f/m;->i:Lk/a/f/i$h;

    .line 3
    new-instance v0, Lk/a/f/i$g;

    invoke-direct {v0}, Lk/a/f/i$g;-><init>()V

    iput-object v0, p0, Lk/a/f/m;->j:Lk/a/f/i$g;

    return-void
.end method


# virtual methods
.method public a()Lk/a/e/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/e/h;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b(Ljava/io/Reader;Ljava/lang/String;Lk/a/f/g;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Lk/a/e/f;

    invoke-direct {v0, p2}, Lk/a/e/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lk/a/f/m;->d:Lk/a/e/f;

    .line 2
    iput-object p3, v0, Lk/a/e/f;->j:Lk/a/f/g;

    .line 3
    iput-object p3, p0, Lk/a/f/m;->a:Lk/a/f/g;

    .line 4
    iget-object v0, p3, Lk/a/f/g;->b:Lk/a/f/f;

    .line 5
    iput-object v0, p0, Lk/a/f/m;->h:Lk/a/f/f;

    .line 6
    new-instance v0, Lk/a/f/a;

    const v1, 0x8000

    .line 7
    invoke-direct {v0, p1, v1}, Lk/a/f/a;-><init>(Ljava/io/Reader;I)V

    .line 8
    iput-object v0, p0, Lk/a/f/m;->b:Lk/a/f/a;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lk/a/f/m;->g:Lk/a/f/i;

    .line 10
    new-instance p1, Lk/a/f/k;

    iget-object v0, p0, Lk/a/f/m;->b:Lk/a/f/a;

    .line 11
    iget-object p3, p3, Lk/a/f/g;->a:Lk/a/f/e;

    .line 12
    invoke-direct {p1, v0, p3}, Lk/a/f/k;-><init>(Lk/a/f/a;Lk/a/f/e;)V

    iput-object p1, p0, Lk/a/f/m;->c:Lk/a/f/k;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0x20

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    .line 14
    iput-object p2, p0, Lk/a/f/m;->f:Ljava/lang/String;

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BaseURI must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String input must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract c(Lk/a/f/i;)Z
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/f/m;->g:Lk/a/f/i;

    iget-object v1, p0, Lk/a/f/m;->j:Lk/a/f/i$g;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lk/a/f/i$g;

    invoke-direct {v0}, Lk/a/f/i$g;-><init>()V

    .line 3
    iput-object p1, v0, Lk/a/f/i$i;->b:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lj/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v0}, Lk/a/f/m;->c(Lk/a/f/i;)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-virtual {v1}, Lk/a/f/i$i;->s()Lk/a/f/i$i;

    .line 7
    iput-object p1, v1, Lk/a/f/i$i;->b:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lj/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, v1}, Lk/a/f/m;->c(Lk/a/f/i;)Z

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/f/m;->i:Lk/a/f/i$h;

    .line 2
    iget-object v1, p0, Lk/a/f/m;->g:Lk/a/f/i;

    if-ne v1, v0, :cond_0

    .line 3
    new-instance v0, Lk/a/f/i$h;

    invoke-direct {v0}, Lk/a/f/i$h;-><init>()V

    .line 4
    iput-object p1, v0, Lk/a/f/i$i;->b:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lj/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 6
    move-object p1, p0

    check-cast p1, Lk/a/f/b;

    .line 7
    iput-object v0, p1, Lk/a/f/m;->g:Lk/a/f/i;

    .line 8
    iget-object v1, p1, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v1, v0, p1}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 9
    :cond_0
    invoke-virtual {v0}, Lk/a/f/i$h;->s()Lk/a/f/i$i;

    .line 10
    iput-object p1, v0, Lk/a/f/i$i;->b:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lj/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 12
    move-object p1, p0

    check-cast p1, Lk/a/f/b;

    .line 13
    iput-object v0, p1, Lk/a/f/m;->g:Lk/a/f/i;

    .line 14
    iget-object v1, p1, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v1, v0, p1}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1
.end method
