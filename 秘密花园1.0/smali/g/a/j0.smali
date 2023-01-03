.class public Lg/a/j0;
.super Lg/a/u;
.source "RealmResults.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lg/a/u<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lg/a/a;Lio/realm/internal/OsResults;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a;",
            "Lio/realm/internal/OsResults;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lg/a/u;-><init>(Lg/a/a;Lio/realm/internal/OsResults;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lg/a/a;Lio/realm/internal/OsResults;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lg/a/u;-><init>(Lg/a/a;Lio/realm/internal/OsResults;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Lg/a/i;Lio/realm/internal/CheckedRow;Lio/realm/internal/Table;Ljava/lang/String;)Lg/a/j0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/i;",
            "Lio/realm/internal/CheckedRow;",
            "Lio/realm/internal/Table;",
            "Ljava/lang/String;",
            ")",
            "Lg/a/j0<",
            "Lio/realm/DynamicRealmObject;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lio/realm/internal/Table;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Table;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lg/a/j0;

    iget-object v2, p0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    .line 3
    invoke-static {v2, p1, p2, p3}, Lio/realm/internal/OsResults;->a(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/UncheckedRow;Lio/realm/internal/Table;Ljava/lang/String;)Lio/realm/internal/OsResults;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lg/a/j0;-><init>(Lg/a/a;Lio/realm/internal/OsResults;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lg/a/u;->a:Lg/a/a;

    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 2
    iget-object v0, p0, Lg/a/u;->d:Lio/realm/internal/OsResults;

    .line 3
    iget-boolean v0, v0, Lio/realm/internal/OsResults;->e:Z

    return v0
.end method
