.class public Lk/a/e/h;
.super Lk/a/e/l;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/e/h$b;
    }
.end annotation


# static fields
.field public static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk/a/e/l;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/lang/String;


# instance fields
.field public c:Lk/a/f/h;

.field public d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/List<",
            "Lk/a/e/h;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk/a/e/l;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lk/a/e/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lk/a/e/h;->g:Ljava/util/List;

    const-string v0, "\\s+"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    const-string v0, "/baseUri"

    .line 3
    sput-object v0, Lk/a/e/h;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lk/a/f/h;Ljava/lang/String;Lk/a/e/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk/a/e/l;-><init>()V

    .line 2
    invoke-static {p1}, Lj/b;->s(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lk/a/e/h;->g:Ljava/util/List;

    iput-object v0, p0, Lk/a/e/h;->e:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lk/a/e/h;->f:Lk/a/e/b;

    .line 5
    iput-object p1, p0, Lk/a/e/h;->c:Lk/a/f/h;

    if-eqz p2, :cond_0

    .line 6
    invoke-static {p2}, Lj/b;->s(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lk/a/e/h;->d()Lk/a/e/b;

    move-result-object p1

    sget-object p3, Lk/a/e/h;->h:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Lk/a/e/b;->n(Ljava/lang/String;Ljava/lang/String;)Lk/a/e/b;

    :cond_0
    return-void
.end method

.method public static A(Ljava/lang/StringBuilder;Lk/a/e/n;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lk/a/e/k;->z()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lk/a/e/l;->a:Lk/a/e/l;

    invoke-static {v1}, Lk/a/e/h;->M(Lk/a/e/l;)Z

    move-result v1

    if-nez v1, :cond_1

    instance-of p1, p1, Lk/a/e/c;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lk/a/e/n;->C(Ljava/lang/StringBuilder;)Z

    move-result p1

    invoke-static {p0, v0, p1}, Lk/a/d/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-void
.end method

.method public static K(Lk/a/e/h;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lk/a/e/h;",
            ">(",
            "Lk/a/e/h;",
            "Ljava/util/List<",
            "TE;>;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static M(Lk/a/e/l;)Z
    .locals 4

    .line 1
    instance-of v0, p0, Lk/a/e/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Lk/a/e/h;

    const/4 v0, 0x0

    .line 3
    :cond_0
    iget-object v2, p0, Lk/a/e/h;->c:Lk/a/f/h;

    .line 4
    iget-boolean v2, v2, Lk/a/f/h;->g:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    .line 5
    :cond_1
    iget-object p0, p0, Lk/a/e/l;->a:Lk/a/e/l;

    check-cast p0, Lk/a/e/h;

    add-int/2addr v0, v3

    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    if-nez p0, :cond_0

    :cond_2
    return v1
.end method


# virtual methods
.method public B(Ljava/lang/String;Ljava/lang/String;)Lk/a/e/h;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lk/a/e/l;->c(Ljava/lang/String;Ljava/lang/String;)Lk/a/e/l;

    return-object p0
.end method

.method public final C()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk/a/e/h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/a/e/h;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3

    .line 2
    :cond_0
    iget-object v0, p0, Lk/a/e/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    iget-object v3, p0, Lk/a/e/h;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/e/l;

    .line 5
    instance-of v4, v3, Lk/a/e/h;

    if-eqz v4, :cond_1

    .line 6
    check-cast v3, Lk/a/e/h;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lk/a/e/h;->d:Ljava/lang/ref/WeakReference;

    move-object v0, v1

    :cond_3
    return-object v0
.end method

.method public D()Lk/a/g/c;
    .locals 2

    .line 1
    new-instance v0, Lk/a/g/c;

    invoke-virtual {p0}, Lk/a/e/h;->C()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lk/a/g/c;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public E()Lk/a/e/h;
    .locals 1

    .line 1
    invoke-super {p0}, Lk/a/e/l;->h()Lk/a/e/l;

    move-result-object v0

    check-cast v0, Lk/a/e/h;

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lk/a/d/a;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lk/a/e/h;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/e/l;

    .line 3
    instance-of v3, v2, Lk/a/e/e;

    if-eqz v3, :cond_1

    .line 4
    check-cast v2, Lk/a/e/e;

    .line 5
    invoke-virtual {v2}, Lk/a/e/k;->z()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_1
    instance-of v3, v2, Lk/a/e/d;

    if-eqz v3, :cond_2

    .line 8
    check-cast v2, Lk/a/e/d;

    .line 9
    invoke-virtual {v2}, Lk/a/e/k;->z()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_2
    instance-of v3, v2, Lk/a/e/h;

    if-eqz v3, :cond_3

    .line 12
    check-cast v2, Lk/a/e/h;

    .line 13
    invoke-virtual {v2}, Lk/a/e/h;->F()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 15
    :cond_3
    instance-of v3, v2, Lk/a/e/c;

    if-eqz v3, :cond_0

    .line 16
    check-cast v2, Lk/a/e/c;

    .line 17
    invoke-virtual {v2}, Lk/a/e/k;->z()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 19
    :cond_4
    invoke-static {v0}, Lk/a/d/a;->j(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public G()I
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/e/l;->a:Lk/a/e/l;

    move-object v1, v0

    check-cast v1, Lk/a/e/h;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    check-cast v0, Lk/a/e/h;

    .line 3
    invoke-virtual {v0}, Lk/a/e/h;->C()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lk/a/e/h;->K(Lk/a/e/h;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public H(Ljava/lang/String;)Lk/a/e/h;
    .locals 1

    .line 1
    invoke-static {p1}, Lj/b;->q(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lk/a/g/d$p;

    invoke-direct {v0, p1}, Lk/a/g/d$p;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lj/b;->j(Lk/a/g/d;Lk/a/e/h;)Lk/a/g/c;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/a/e/h;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public I(Ljava/lang/String;)Lk/a/g/c;
    .locals 1

    .line 1
    invoke-static {p1}, Lj/b;->q(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lk/a/g/d$k;

    invoke-direct {v0, p1}, Lk/a/g/d$k;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lj/b;->j(Lk/a/g/d;Lk/a/e/h;)Lk/a/g/c;

    move-result-object p1

    return-object p1
.end method

.method public J(Ljava/lang/String;)Lk/a/g/c;
    .locals 1

    .line 1
    invoke-static {p1}, Lj/b;->q(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lj/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Lk/a/g/d$j0;

    invoke-direct {v0, p1}, Lk/a/g/d$j0;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lj/b;->j(Lk/a/g/d;Lk/a/e/h;)Lk/a/g/c;

    move-result-object p1

    return-object p1
.end method

.method public L()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lk/a/d/a;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lk/a/e/h;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/e/l;

    .line 3
    instance-of v3, v2, Lk/a/e/n;

    if-eqz v3, :cond_1

    .line 4
    check-cast v2, Lk/a/e/n;

    .line 5
    invoke-static {v0, v2}, Lk/a/e/h;->A(Ljava/lang/StringBuilder;Lk/a/e/n;)V

    goto :goto_0

    .line 6
    :cond_1
    instance-of v3, v2, Lk/a/e/h;

    if-eqz v3, :cond_0

    .line 7
    check-cast v2, Lk/a/e/h;

    .line 8
    iget-object v2, v2, Lk/a/e/h;->c:Lk/a/f/h;

    .line 9
    iget-object v2, v2, Lk/a/f/h;->a:Ljava/lang/String;

    const-string v3, "br"

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lk/a/e/n;->C(Ljava/lang/StringBuilder;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, " "

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {v0}, Lk/a/d/a;->j(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public N()Lk/a/e/h;
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/e/l;->a:Lk/a/e/l;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    check-cast v0, Lk/a/e/h;

    .line 3
    invoke-virtual {v0}, Lk/a/e/h;->C()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-static {p0, v0}, Lk/a/e/h;->K(Lk/a/e/h;Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_1

    add-int/lit8 v2, v2, -0x1

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/e/h;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public O()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lk/a/d/a;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    new-instance v1, Lk/a/e/h$a;

    invoke-direct {v1, p0, v0}, Lk/a/e/h$a;-><init>(Lk/a/e/h;Ljava/lang/StringBuilder;)V

    invoke-static {v1, p0}, Lj/b;->D(Lk/a/g/f;Lk/a/e/l;)V

    .line 3
    invoke-static {v0}, Lk/a/d/a;->j(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

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
    invoke-virtual {p0}, Lk/a/e/h;->E()Lk/a/e/h;

    move-result-object v0

    return-object v0
.end method

.method public d()Lk/a/e/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/e/h;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lk/a/e/b;

    invoke-direct {v0}, Lk/a/e/b;-><init>()V

    iput-object v0, p0, Lk/a/e/h;->f:Lk/a/e/b;

    .line 3
    :cond_0
    iget-object v0, p0, Lk/a/e/h;->f:Lk/a/e/b;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lk/a/e/h;->h:Ljava/lang/String;

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1}, Lk/a/e/h;->n()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lk/a/e/h;->f:Lk/a/e/b;

    invoke-virtual {v2, v0}, Lk/a/e/b;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v1, v1, Lk/a/e/h;->f:Lk/a/e/b;

    invoke-virtual {v1, v0}, Lk/a/e/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, v1, Lk/a/e/l;->a:Lk/a/e/l;

    check-cast v1, Lk/a/e/h;

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/e/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic h()Lk/a/e/l;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/e/h;->E()Lk/a/e/h;

    move-result-object v0

    return-object v0
.end method

.method public i(Lk/a/e/l;)Lk/a/e/l;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lk/a/e/l;->i(Lk/a/e/l;)Lk/a/e/l;

    move-result-object p1

    check-cast p1, Lk/a/e/h;

    .line 2
    iget-object v0, p0, Lk/a/e/h;->f:Lk/a/e/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lk/a/e/b;->e()Lk/a/e/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p1, Lk/a/e/h;->f:Lk/a/e/b;

    .line 3
    new-instance v0, Lk/a/e/h$b;

    iget-object v1, p0, Lk/a/e/h;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lk/a/e/h$b;-><init>(Lk/a/e/h;I)V

    iput-object v0, p1, Lk/a/e/h;->e:Ljava/util/List;

    .line 4
    iget-object v1, p0, Lk/a/e/h;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lk/a/c/a;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {p0}, Lk/a/e/h;->e()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lj/b;->s(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p1, v0}, Lk/a/e/l;->j(Ljava/lang/String;)V

    return-object p1
.end method

.method public j(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/a/e/h;->d()Lk/a/e/b;

    move-result-object v0

    sget-object v1, Lk/a/e/h;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lk/a/e/b;->n(Ljava/lang/String;Ljava/lang/String;)Lk/a/e/b;

    return-void
.end method

.method public k()Lk/a/e/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/e/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public l()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk/a/e/l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/a/e/h;->e:Ljava/util/List;

    sget-object v1, Lk/a/e/h;->g:Ljava/util/List;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lk/a/e/h$b;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lk/a/e/h$b;-><init>(Lk/a/e/h;I)V

    iput-object v0, p0, Lk/a/e/h;->e:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lk/a/e/h;->e:Ljava/util/List;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/e/h;->f:Lk/a/e/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/e/h;->c:Lk/a/f/h;

    .line 2
    iget-object v0, v0, Lk/a/f/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/Appendable;ILk/a/e/f$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p3, Lk/a/e/f$a;->e:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, p0, Lk/a/e/h;->c:Lk/a/f/h;

    .line 3
    iget-boolean v0, v0, Lk/a/f/h;->d:Z

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lk/a/e/l;->a:Lk/a/e/l;

    check-cast v0, Lk/a/e/h;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lk/a/e/h;->c:Lk/a/f/h;

    .line 6
    iget-boolean v0, v0, Lk/a/f/h;->d:Z

    if-nez v0, :cond_2

    .line 7
    :cond_0
    iget-boolean v0, p3, Lk/a/e/f$a;->f:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_7

    .line 8
    iget-object v0, p0, Lk/a/e/h;->c:Lk/a/f/h;

    .line 9
    iget-boolean v3, v0, Lk/a/f/h;->c:Z

    xor-int/2addr v3, v2

    if-eqz v3, :cond_5

    .line 10
    iget-boolean v0, v0, Lk/a/f/h;->e:Z

    if-nez v0, :cond_5

    .line 11
    iget-object v0, p0, Lk/a/e/l;->a:Lk/a/e/l;

    move-object v3, v0

    check-cast v3, Lk/a/e/h;

    .line 12
    iget-object v3, v3, Lk/a/e/h;->c:Lk/a/f/h;

    .line 13
    iget-boolean v3, v3, Lk/a/f/h;->c:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    if-nez v0, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    iget v4, p0, Lk/a/e/l;->b:I

    if-lez v4, :cond_4

    .line 15
    invoke-virtual {v0}, Lk/a/e/l;->l()Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lk/a/e/l;->b:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lk/a/e/l;

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 16
    iget-boolean v0, p3, Lk/a/e/f$a;->f:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_7

    .line 17
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_6

    .line 18
    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lk/a/e/l;->o(Ljava/lang/Appendable;ILk/a/e/f$a;)V

    goto :goto_4

    .line 20
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lk/a/e/l;->o(Ljava/lang/Appendable;ILk/a/e/f$a;)V

    :cond_7
    :goto_4
    const/16 p2, 0x3c

    .line 21
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p2

    .line 22
    iget-object v0, p0, Lk/a/e/h;->c:Lk/a/f/h;

    .line 23
    iget-object v0, v0, Lk/a/f/h;->a:Ljava/lang/String;

    .line 24
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 25
    iget-object p2, p0, Lk/a/e/h;->f:Lk/a/e/b;

    if-eqz p2, :cond_8

    invoke-virtual {p2, p1, p3}, Lk/a/e/b;->j(Ljava/lang/Appendable;Lk/a/e/f$a;)V

    .line 26
    :cond_8
    iget-object p2, p0, Lk/a/e/h;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/16 v0, 0x3e

    if-eqz p2, :cond_c

    iget-object p2, p0, Lk/a/e/h;->c:Lk/a/f/h;

    .line 27
    iget-boolean v3, p2, Lk/a/f/h;->e:Z

    if-nez v3, :cond_9

    iget-boolean p2, p2, Lk/a/f/h;->f:Z

    if-eqz p2, :cond_a

    :cond_9
    const/4 v1, 0x1

    :cond_a
    if-eqz v1, :cond_c

    .line 28
    iget-object p2, p3, Lk/a/e/f$a;->h:Lk/a/e/f$a$a;

    .line 29
    sget-object p3, Lk/a/e/f$a$a;->a:Lk/a/e/f$a$a;

    if-ne p2, p3, :cond_b

    iget-object p2, p0, Lk/a/e/h;->c:Lk/a/f/h;

    .line 30
    iget-boolean p2, p2, Lk/a/f/h;->e:Z

    if-eqz p2, :cond_b

    .line 31
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_5

    :cond_b
    const-string p2, " />"

    .line 32
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_5

    .line 33
    :cond_c
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_5
    return-void
.end method

.method public t(Ljava/lang/Appendable;ILk/a/e/f$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/a/e/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lk/a/e/h;->c:Lk/a/f/h;

    .line 2
    iget-boolean v3, v0, Lk/a/f/h;->e:Z

    if-nez v3, :cond_1

    iget-boolean v0, v0, Lk/a/f/h;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_5

    .line 3
    :cond_2
    iget-boolean v0, p3, Lk/a/e/f$a;->e:Z

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lk/a/e/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lk/a/e/h;->c:Lk/a/f/h;

    .line 5
    iget-boolean v0, v0, Lk/a/f/h;->d:Z

    if-nez v0, :cond_3

    .line 6
    iget-boolean v0, p3, Lk/a/e/f$a;->f:Z

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lk/a/e/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lk/a/e/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lk/a/e/h;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lk/a/e/n;

    if-nez v0, :cond_4

    .line 8
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lk/a/e/l;->o(Ljava/lang/Appendable;ILk/a/e/f$a;)V

    :cond_4
    const-string p2, "</"

    .line 9
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lk/a/e/h;->c:Lk/a/f/h;

    .line 11
    iget-object p2, p2, Lk/a/f/h;->a:Ljava/lang/String;

    .line 12
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const/16 p2, 0x3e

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_5
    return-void
.end method

.method public u()Lk/a/e/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/e/l;->a:Lk/a/e/l;

    check-cast v0, Lk/a/e/h;

    return-object v0
.end method

.method public y()Lk/a/e/l;
    .locals 2

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lk/a/e/l;->a:Lk/a/e/l;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    check-cast v0, Lk/a/e/h;

    return-object v0
.end method

.method public z(Lk/a/e/l;)Lk/a/e/h;
    .locals 1

    .line 1
    invoke-static {p1}, Lj/b;->s(Ljava/lang/Object;)V

    .line 2
    invoke-static {p0}, Lj/b;->s(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p1, Lk/a/e/l;->a:Lk/a/e/l;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lk/a/e/l;->x(Lk/a/e/l;)V

    .line 5
    :cond_0
    iput-object p0, p1, Lk/a/e/l;->a:Lk/a/e/l;

    .line 6
    invoke-virtual {p0}, Lk/a/e/h;->l()Ljava/util/List;

    .line 7
    iget-object v0, p0, Lk/a/e/h;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lk/a/e/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 9
    iput v0, p1, Lk/a/e/l;->b:I

    return-object p0
.end method
