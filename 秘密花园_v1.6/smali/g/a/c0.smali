.class public Lg/a/c0;
.super Ljava/util/AbstractList;
.source "RealmList.java"

# interfaces
.implements Lio/realm/OrderedRealmCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/a/c0$c;,
        Lg/a/c0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Lio/realm/OrderedRealmCollection<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public final c:Lg/a/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/o<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final d:Lg/a/a;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lg/a/c0;->d:Lg/a/a;

    .line 3
    iput-object v0, p0, Lg/a/c0;->c:Lg/a/o;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/a/c0;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lg/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lio/realm/internal/OsList;",
            "Lg/a/a;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 6
    iput-object p1, p0, Lg/a/c0;->a:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p3, p2, p1, v0}, Lg/a/c0;->g(Lg/a/a;Lio/realm/internal/OsList;Ljava/lang/Class;Ljava/lang/String;)Lg/a/o;

    move-result-object p1

    iput-object p1, p0, Lg/a/c0;->c:Lg/a/o;

    .line 8
    iput-object p3, p0, Lg/a/c0;->d:Lg/a/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/realm/internal/OsList;Lg/a/a;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 10
    iput-object p3, p0, Lg/a/c0;->d:Lg/a/a;

    .line 11
    iput-object p1, p0, Lg/a/c0;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p3, p2, v0, p1}, Lg/a/c0;->g(Lg/a/a;Lio/realm/internal/OsList;Ljava/lang/Class;Ljava/lang/String;)Lg/a/o;

    move-result-object p1

    iput-object p1, p0, Lg/a/c0;->c:Lg/a/o;

    return-void
.end method

.method public static synthetic b(Lg/a/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method

.method public static synthetic c(Lg/a/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method

.method public static synthetic d(Lg/a/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method

.method public static synthetic e(Lg/a/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method

.method public static synthetic f(Lg/a/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method

.method public static h(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    const-class v0, Lg/a/e0;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg/a/c0;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lg/a/c0;->d:Lg/a/a;

    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 3
    iget-object v0, p0, Lg/a/c0;->c:Lg/a/o;

    .line 4
    invoke-virtual {v0, p2}, Lg/a/o;->b(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lg/a/o;->d(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lg/a/o;->e(ILjava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lg/a/c0;->e:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8
    :goto_0
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lg/a/c0;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lg/a/c0;->d:Lg/a/a;

    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 11
    iget-object v0, p0, Lg/a/c0;->c:Lg/a/o;

    .line 12
    invoke-virtual {v0, p1}, Lg/a/o;->b(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 13
    iget-object p1, v0, Lg/a/o;->b:Lio/realm/internal/OsList;

    .line 14
    iget-wide v0, p1, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1}, Lio/realm/internal/OsList;->nativeAddNull(J)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0, p1}, Lg/a/o;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lg/a/c0;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :goto_0
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0
.end method

.method public clear()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lg/a/c0;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/a/c0;->d:Lg/a/a;

    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 3
    iget-object v0, p0, Lg/a/c0;->c:Lg/a/o;

    .line 4
    iget-object v0, v0, Lg/a/o;->b:Lio/realm/internal/OsList;

    .line 5
    iget-wide v0, v0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1}, Lio/realm/internal/OsList;->nativeRemoveAll(J)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lg/a/c0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    :goto_0
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lg/a/c0;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lg/a/c0;->d:Lg/a/a;

    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 3
    instance-of v0, p1, Lg/a/f1/n;

    if-eqz v0, :cond_0

    .line 4
    move-object v0, p1

    check-cast v0, Lg/a/f1/n;

    .line 5
    invoke-interface {v0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 7
    sget-object v1, Lg/a/f1/g;->a:Lg/a/f1/g;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 9
    :cond_1
    iget-object v0, p0, Lg/a/c0;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g(Lg/a/a;Lio/realm/internal/OsList;Ljava/lang/Class;Ljava/lang/String;)Lg/a/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a;",
            "Lio/realm/internal/OsList;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            ")",
            "Lg/a/o<",
            "TE;>;"
        }
    .end annotation

    if-eqz p3, :cond_9

    .line 1
    invoke-static {p3}, Lg/a/c0;->h(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    const-class p4, Ljava/lang/String;

    if-ne p3, p4, :cond_1

    .line 3
    new-instance p4, Lg/a/n0;

    invoke-direct {p4, p1, p2, p3}, Lg/a/n0;-><init>(Lg/a/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p4

    .line 4
    :cond_1
    const-class p4, Ljava/lang/Long;

    if-eq p3, p4, :cond_8

    const-class p4, Ljava/lang/Integer;

    if-eq p3, p4, :cond_8

    const-class p4, Ljava/lang/Short;

    if-eq p3, p4, :cond_8

    const-class p4, Ljava/lang/Byte;

    if-ne p3, p4, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    const-class p4, Ljava/lang/Boolean;

    if-ne p3, p4, :cond_3

    .line 6
    new-instance p4, Lg/a/e;

    invoke-direct {p4, p1, p2, p3}, Lg/a/e;-><init>(Lg/a/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p4

    .line 7
    :cond_3
    const-class p4, [B

    if-ne p3, p4, :cond_4

    .line 8
    new-instance p4, Lg/a/d;

    invoke-direct {p4, p1, p2, p3}, Lg/a/d;-><init>(Lg/a/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p4

    .line 9
    :cond_4
    const-class p4, Ljava/lang/Double;

    if-ne p3, p4, :cond_5

    .line 10
    new-instance p4, Lg/a/h;

    invoke-direct {p4, p1, p2, p3}, Lg/a/h;-><init>(Lg/a/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p4

    .line 11
    :cond_5
    const-class p4, Ljava/lang/Float;

    if-ne p3, p4, :cond_6

    .line 12
    new-instance p4, Lg/a/j;

    invoke-direct {p4, p1, p2, p3}, Lg/a/j;-><init>(Lg/a/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p4

    .line 13
    :cond_6
    const-class p4, Ljava/util/Date;

    if-ne p3, p4, :cond_7

    .line 14
    new-instance p4, Lg/a/g;

    invoke-direct {p4, p1, p2, p3}, Lg/a/g;-><init>(Lg/a/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p4

    .line 15
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected value class: "

    invoke-static {p2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_8
    :goto_0
    new-instance p4, Lg/a/n;

    invoke-direct {p4, p1, p2, p3}, Lg/a/n;-><init>(Lg/a/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p4

    .line 17
    :cond_9
    :goto_1
    new-instance v0, Lg/a/f0;

    invoke-direct {v0, p1, p2, p3, p4}, Lg/a/f0;-><init>(Lg/a/a;Lio/realm/internal/OsList;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg/a/c0;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/a/c0;->d:Lg/a/a;

    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 3
    iget-object v0, p0, Lg/a/c0;->c:Lg/a/o;

    invoke-virtual {v0, p1}, Lg/a/o;->c(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lg/a/c0;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lg/a/c0;->d:Lg/a/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg/a/c0;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lg/a/c0$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/a/c0$b;-><init>(Lg/a/c0;Lg/a/c0$a;)V

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lg/a/c0;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lg/a/c0;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lg/a/c0$c;

    invoke-direct {v0, p0, p1}, Lg/a/c0$c;-><init>(Lg/a/c0;I)V

    return-object v0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg/a/c0;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/a/c0;->d:Lg/a/a;

    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 3
    invoke-virtual {p0, p1}, Lg/a/c0;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lg/a/c0;->c:Lg/a/o;

    .line 5
    iget-object v1, v1, Lg/a/o;->b:Lio/realm/internal/OsList;

    int-to-long v2, p1

    .line 6
    iget-wide v4, v1, Lio/realm/internal/OsList;->a:J

    invoke-static {v4, v5, v2, v3}, Lio/realm/internal/OsList;->nativeRemove(JJ)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lg/a/c0;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 8
    :goto_0
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 9
    invoke-virtual {p0}, Lg/a/c0;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/a/c0;->d:Lg/a/a;

    invoke-virtual {v0}, Lg/a/a;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Objects can only be removed from inside a write transaction."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg/a/c0;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/a/c0;->d:Lg/a/a;

    invoke-virtual {v0}, Lg/a/a;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Objects can only be removed from inside a write transaction."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg/a/c0;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lg/a/c0;->d:Lg/a/a;

    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 3
    iget-object v0, p0, Lg/a/c0;->c:Lg/a/o;

    .line 4
    invoke-virtual {v0, p2}, Lg/a/o;->b(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0, p1}, Lg/a/o;->c(I)Ljava/lang/Object;

    move-result-object v1

    if-nez p2, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lg/a/o;->f(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, p1, p2}, Lg/a/o;->g(ILjava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lg/a/c0;->e:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public size()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lg/a/c0;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lg/a/c0;->d:Lg/a/a;

    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 3
    iget-object v0, p0, Lg/a/c0;->c:Lg/a/o;

    .line 4
    iget-object v0, v0, Lg/a/o;->b:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->b()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    long-to-int v1, v0

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    :goto_0
    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lg/a/c0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lg/a/c0;->i()Z

    move-result v1

    const-string v2, "byte["

    const-string v3, ","

    const-string v4, "]"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v1, :cond_4

    const-string v1, "RealmList<?>@["

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lg/a/c0;->size()I

    move-result v1

    :goto_0
    if-ge v5, v1, :cond_2

    .line 5
    invoke-virtual {p0, v5}, Lg/a/c0;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 6
    instance-of v8, v7, Lg/a/e0;

    if-eqz v8, :cond_0

    .line 7
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8
    :cond_0
    instance-of v8, v7, [B

    if-eqz v8, :cond_1

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v7, [B

    array-length v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lg/a/c0;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 14
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_4
    const-string v1, "RealmList<"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lg/a/c0;->b:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 18
    :cond_5
    iget-object v1, p0, Lg/a/c0;->a:Ljava/lang/Class;

    invoke-static {v1}, Lg/a/c0;->h(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 19
    iget-object v1, p0, Lg/a/c0;->d:Lg/a/a;

    invoke-virtual {v1}, Lg/a/a;->G()Lg/a/k0;

    move-result-object v1

    iget-object v7, p0, Lg/a/c0;->a:Ljava/lang/Class;

    invoke-virtual {v1, v7}, Lg/a/k0;->d(Ljava/lang/Class;)Lg/a/i0;

    move-result-object v1

    invoke-virtual {v1}, Lg/a/i0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 20
    :cond_6
    iget-object v1, p0, Lg/a/c0;->a:Ljava/lang/Class;

    const-class v7, [B

    if-ne v1, v7, :cond_7

    .line 21
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 22
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, ">@["

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v1, p0, Lg/a/c0;->c:Lg/a/o;

    if-eqz v1, :cond_8

    .line 25
    iget-object v1, v1, Lg/a/o;->b:Lio/realm/internal/OsList;

    .line 26
    iget-wide v7, v1, Lio/realm/internal/OsList;->a:J

    invoke-static {v7, v8}, Lio/realm/internal/OsList;->nativeIsValid(J)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_9

    const-string v1, "invalid"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 28
    :cond_9
    iget-object v1, p0, Lg/a/c0;->a:Ljava/lang/Class;

    invoke-static {v1}, Lg/a/c0;->h(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 29
    :goto_4
    invoke-virtual {p0}, Lg/a/c0;->size()I

    move-result v1

    if-ge v5, v1, :cond_a

    .line 30
    invoke-virtual {p0, v5}, Lg/a/c0;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/a/f1/n;

    invoke-interface {v1}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v1

    .line 31
    iget-object v1, v1, Lg/a/v;->c:Lg/a/f1/p;

    .line 32
    invoke-interface {v1}, Lg/a/f1/p;->l()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 34
    :cond_a
    invoke-virtual {p0}, Lg/a/c0;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_7

    .line 36
    :cond_b
    :goto_5
    invoke-virtual {p0}, Lg/a/c0;->size()I

    move-result v1

    if-ge v5, v1, :cond_d

    .line 37
    invoke-virtual {p0, v5}, Lg/a/c0;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 38
    instance-of v7, v1, [B

    if-eqz v7, :cond_c

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v1, [B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 40
    :cond_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    :goto_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 42
    :cond_d
    invoke-virtual {p0}, Lg/a/c0;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 44
    :cond_e
    :goto_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :goto_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
