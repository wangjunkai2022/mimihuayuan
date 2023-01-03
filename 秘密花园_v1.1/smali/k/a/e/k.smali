.class public abstract Lk/a/e/k;
.super Lk/a/e/l;
.source "LeafNode.java"


# static fields
.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk/a/e/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lk/a/e/k;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/a/e/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/e/k;->c:Ljava/lang/Object;

    instance-of v1, v0, Lk/a/e/b;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lk/a/e/b;

    invoke-direct {v1}, Lk/a/e/b;-><init>()V

    .line 3
    iput-object v1, p0, Lk/a/e/k;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lk/a/e/l;->q()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lk/a/e/b;->n(Ljava/lang/String;Ljava/lang/String;)Lk/a/e/b;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk/a/e/k;->A()V

    .line 2
    invoke-super {p0, p1}, Lk/a/e/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Lj/b;->s(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lk/a/e/k;->c:Ljava/lang/Object;

    instance-of v0, v0, Lk/a/e/b;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lk/a/e/l;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk/a/e/k;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lk/a/e/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/e/k;->c:Ljava/lang/Object;

    instance-of v0, v0, Lk/a/e/b;

    if-nez v0, :cond_0

    const-string v0, "#doctype"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p2, p0, Lk/a/e/k;->c:Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lk/a/e/k;->A()V

    .line 5
    invoke-super {p0, p1, p2}, Lk/a/e/l;->c(Ljava/lang/String;Ljava/lang/String;)Lk/a/e/l;

    :goto_0
    return-object p0
.end method

.method public final d()Lk/a/e/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/e/k;->A()V

    .line 2
    iget-object v0, p0, Lk/a/e/k;->c:Ljava/lang/Object;

    check-cast v0, Lk/a/e/b;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/e/l;->a:Lk/a/e/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lk/a/e/l;->a:Lk/a/e/l;

    .line 3
    invoke-virtual {v0}, Lk/a/e/l;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i(Lk/a/e/l;)Lk/a/e/l;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lk/a/e/l;->i(Lk/a/e/l;)Lk/a/e/l;

    move-result-object p1

    check-cast p1, Lk/a/e/k;

    .line 2
    iget-object v0, p0, Lk/a/e/k;->c:Ljava/lang/Object;

    instance-of v1, v0, Lk/a/e/b;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lk/a/e/b;

    invoke-virtual {v0}, Lk/a/e/b;->e()Lk/a/e/b;

    move-result-object v0

    iput-object v0, p1, Lk/a/e/k;->c:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public k()Lk/a/e/l;
    .locals 0

    return-object p0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk/a/e/l;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lk/a/e/k;->d:Ljava/util/List;

    return-object v0
.end method

.method public m(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk/a/e/k;->A()V

    .line 2
    invoke-super {p0, p1}, Lk/a/e/l;->m(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/e/k;->c:Ljava/lang/Object;

    instance-of v0, v0, Lk/a/e/b;

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/e/l;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk/a/e/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
