.class public Lio/realm/RealmQuery;
.super Ljava/lang/Object;
.source "RealmQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lio/realm/internal/Table;

.field public final b:Lg/a/a;

.field public final c:Lio/realm/internal/TableQuery;

.field public final d:Lg/a/i0;

.field public e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final f:Z

.field public g:Lio/realm/internal/core/DescriptorOrdering;


# direct methods
.method public constructor <init>(Lg/a/x;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/x;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/realm/internal/core/DescriptorOrdering;

    invoke-direct {v0}, Lio/realm/internal/core/DescriptorOrdering;-><init>()V

    iput-object v0, p0, Lio/realm/RealmQuery;->g:Lio/realm/internal/core/DescriptorOrdering;

    .line 3
    iput-object p1, p0, Lio/realm/RealmQuery;->b:Lg/a/a;

    .line 4
    iput-object p2, p0, Lio/realm/RealmQuery;->e:Ljava/lang/Class;

    .line 5
    const-class v0, Lg/a/e0;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 6
    iput-boolean v0, p0, Lio/realm/RealmQuery;->f:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lio/realm/RealmQuery;->d:Lg/a/i0;

    .line 8
    iput-object p1, p0, Lio/realm/RealmQuery;->a:Lio/realm/internal/Table;

    .line 9
    iput-object p1, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p1, Lg/a/x;->j:Lg/a/k0;

    .line 11
    invoke-virtual {p1, p2}, Lg/a/k0;->d(Ljava/lang/Class;)Lg/a/i0;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->d:Lg/a/i0;

    .line 12
    iget-object p1, p1, Lg/a/i0;->c:Lio/realm/internal/Table;

    .line 13
    iput-object p1, p0, Lio/realm/RealmQuery;->a:Lio/realm/internal/Table;

    .line 14
    iget-wide v0, p1, Lio/realm/internal/Table;->a:J

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/Table;->nativeWhere(J)J

    move-result-wide v0

    .line 15
    new-instance p2, Lio/realm/internal/TableQuery;

    iget-object v2, p1, Lio/realm/internal/Table;->b:Lg/a/f1/h;

    invoke-direct {p2, v2, p1, v0, v1}, Lio/realm/internal/TableQuery;-><init>(Lg/a/f1/h;Lio/realm/internal/Table;J)V

    .line 16
    iput-object p2, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lg/a/f;->b:Lg/a/f;

    .line 2
    iget-object v1, p0, Lio/realm/RealmQuery;->b:Lg/a/a;

    invoke-virtual {v1}, Lg/a/a;->f()V

    .line 3
    iget-object v1, p0, Lio/realm/RealmQuery;->d:Lg/a/i0;

    const/4 v2, 0x1

    new-array v2, v2, [Lio/realm/RealmFieldType;

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, p1, v2}, Lg/a/i0;->b(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lg/a/f1/u/c;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    .line 5
    invoke-virtual {p1}, Lg/a/f1/u/c;->b()V

    .line 6
    iget-object v2, p1, Lg/a/f1/u/c;->f:[J

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v8

    .line 7
    invoke-virtual {p1}, Lg/a/f1/u/c;->b()V

    .line 8
    iget-object p1, p1, Lg/a/f1/u/c;->g:[J

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v9

    .line 9
    iget-wide v6, v1, Lio/realm/internal/TableQuery;->b:J

    .line 10
    iget-boolean v11, v0, Lg/a/f;->a:Z

    move-object v5, v1

    move-object v10, p2

    .line 11
    invoke-virtual/range {v5 .. v11}, Lio/realm/internal/TableQuery;->nativeEqual(J[J[JLjava/lang/String;Z)V

    .line 12
    iput-boolean v4, v1, Lio/realm/internal/TableQuery;->c:Z

    return-object p0
.end method

.method public b()Lg/a/j0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg/a/j0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lg/a/a;

    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->g:Lio/realm/internal/core/DescriptorOrdering;

    sget-object v2, Lg/a/f1/w/a;->d:Lg/a/f1/w/a;

    .line 3
    iget-object v3, v2, Lg/a/f1/w/a;->a:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 4
    iget-object v3, p0, Lio/realm/RealmQuery;->b:Lg/a/a;

    iget-object v3, v3, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    invoke-static {v3, v0, v1, v2}, Lg/a/f1/r;->e(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/core/DescriptorOrdering;Lg/a/f1/w/a;)Lg/a/f1/r;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_1
    iget-object v2, p0, Lio/realm/RealmQuery;->b:Lg/a/a;

    iget-object v2, v2, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    invoke-static {v2, v0, v1}, Lio/realm/internal/OsResults;->b(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/core/DescriptorOrdering;)Lio/realm/internal/OsResults;

    move-result-object v0

    .line 6
    :goto_1
    new-instance v1, Lg/a/j0;

    iget-object v2, p0, Lio/realm/RealmQuery;->b:Lg/a/a;

    iget-object v3, p0, Lio/realm/RealmQuery;->e:Ljava/lang/Class;

    invoke-direct {v1, v2, v0, v3}, Lg/a/j0;-><init>(Lg/a/a;Lio/realm/internal/OsResults;Ljava/lang/Class;)V

    .line 7
    iget-object v0, v1, Lg/a/u;->a:Lg/a/a;

    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 8
    iget-object v0, v1, Lg/a/u;->d:Lio/realm/internal/OsResults;

    .line 9
    iget-boolean v2, v0, Lio/realm/internal/OsResults;->e:Z

    if-eqz v2, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    iget-wide v2, v0, Lio/realm/internal/OsResults;->a:J

    invoke-static {v2, v3, v4}, Lio/realm/internal/OsResults;->nativeEvaluateQueryIfNeeded(JZ)V

    const-wide/16 v2, 0x0

    .line 11
    invoke-virtual {v0, v2, v3}, Lio/realm/internal/OsResults;->notifyChangeListeners(J)V

    :goto_2
    return-object v1
.end method

.method public c()Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lg/a/a;

    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 2
    iget-boolean v0, p0, Lio/realm/RealmQuery;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/RealmQuery;->g:Lio/realm/internal/core/DescriptorOrdering;

    .line 4
    iget-wide v2, v0, Lio/realm/internal/core/DescriptorOrdering;->a:J

    invoke-static {v2, v3}, Lio/realm/internal/core/DescriptorOrdering;->nativeIsEmpty(J)Z

    move-result v0

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    if-nez v0, :cond_3

    .line 5
    invoke-virtual {p0}, Lio/realm/RealmQuery;->b()Lg/a/j0;

    move-result-object v0

    .line 6
    iget-object v6, v0, Lg/a/u;->d:Lio/realm/internal/OsResults;

    invoke-virtual {v6}, Lio/realm/internal/OsResults;->c()Lio/realm/internal/UncheckedRow;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 7
    iget-object v7, v0, Lg/a/u;->a:Lg/a/a;

    iget-object v8, v0, Lg/a/u;->b:Ljava/lang/Class;

    iget-object v0, v0, Lg/a/u;->c:Ljava/lang/String;

    invoke-virtual {v7, v8, v0, v6}, Lg/a/a;->F(Ljava/lang/Class;Ljava/lang/String;Lio/realm/internal/UncheckedRow;)Lg/a/e0;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 8
    :goto_0
    check-cast v0, Lg/a/f1/n;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v0

    .line 10
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v6

    goto :goto_1

    :cond_2
    move-wide v6, v2

    goto :goto_1

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    .line 13
    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->a()V

    .line 14
    iget-wide v6, v0, Lio/realm/internal/TableQuery;->b:J

    invoke-virtual {v0, v6, v7, v4, v5}, Lio/realm/internal/TableQuery;->nativeFind(JJ)J

    move-result-wide v6

    :goto_1
    cmp-long v0, v6, v4

    if-gez v0, :cond_4

    goto :goto_2

    .line 15
    :cond_4
    iget-object v10, p0, Lio/realm/RealmQuery;->b:Lg/a/a;

    iget-object v9, p0, Lio/realm/RealmQuery;->e:Ljava/lang/Class;

    .line 16
    sget-object v0, Lg/a/f1/g;->a:Lg/a/f1/g;

    .line 17
    invoke-virtual {v10}, Lg/a/a;->G()Lg/a/k0;

    move-result-object v1

    invoke-virtual {v1, v9}, Lg/a/k0;->e(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 18
    iget-object v4, v10, Lg/a/a;->b:Lg/a/b0;

    .line 19
    iget-object v8, v4, Lg/a/b0;->j:Lg/a/f1/o;

    cmp-long v4, v6, v2

    if-eqz v4, :cond_5

    .line 20
    iget-object v0, v1, Lio/realm/internal/Table;->b:Lg/a/f1/h;

    invoke-static {v0, v1, v6, v7}, Lio/realm/internal/UncheckedRow;->F(Lg/a/f1/h;Lio/realm/internal/Table;J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    :cond_5
    move-object v11, v0

    .line 21
    invoke-virtual {v10}, Lg/a/a;->G()Lg/a/k0;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lg/a/k0;->a()V

    .line 23
    iget-object v0, v0, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v0, v9}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v12

    const/4 v13, 0x0

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 25
    invoke-virtual/range {v8 .. v14}, Lg/a/f1/o;->i(Ljava/lang/Class;Ljava/lang/Object;Lg/a/f1/p;Lg/a/f1/c;ZLjava/util/List;)Lg/a/e0;

    move-result-object v1

    :goto_2
    return-object v1
.end method
