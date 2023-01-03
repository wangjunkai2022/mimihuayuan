.class public Lg/a/l;
.super Lg/a/k0;
.source "ImmutableRealmSchema.java"


# direct methods
.method public constructor <init>(Lg/a/a;Lg/a/f1/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lg/a/k0;-><init>(Lg/a/a;Lg/a/f1/b;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lg/a/i0;
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p1}, Lio/realm/internal/Table;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lg/a/k0;->e:Lg/a/a;

    .line 4
    iget-object v1, v1, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    .line 5
    invoke-virtual {v1, v0}, Lio/realm/internal/OsSharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    iget-object v1, p0, Lg/a/k0;->e:Lg/a/a;

    .line 7
    iget-object v1, v1, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    .line 8
    invoke-virtual {v1, v0}, Lio/realm/internal/OsSharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 9
    new-instance v1, Lg/a/k;

    iget-object v2, p0, Lg/a/k0;->e:Lg/a/a;

    invoke-virtual {p0, p1}, Lg/a/k0;->c(Ljava/lang/String;)Lg/a/f1/c;

    move-result-object p1

    invoke-direct {v1, v2, p0, v0, p1}, Lg/a/k;-><init>(Lg/a/a;Lg/a/k0;Lio/realm/internal/Table;Lg/a/f1/c;)V

    return-object v1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null or empty class names are not allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
