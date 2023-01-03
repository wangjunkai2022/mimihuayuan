.class public Lk/a/e/f;
.super Lk/a/e/h;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/e/f$a;,
        Lk/a/e/f$b;
    }
.end annotation


# instance fields
.field public i:Lk/a/e/f$a;

.field public j:Lk/a/f/g;

.field public k:Lk/a/e/f$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lk/a/f/f;->c:Lk/a/f/f;

    const-string v1, "#root"

    invoke-static {v1, v0}, Lk/a/f/h;->a(Ljava/lang/String;Lk/a/f/f;)Lk/a/f/h;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, p1, v1}, Lk/a/e/h;-><init>(Lk/a/f/h;Ljava/lang/String;Lk/a/e/b;)V

    .line 3
    new-instance p1, Lk/a/e/f$a;

    invoke-direct {p1}, Lk/a/e/f$a;-><init>()V

    iput-object p1, p0, Lk/a/e/f;->i:Lk/a/e/f$a;

    .line 4
    sget-object p1, Lk/a/e/f$b;->a:Lk/a/e/f$b;

    iput-object p1, p0, Lk/a/e/f;->k:Lk/a/e/f$b;

    return-void
.end method


# virtual methods
.method public bridge synthetic E()Lk/a/e/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/e/f;->P()Lk/a/e/f;

    move-result-object v0

    return-object v0
.end method

.method public P()Lk/a/e/f;
    .locals 2

    .line 1
    invoke-super {p0}, Lk/a/e/h;->E()Lk/a/e/h;

    move-result-object v0

    check-cast v0, Lk/a/e/f;

    .line 2
    iget-object v1, p0, Lk/a/e/f;->i:Lk/a/e/f$a;

    invoke-virtual {v1}, Lk/a/e/f$a;->a()Lk/a/e/f$a;

    move-result-object v1

    iput-object v1, v0, Lk/a/e/f;->i:Lk/a/e/f$a;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lk/a/e/f;->P()Lk/a/e/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Lk/a/e/l;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/e/f;->P()Lk/a/e/f;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    const-string v0, "#document"

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Lk/a/d/a;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lk/a/e/h;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    iget-object v3, p0, Lk/a/e/h;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/e/l;

    if-eqz v3, :cond_0

    .line 4
    new-instance v4, Lk/a/e/l$a;

    invoke-static {v3}, Lj/b;->t(Lk/a/e/l;)Lk/a/e/f$a;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lk/a/e/l$a;-><init>(Ljava/lang/Appendable;Lk/a/e/f$a;)V

    invoke-static {v4, v3}, Lj/b;->D(Lk/a/g/f;Lk/a/e/l;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    throw v0

    .line 5
    :cond_1
    invoke-static {v0}, Lk/a/d/a;->j(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {p0}, Lj/b;->t(Lk/a/e/l;)Lk/a/e/f$a;

    move-result-object v1

    .line 7
    iget-boolean v1, v1, Lk/a/e/f$a;->e:Z

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method
