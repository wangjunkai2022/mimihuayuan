.class public Lg/a/i;
.super Lg/a/a;
.source "DynamicRealm.java"


# instance fields
.field public final j:Lg/a/k0;


# direct methods
.method public constructor <init>(Lg/a/z;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lg/a/a;-><init>(Lg/a/z;Lio/realm/internal/OsSchemaInfo;)V

    .line 2
    iget-object v0, p1, Lg/a/z;->c:Lg/a/b0;

    .line 3
    new-instance v1, Lg/a/i$a;

    invoke-direct {v1, p0, p1}, Lg/a/i$a;-><init>(Lg/a/i;Lg/a/z;)V

    .line 4
    sget-object p1, Lg/a/z;->e:Ljava/util/List;

    monitor-enter p1

    .line 5
    :try_start_0
    iget-object v0, v0, Lg/a/b0;->c:Ljava/lang/String;

    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v2}, Lg/a/z;->d(Ljava/lang/String;Z)Lg/a/z;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {v1, v2}, Lg/a/i$a;->a(I)V

    .line 8
    monitor-exit p1

    goto :goto_0

    .line 9
    :cond_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    invoke-virtual {v0}, Lg/a/z;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lg/a/i$a;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    monitor-exit v0

    .line 12
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    :goto_0
    new-instance p1, Lg/a/q;

    invoke-direct {p1, p0}, Lg/a/q;-><init>(Lg/a/a;)V

    iput-object p1, p0, Lg/a/i;->j:Lg/a/k0;

    return-void

    :catchall_0
    move-exception v1

    .line 14
    :try_start_3
    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v0

    .line 15
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public constructor <init>(Lio/realm/internal/OsSharedRealm;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lg/a/a;-><init>(Lio/realm/internal/OsSharedRealm;)V

    .line 17
    new-instance p1, Lg/a/q;

    invoke-direct {p1, p0}, Lg/a/q;-><init>(Lg/a/a;)V

    iput-object p1, p0, Lg/a/i;->j:Lg/a/k0;

    return-void
.end method


# virtual methods
.method public G()Lg/a/k0;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/a/i;->j:Lg/a/k0;

    return-object v0
.end method
