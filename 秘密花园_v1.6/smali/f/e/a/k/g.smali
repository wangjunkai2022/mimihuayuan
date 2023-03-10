.class public Lf/e/a/k/g;
.super Ljava/lang/Object;
.source "RealmHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/e/a/k/g$c;
    }
.end annotation


# static fields
.field public static a:Lg/a/x;


# direct methods
.method public constructor <init>(Lg/a/x;Lf/e/a/k/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sput-object p1, Lf/e/a/k/g;->a:Lg/a/x;

    return-void
.end method

.method public static d(Lg/a/x;)Lf/e/a/k/g;
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    sput-object p0, Lf/e/a/k/g;->a:Lg/a/x;

    .line 2
    :cond_0
    sget-object p0, Lf/e/a/k/g$c;->a:Lf/e/a/k/g;

    return-object p0
.end method


# virtual methods
.method public a(Lg/a/g0;)V
    .locals 2

    .line 1
    sget-object v0, Lf/e/a/k/g;->a:Lg/a/x;

    new-instance v1, Lf/e/a/k/g$a;

    invoke-direct {v1, p0, p1}, Lf/e/a/k/g$a;-><init>(Lf/e/a/k/g;Lg/a/g0;)V

    invoke-virtual {v0, v1}, Lg/a/x;->N(Lg/a/x$a;)V

    return-void
.end method

.method public b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lg/a/g0;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lf/e/a/k/g;->f(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lg/a/j0;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lg/a/u;->size()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Ljava/lang/Class;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lg/a/g0;",
            ">;I)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lf/e/a/k/g;->a:Lg/a/x;

    .line 2
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 3
    new-instance v1, Lio/realm/internal/core/DescriptorOrdering;

    invoke-direct {v1}, Lio/realm/internal/core/DescriptorOrdering;-><init>()V

    .line 4
    const-class v2, Lg/a/e0;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v0, Lg/a/x;->j:Lg/a/k0;

    .line 6
    invoke-virtual {v2, p1}, Lg/a/k0;->d(Ljava/lang/Class;)Lg/a/i0;

    move-result-object v2

    .line 7
    iget-object v2, v2, Lg/a/i0;->c:Lio/realm/internal/Table;

    .line 8
    iget-wide v4, v2, Lio/realm/internal/Table;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->nativeWhere(J)J

    move-result-wide v4

    .line 9
    new-instance v6, Lio/realm/internal/TableQuery;

    iget-object v7, v2, Lio/realm/internal/Table;->b:Lg/a/f1/h;

    invoke-direct {v6, v7, v2, v4, v5}, Lio/realm/internal/TableQuery;-><init>(Lg/a/f1/h;Lio/realm/internal/Table;J)V

    move-object v2, v6

    .line 10
    :goto_0
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 11
    sget-object v4, Lg/a/f1/w/a;->d:Lg/a/f1/w/a;

    .line 12
    iget-object v5, v4, Lg/a/f1/w/a;->a:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 13
    iget-object v3, v0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    invoke-static {v3, v2, v1, v4}, Lg/a/f1/r;->e(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/core/DescriptorOrdering;Lg/a/f1/w/a;)Lg/a/f1/r;

    move-result-object v1

    goto :goto_2

    .line 14
    :cond_2
    iget-object v3, v0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    invoke-static {v3, v2, v1}, Lio/realm/internal/OsResults;->b(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/core/DescriptorOrdering;)Lio/realm/internal/OsResults;

    move-result-object v1

    .line 15
    :goto_2
    new-instance v2, Lg/a/j0;

    invoke-direct {v2, v0, v1, p1}, Lg/a/j0;-><init>(Lg/a/a;Lio/realm/internal/OsResults;Ljava/lang/Class;)V

    .line 16
    iget-object p1, v2, Lg/a/u;->a:Lg/a/a;

    invoke-virtual {p1}, Lg/a/a;->f()V

    .line 17
    iget-object p1, v2, Lg/a/u;->d:Lio/realm/internal/OsResults;

    .line 18
    iget-boolean v0, p1, Lio/realm/internal/OsResults;->e:Z

    if-eqz v0, :cond_3

    goto :goto_3

    .line 19
    :cond_3
    iget-wide v0, p1, Lio/realm/internal/OsResults;->a:J

    invoke-static {v0, v1, v6}, Lio/realm/internal/OsResults;->nativeEvaluateQueryIfNeeded(JZ)V

    const-wide/16 v0, 0x0

    .line 20
    invoke-virtual {p1, v0, v1}, Lio/realm/internal/OsResults;->notifyChangeListeners(J)V

    .line 21
    :goto_3
    sget-object p1, Lf/e/a/k/g;->a:Lg/a/x;

    new-instance v0, Lf/e/a/k/g$b;

    invoke-direct {v0, p0, v2, p2}, Lf/e/a/k/g$b;-><init>(Lf/e/a/k/g;Lg/a/j0;I)V

    invoke-virtual {p1, v0}, Lg/a/x;->N(Lg/a/x$a;)V

    return-void
.end method

.method public e(Ljava/lang/Class;)Lg/a/j0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lg/a/g0;",
            ">;)",
            "Lg/a/j0<",
            "+",
            "Lg/a/g0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lf/e/a/k/g;->a:Lg/a/x;

    .line 2
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 3
    new-instance v1, Lio/realm/internal/core/DescriptorOrdering;

    invoke-direct {v1}, Lio/realm/internal/core/DescriptorOrdering;-><init>()V

    .line 4
    const-class v2, Lg/a/e0;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v0, Lg/a/x;->j:Lg/a/k0;

    .line 6
    invoke-virtual {v2, p1}, Lg/a/k0;->d(Ljava/lang/Class;)Lg/a/i0;

    move-result-object v2

    .line 7
    iget-object v2, v2, Lg/a/i0;->c:Lio/realm/internal/Table;

    .line 8
    iget-wide v4, v2, Lio/realm/internal/Table;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->nativeWhere(J)J

    move-result-wide v4

    .line 9
    new-instance v6, Lio/realm/internal/TableQuery;

    iget-object v7, v2, Lio/realm/internal/Table;->b:Lg/a/f1/h;

    invoke-direct {v6, v7, v2, v4, v5}, Lio/realm/internal/TableQuery;-><init>(Lg/a/f1/h;Lio/realm/internal/Table;J)V

    move-object v2, v6

    .line 10
    :goto_0
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 11
    sget-object v4, Lg/a/f1/w/a;->d:Lg/a/f1/w/a;

    .line 12
    iget-object v5, v4, Lg/a/f1/w/a;->a:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 13
    iget-object v3, v0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    invoke-static {v3, v2, v1, v4}, Lg/a/f1/r;->e(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/core/DescriptorOrdering;Lg/a/f1/w/a;)Lg/a/f1/r;

    move-result-object v1

    goto :goto_2

    .line 14
    :cond_2
    iget-object v3, v0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    invoke-static {v3, v2, v1}, Lio/realm/internal/OsResults;->b(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/core/DescriptorOrdering;)Lio/realm/internal/OsResults;

    move-result-object v1

    .line 15
    :goto_2
    new-instance v2, Lg/a/j0;

    invoke-direct {v2, v0, v1, p1}, Lg/a/j0;-><init>(Lg/a/a;Lio/realm/internal/OsResults;Ljava/lang/Class;)V

    .line 16
    iget-object p1, v2, Lg/a/u;->a:Lg/a/a;

    invoke-virtual {p1}, Lg/a/a;->f()V

    .line 17
    iget-object p1, v2, Lg/a/u;->d:Lio/realm/internal/OsResults;

    .line 18
    iget-boolean v0, p1, Lio/realm/internal/OsResults;->e:Z

    if-eqz v0, :cond_3

    goto :goto_3

    .line 19
    :cond_3
    iget-wide v0, p1, Lio/realm/internal/OsResults;->a:J

    invoke-static {v0, v1, v6}, Lio/realm/internal/OsResults;->nativeEvaluateQueryIfNeeded(JZ)V

    const-wide/16 v0, 0x0

    .line 20
    invoke-virtual {p1, v0, v1}, Lio/realm/internal/OsResults;->notifyChangeListeners(J)V

    :goto_3
    return-object v2
.end method

.method public f(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lg/a/j0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lg/a/g0;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lg/a/j0<",
            "+",
            "Lg/a/g0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lf/e/a/k/g;->a:Lg/a/x;

    .line 2
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 3
    new-instance v1, Lio/realm/RealmQuery;

    invoke-direct {v1, v0, p1}, Lio/realm/RealmQuery;-><init>(Lg/a/x;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {v1, p2, p3}, Lio/realm/RealmQuery;->a(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    invoke-virtual {v1}, Lio/realm/RealmQuery;->b()Lg/a/j0;

    move-result-object p1

    return-object p1
.end method
