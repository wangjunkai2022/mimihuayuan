.class public final Lf/i/a/a/l1/k0/v;
.super Ljava/lang/Object;
.source "SimpleCache.java"

# interfaces
.implements Lf/i/a/a/l1/k0/b;


# static fields
.field public static final k:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Lf/i/a/a/l1/k0/g;

.field public final c:Lf/i/a/a/l1/k0/n;

.field public final d:Lf/i/a/a/l1/k0/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lf/i/a/a/l1/k0/b$b;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Random;

.field public final g:Z

.field public h:J

.field public i:J

.field public j:Lf/i/a/a/l1/k0/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lf/i/a/a/l1/k0/v;->k:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lf/i/a/a/l1/k0/g;Lf/i/a/a/x0/b;[BZZ)V
    .locals 7
    .param p3    # Lf/i/a/a/x0/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    new-instance v6, Lf/i/a/a/l1/k0/n;

    move-object v0, v6

    move-object v1, p3

    move-object v2, p1

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lf/i/a/a/l1/k0/n;-><init>(Lf/i/a/a/x0/b;Ljava/io/File;[BZZ)V

    if-eqz p3, :cond_0

    if-nez p6, :cond_0

    new-instance p4, Lf/i/a/a/l1/k0/i;

    invoke-direct {p4, p3}, Lf/i/a/a/l1/k0/i;-><init>(Lf/i/a/a/x0/b;)V

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 3
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-class p3, Lf/i/a/a/l1/k0/v;

    monitor-enter p3

    .line 5
    :try_start_0
    sget-object p5, Lf/i/a/a/l1/k0/v;->k:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p3

    if-eqz p5, :cond_1

    .line 6
    iput-object p1, p0, Lf/i/a/a/l1/k0/v;->a:Ljava/io/File;

    .line 7
    iput-object p2, p0, Lf/i/a/a/l1/k0/v;->b:Lf/i/a/a/l1/k0/g;

    .line 8
    iput-object v6, p0, Lf/i/a/a/l1/k0/v;->c:Lf/i/a/a/l1/k0/n;

    .line 9
    iput-object p4, p0, Lf/i/a/a/l1/k0/v;->d:Lf/i/a/a/l1/k0/i;

    .line 10
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lf/i/a/a/l1/k0/v;->e:Ljava/util/HashMap;

    .line 11
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lf/i/a/a/l1/k0/v;->f:Ljava/util/Random;

    .line 12
    invoke-interface {p2}, Lf/i/a/a/l1/k0/g;->e()Z

    move-result p1

    iput-boolean p1, p0, Lf/i/a/a/l1/k0/v;->g:Z

    const-wide/16 p1, -0x1

    .line 13
    iput-wide p1, p0, Lf/i/a/a/l1/k0/v;->h:J

    .line 14
    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    .line 15
    new-instance p2, Lf/i/a/a/l1/k0/u;

    const-string p3, "SimpleCache.initialize()"

    invoke-direct {p2, p0, p3, p1}, Lf/i/a/a/l1/k0/u;-><init>(Lf/i/a/a/l1/k0/v;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 16
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 17
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    return-void

    .line 18
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Another SimpleCache instance uses the folder: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p3

    throw p1
.end method

.method public constructor <init>(Ljava/io/File;Lf/i/a/a/l1/k0/g;[B)V
    .locals 8
    .param p3    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 1
    invoke-direct/range {v1 .. v7}, Lf/i/a/a/l1/k0/v;-><init>(Ljava/io/File;Lf/i/a/a/l1/k0/g;Lf/i/a/a/x0/b;[BZZ)V

    return-void
.end method

.method public static l(Lf/i/a/a/l1/k0/v;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/k0/v;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/l1/k0/v;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Failed to create cache directory: "

    .line 3
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/i/a/a/l1/k0/v;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Lf/i/a/a/l1/k0/b$a;

    invoke-direct {v1, v0}, Lf/i/a/a/l1/k0/b$a;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lf/i/a/a/l1/k0/v;->j:Lf/i/a/a/l1/k0/b$a;

    goto/16 :goto_5

    .line 5
    :cond_0
    iget-object v0, p0, Lf/i/a/a/l1/k0/v;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Failed to list cache directory files: "

    .line 6
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/i/a/a/l1/k0/v;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Lf/i/a/a/l1/k0/b$a;

    invoke-direct {v1, v0}, Lf/i/a/a/l1/k0/b$a;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lf/i/a/a/l1/k0/v;->j:Lf/i/a/a/l1/k0/b$a;

    goto/16 :goto_5

    .line 8
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-wide/16 v4, -0x1

    if-ge v3, v1, :cond_3

    aget-object v6, v0, v3

    .line 9
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".uid"

    .line 10
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x2e

    .line 11
    :try_start_0
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v7, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 12
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed UID file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-wide v6, v4

    .line 14
    :goto_1
    iput-wide v6, p0, Lf/i/a/a/l1/k0/v;->h:J

    cmp-long v1, v6, v4

    if-nez v1, :cond_4

    .line 15
    :try_start_1
    iget-object v1, p0, Lf/i/a/a/l1/k0/v;->a:Ljava/io/File;

    invoke-static {v1}, Lf/i/a/a/l1/k0/v;->o(Ljava/io/File;)J

    move-result-wide v3

    iput-wide v3, p0, Lf/i/a/a/l1/k0/v;->h:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "Failed to create cache UID: "

    .line 16
    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lf/i/a/a/l1/k0/v;->a:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    new-instance v2, Lf/i/a/a/l1/k0/b$a;

    invoke-direct {v2, v1, v0}, Lf/i/a/a/l1/k0/b$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v2, p0, Lf/i/a/a/l1/k0/v;->j:Lf/i/a/a/l1/k0/b$a;

    goto :goto_5

    .line 18
    :cond_4
    :goto_2
    :try_start_2
    iget-object v1, p0, Lf/i/a/a/l1/k0/v;->c:Lf/i/a/a/l1/k0/n;

    iget-wide v3, p0, Lf/i/a/a/l1/k0/v;->h:J

    invoke-virtual {v1, v3, v4}, Lf/i/a/a/l1/k0/n;->e(J)V

    .line 19
    iget-object v1, p0, Lf/i/a/a/l1/k0/v;->d:Lf/i/a/a/l1/k0/i;

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 20
    iget-object v1, p0, Lf/i/a/a/l1/k0/v;->d:Lf/i/a/a/l1/k0/i;

    iget-wide v4, p0, Lf/i/a/a/l1/k0/v;->h:J

    invoke-virtual {v1, v4, v5}, Lf/i/a/a/l1/k0/i;->b(J)V

    .line 21
    iget-object v1, p0, Lf/i/a/a/l1/k0/v;->d:Lf/i/a/a/l1/k0/i;

    invoke-virtual {v1}, Lf/i/a/a/l1/k0/i;->a()Ljava/util/Map;

    move-result-object v1

    .line 22
    iget-object v4, p0, Lf/i/a/a/l1/k0/v;->a:Ljava/io/File;

    invoke-virtual {p0, v4, v3, v0, v1}, Lf/i/a/a/l1/k0/v;->p(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V

    .line 23
    iget-object v0, p0, Lf/i/a/a/l1/k0/v;->d:Lf/i/a/a/l1/k0/i;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    check-cast v1, Ljava/util/HashMap;

    :try_start_3
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/i/a/a/l1/k0/i;->c(Ljava/util/Set;)V

    goto :goto_3

    .line 24
    :cond_5
    iget-object v1, p0, Lf/i/a/a/l1/k0/v;->a:Ljava/io/File;

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v0, v4}, Lf/i/a/a/l1/k0/v;->p(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 25
    :goto_3
    iget-object v0, p0, Lf/i/a/a/l1/k0/v;->c:Lf/i/a/a/l1/k0/n;

    .line 26
    iget-object v1, v0, Lf/i/a/a/l1/k0/n;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    .line 27
    iget-object v4, v0, Lf/i/a/a/l1/k0/n;->a:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_4
    if-ge v2, v1, :cond_6

    .line 28
    aget-object v4, v3, v2

    .line 29
    invoke-virtual {v0, v4}, Lf/i/a/a/l1/k0/n;->f(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 30
    :cond_6
    :try_start_4
    iget-object p0, p0, Lf/i/a/a/l1/k0/v;->c:Lf/i/a/a/l1/k0/n;

    invoke-virtual {p0}, Lf/i/a/a/l1/k0/n;->g()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_2
    move-exception v0

    const-string v1, "Failed to initialize cache indices: "

    .line 31
    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lf/i/a/a/l1/k0/v;->a:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    new-instance v2, Lf/i/a/a/l1/k0/b$a;

    invoke-direct {v2, v1, v0}, Lf/i/a/a/l1/k0/b$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v2, p0, Lf/i/a/a/l1/k0/v;->j:Lf/i/a/a/l1/k0/b$a;

    :catch_3
    :goto_5
    return-void
.end method

.method public static o(Ljava/io/File;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :goto_0
    const/16 v2, 0x10

    .line 3
    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/io/File;

    const-string v4, ".uid"

    invoke-static {v2, v4}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_1

    return-wide v0

    .line 6
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create UID file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;JJ)Ljava/io/File;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/l1/k0/b$a;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/l1/k0/v;->n()V

    .line 3
    iget-object v0, p0, Lf/i/a/a/l1/k0/v;->c:Lf/i/a/a/l1/k0/n;

    .line 4
    iget-object v0, v0, Lf/i/a/a/l1/k0/n;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/l1/k0/m;

    .line 5
    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-boolean v1, v0, Lf/i/a/a/l1/k0/m;->e:Z

    .line 7
    invoke-static {v1}, Lc/a/a/b/g/h;->v(Z)V

    .line 8
    iget-object v1, p0, Lf/i/a/a/l1/k0/v;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    iget-object v1, p0, Lf/i/a/a/l1/k0/v;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 10
    invoke-virtual {p0}, Lf/i/a/a/l1/k0/v;->r()V

    .line 11
    :cond_0
    iget-object v1, p0, Lf/i/a/a/l1/k0/v;->b:Lf/i/a/a/l1/k0/g;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lf/i/a/a/l1/k0/g;->f(Lf/i/a/a/l1/k0/b;Ljava/lang/String;JJ)V

    .line 12
    new-instance v2, Ljava/io/File;

    iget-object p1, p0, Lf/i/a/a/l1/k0/v;->a:Ljava/io/File;

    iget-object p4, p0, Lf/i/a/a/l1/k0/v;->f:Ljava/util/Random;

    const/16 p5, 0xa

    invoke-virtual {p4, p5}, Ljava/util/Random;->nextInt(I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v2, p1, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 14
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 15
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 16
    iget v3, v0, Lf/i/a/a/l1/k0/m;->a:I

    move-wide v4, p2

    invoke-static/range {v2 .. v7}, Lf/i/a/a/l1/k0/w;->c(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/io/File;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/l1/k0/b$a;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    .line 4
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_2
    iget-object v6, p0, Lf/i/a/a/l1/k0/v;->c:Lf/i/a/a/l1/k0/n;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, p1

    move-wide v2, p2

    .line 7
    invoke-static/range {v1 .. v6}, Lf/i/a/a/l1/k0/w;->b(Ljava/io/File;JJLf/i/a/a/l1/k0/n;)Lf/i/a/a/l1/k0/w;

    move-result-object p2

    .line 8
    invoke-static {p2}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p3, p0, Lf/i/a/a/l1/k0/v;->c:Lf/i/a/a/l1/k0/n;

    iget-object v1, p2, Lf/i/a/a/l1/k0/k;->a:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lf/i/a/a/l1/k0/n;->c(Ljava/lang/String;)Lf/i/a/a/l1/k0/m;

    move-result-object p3

    invoke-static {p3}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-boolean v1, p3, Lf/i/a/a/l1/k0/m;->e:Z

    .line 11
    invoke-static {v1}, Lc/a/a/b/g/h;->v(Z)V

    .line 12
    iget-object p3, p3, Lf/i/a/a/l1/k0/m;->d:Lf/i/a/a/l1/k0/r;

    .line 13
    invoke-static {p3}, Lf/i/a/a/l1/k0/o;->a(Lf/i/a/a/l1/k0/p;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p3, v1, v3

    if-eqz p3, :cond_3

    .line 14
    iget-wide v3, p2, Lf/i/a/a/l1/k0/k;->b:J

    iget-wide v5, p2, Lf/i/a/a/l1/k0/k;->c:J

    add-long/2addr v3, v5

    cmp-long p3, v3, v1

    if-gtz p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 15
    :cond_3
    iget-object p3, p0, Lf/i/a/a/l1/k0/v;->d:Lf/i/a/a/l1/k0/i;

    if-eqz p3, :cond_4

    .line 16
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :try_start_3
    iget-object v0, p0, Lf/i/a/a/l1/k0/v;->d:Lf/i/a/a/l1/k0/i;

    iget-wide v2, p2, Lf/i/a/a/l1/k0/k;->c:J

    iget-wide v4, p2, Lf/i/a/a/l1/k0/k;->f:J

    invoke-virtual/range {v0 .. v5}, Lf/i/a/a/l1/k0/i;->d(Ljava/lang/String;JJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    :try_start_4
    new-instance p2, Lf/i/a/a/l1/k0/b$a;

    invoke-direct {p2, p1}, Lf/i/a/a/l1/k0/b$a;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 19
    :cond_4
    :goto_1
    invoke-virtual {p0, p2}, Lf/i/a/a/l1/k0/v;->m(Lf/i/a/a/l1/k0/w;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 20
    :try_start_5
    iget-object p1, p0, Lf/i/a/a/l1/k0/v;->c:Lf/i/a/a/l1/k0/n;

    invoke-virtual {p1}, Lf/i/a/a/l1/k0/n;->g()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 21
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 22
    monitor-exit p0

    return-void

    :catch_1
    move-exception p1

    .line 23
    :try_start_7
    new-instance p2, Lf/i/a/a/l1/k0/b$a;

    invoke-direct {p2, p1}, Lf/i/a/a/l1/k0/b$a;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;)Lf/i/a/a/l1/k0/p;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iget-object v0, p0, Lf/i/a/a/l1/k0/v;->c:Lf/i/a/a/l1/k0/n;

    .line 3
    iget-object v0, v0, Lf/i/a/a/l1/k0/n;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/l1/k0/m;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p1, Lf/i/a/a/l1/k0/m;->d:Lf/i/a/a/l1/k0/r;

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lf/i/a/a/l1/k0/r;->c:Lf/i/a/a/l1/k0/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Ljava/lang/String;Lf/i/a/a/l1/k0/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/l1/k0/b$a;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/l1/k0/v;->n()V

    .line 3
    iget-object v1, p0, Lf/i/a/a/l1/k0/v;->c:Lf/i/a/a/l1/k0/n;

    .line 4
    invoke-virtual {v1, p1}, Lf/i/a/a/l1/k0/n;->d(Ljava/lang/String;)Lf/i/a/a/l1/k0/m;

    move-result-object p1

    .line 5
    iget-object v2, p1, Lf/i/a/a/l1/k0/m;->d:Lf/i/a/a/l1/k0/r;

    .line 6
    invoke-virtual {v2, p2}, Lf/i/a/a/l1/k0/r;->a(Lf/i/a/a/l1/k0/q;)Lf/i/a/a/l1/k0/r;

    move-result-object p2

    iput-object p2, p1, Lf/i/a/a/l1/k0/m;->d:Lf/i/a/a/l1/k0/r;

    .line 7
    invoke-virtual {p2, v2}, Lf/i/a/a/l1/k0/r;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v0

    if-eqz p2, :cond_0

    .line 8
    iget-object p2, v1, Lf/i/a/a/l1/k0/n;->e:Lf/i/a/a/l1/k0/n$c;

    invoke-interface {p2, p1}, Lf/i/a/a/l1/k0/n$c;->f(Lf/i/a/a/l1/k0/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_0
    :try_start_1
    iget-object p1, p0, Lf/i/a/a/l1/k0/v;->c:Lf/i/a/a/l1/k0/n;

    invoke-virtual {p1}, Lf/i/a/a/l1/k0/n;->g()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 11
    :try_start_2
    new-instance p2, Lf/i/a/a/l1/k0/b$a;

    invoke-direct {p2, p1}, Lf/i/a/a/l1/k0/b$a;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Lf/i/a/a/l1/k0/k;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lf/i/a/a/l1/k0/v;->q(Lf/i/a/a/l1/k0/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f()J
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iget-wide v0, p0, Lf/i/a/a/l1/k0/v;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g(Ljava/lang/String;J)Lf/i/a/a/l1/k0/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lf/i/a/a/l1/k0/b$a;
        }
    .end annotation

    .line 1
    monitor-enter p0

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 3
    invoke-virtual {p0}, Lf/i/a/a/l1/k0/v;->n()V

    .line 4
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lf/i/a/a/l1/k0/v;->s(Ljava/lang/String;J)Lf/i/a/a/l1/k0/w;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    monitor-exit p0

    return-object v0

    .line 6
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized h(Lf/i/a/a/l1/k0/k;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iget-object v0, p0, Lf/i/a/a/l1/k0/v;->c:Lf/i/a/a/l1/k0/n;

    iget-object p1, p1, Lf/i/a/a/l1/k0/k;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lf/i/a/a/l1/k0/n;->c(Ljava/lang/String;)Lf/i/a/a/l1/k0/m;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-boolean v0, p1, Lf/i/a/a/l1/k0/m;->e:Z

    .line 5
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p1, Lf/i/a/a/l1/k0/m;->e:Z

    .line 7
    iget-object v0, p0, Lf/i/a/a/l1/k0/v;->c:Lf/i/a/a/l1/k0/n;

    iget-object p1, p1, Lf/i/a/a/l1/k0/m;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lf/i/a/a/l1/k0/n;->f(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic i(Ljava/lang/String;J)Lf/i/a/a/l1/k0/k;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/l1/k0/b$a;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lf/i/a/a/l1/k0/v;->s(Ljava/lang/String;J)Lf/i/a/a/l1/k0/w;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized j(Ljava/lang/String;)Ljava/util/NavigableSet;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableSet<",
            "Lf/i/a/a/l1/k0/k;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iget-object v0, p0, Lf/i/a/a/l1/k0/v;->c:Lf/i/a/a/l1/k0/n;

    .line 3
    iget-object v0, v0, Lf/i/a/a/l1/k0/n;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/l1/k0/m;

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p1, Lf/i/a/a/l1/k0/m;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    .line 6
    iget-object p1, p1, Lf/i/a/a/l1/k0/m;->c:Ljava/util/TreeSet;

    .line 7
    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized k(Ljava/lang/String;JJ)J
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iget-object v0, p0, Lf/i/a/a/l1/k0/v;->c:Lf/i/a/a/l1/k0/n;

    .line 3
    iget-object v0, v0, Lf/i/a/a/l1/k0/n;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/l1/k0/m;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p2, p3, p4, p5}, Lf/i/a/a/l1/k0/m;->a(JJ)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    neg-long p1, p4

    :goto_0
    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final m(Lf/i/a/a/l1/k0/w;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/k0/v;->c:Lf/i/a/a/l1/k0/n;

    iget-object v1, p1, Lf/i/a/a/l1/k0/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lf/i/a/a/l1/k0/n;->d(Ljava/lang/String;)Lf/i/a/a/l1/k0/m;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lf/i/a/a/l1/k0/m;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 3
    iget-wide v0, p0, Lf/i/a/a/l1/k0/v;->i:J

    iget-wide v2, p1, Lf/i/a/a/l1/k0/k;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lf/i/a/a/l1/k0/v;->i:J

    .line 4
    iget-object v0, p0, Lf/i/a/a/l1/k0/v;->e:Ljava/util/HashMap;

    iget-object v1, p1, Lf/i/a/a/l1/k0/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/l1/k0/b$b;

    invoke-interface {v2, p0, p1}, Lf/i/a/a/l1/k0/b$b;->c(Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/k0/k;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lf/i/a/a/l1/k0/v;->b:Lf/i/a/a/l1/k0/g;

    invoke-interface {v0, p0, p1}, Lf/i/a/a/l1/k0/b$b;->c(Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/k0/k;)V

    return-void
.end method

.method public declared-synchronized n()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/l1/k0/b$a;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/i/a/a/l1/k0/v;->j:Lf/i/a/a/l1/k0/b$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lf/i/a/a/l1/k0/v;->j:Lf/i/a/a/l1/k0/b$a;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final p(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V
    .locals 9
    .param p3    # [Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z[",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lf/i/a/a/l1/k0/h;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_8

    .line 1
    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    array-length p1, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_7

    aget-object v8, p3, v1

    .line 3
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_1

    const/16 v3, 0x2e

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 5
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v8, v0, v2, p4}, Lf/i/a/a/l1/k0/v;->p(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    const-string v3, "cached_content_index.exi"

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, ".uid"

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const-wide/16 v3, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p4, :cond_3

    .line 8
    invoke-interface {p4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/l1/k0/h;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    .line 9
    iget-wide v3, v2, Lf/i/a/a/l1/k0/h;->a:J

    .line 10
    iget-wide v5, v2, Lf/i/a/a/l1/k0/h;->b:J

    .line 11
    :cond_4
    iget-object v7, p0, Lf/i/a/a/l1/k0/v;->c:Lf/i/a/a/l1/k0/n;

    move-object v2, v8

    .line 12
    invoke-static/range {v2 .. v7}, Lf/i/a/a/l1/k0/w;->b(Ljava/io/File;JJLf/i/a/a/l1/k0/n;)Lf/i/a/a/l1/k0/w;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {p0, v2}, Lf/i/a/a/l1/k0/v;->m(Lf/i/a/a/l1/k0/w;)V

    goto :goto_2

    .line 14
    :cond_5
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void

    :cond_8
    :goto_3
    if-nez p2, :cond_9

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_9
    return-void
.end method

.method public final q(Lf/i/a/a/l1/k0/k;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/k0/v;->c:Lf/i/a/a/l1/k0/n;

    iget-object v1, p1, Lf/i/a/a/l1/k0/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lf/i/a/a/l1/k0/n;->c(Ljava/lang/String;)Lf/i/a/a/l1/k0/m;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    iget-object v1, v0, Lf/i/a/a/l1/k0/m;->c:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p1, Lf/i/a/a/l1/k0/k;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_3

    .line 4
    :cond_1
    iget-wide v4, p0, Lf/i/a/a/l1/k0/v;->i:J

    iget-wide v6, p1, Lf/i/a/a/l1/k0/k;->c:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lf/i/a/a/l1/k0/v;->i:J

    .line 5
    iget-object v1, p0, Lf/i/a/a/l1/k0/v;->d:Lf/i/a/a/l1/k0/i;

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p1, Lf/i/a/a/l1/k0/k;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 7
    :try_start_0
    iget-object v4, p0, Lf/i/a/a/l1/k0/v;->d:Lf/i/a/a/l1/k0/i;

    .line 8
    iget-object v5, v4, Lf/i/a/a/l1/k0/i;->b:Ljava/lang/String;

    invoke-static {v5}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    iget-object v5, v4, Lf/i/a/a/l1/k0/i;->a:Lf/i/a/a/x0/b;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    check-cast v5, Landroid/database/sqlite/SQLiteOpenHelper;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 10
    iget-object v4, v4, Lf/i/a/a/l1/k0/i;->b:Ljava/lang/String;

    const-string v6, "0 = ?"

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v3

    invoke-virtual {v5, v4, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 11
    :try_start_4
    new-instance v2, Lf/i/a/a/x0/a;

    invoke-direct {v2, v1}, Lf/i/a/a/x0/a;-><init>(Landroid/database/SQLException;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 12
    :catch_1
    :cond_2
    :goto_1
    iget-object v1, p0, Lf/i/a/a/l1/k0/v;->c:Lf/i/a/a/l1/k0/n;

    iget-object v0, v0, Lf/i/a/a/l1/k0/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lf/i/a/a/l1/k0/n;->f(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lf/i/a/a/l1/k0/v;->e:Ljava/util/HashMap;

    iget-object v1, p1, Lf/i/a/a/l1/k0/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/l1/k0/b$b;

    invoke-interface {v2, p0, p1}, Lf/i/a/a/l1/k0/b$b;->a(Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/k0/k;)V

    goto :goto_2

    .line 16
    :cond_3
    iget-object v0, p0, Lf/i/a/a/l1/k0/v;->b:Lf/i/a/a/l1/k0/g;

    invoke-interface {v0, p0, p1}, Lf/i/a/a/l1/k0/b$b;->a(Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/k0/k;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final r()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lf/i/a/a/l1/k0/v;->c:Lf/i/a/a/l1/k0/n;

    .line 3
    iget-object v1, v1, Lf/i/a/a/l1/k0/n;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/l1/k0/m;

    .line 5
    iget-object v2, v2, Lf/i/a/a/l1/k0/m;->c:Ljava/util/TreeSet;

    .line 6
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/l1/k0/k;

    .line 7
    iget-object v4, v3, Lf/i/a/a/l1/k0/k;->e:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 8
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 9
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/l1/k0/k;

    invoke-virtual {p0, v2}, Lf/i/a/a/l1/k0/v;->q(Lf/i/a/a/l1/k0/k;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public declared-synchronized s(Ljava/lang/String;J)Lf/i/a/a/l1/k0/w;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/l1/k0/b$a;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/l1/k0/v;->n()V

    .line 3
    iget-object v1, p0, Lf/i/a/a/l1/k0/v;->c:Lf/i/a/a/l1/k0/n;

    .line 4
    iget-object v1, v1, Lf/i/a/a/l1/k0/n;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/l1/k0/m;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lf/i/a/a/l1/k0/w;

    const-wide/16 v6, -0x1

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    move-object v2, v1

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v2 .. v10}, Lf/i/a/a/l1/k0/w;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {v1, p2, p3}, Lf/i/a/a/l1/k0/m;->b(J)Lf/i/a/a/l1/k0/w;

    move-result-object v2

    .line 7
    iget-boolean v3, v2, Lf/i/a/a/l1/k0/k;->d:Z

    if-eqz v3, :cond_1

    iget-object v3, v2, Lf/i/a/a/l1/k0/k;->e:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    invoke-virtual {p0}, Lf/i/a/a/l1/k0/v;->r()V

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 9
    :goto_1
    iget-boolean p2, v1, Lf/i/a/a/l1/k0/k;->d:Z

    if-eqz p2, :cond_5

    .line 10
    iget-boolean p2, p0, Lf/i/a/a/l1/k0/v;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_2

    .line 11
    monitor-exit p0

    return-object v1

    .line 12
    :cond_2
    :try_start_1
    iget-object p2, v1, Lf/i/a/a/l1/k0/k;->e:Ljava/io/File;

    invoke-static {p2}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 13
    iget-wide v4, v1, Lf/i/a/a/l1/k0/k;->c:J

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 15
    iget-object v2, p0, Lf/i/a/a/l1/k0/v;->d:Lf/i/a/a/l1/k0/i;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 16
    :try_start_2
    iget-object v2, p0, Lf/i/a/a/l1/k0/v;->d:Lf/i/a/a/l1/k0/i;

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lf/i/a/a/l1/k0/i;->d(Ljava/lang/String;JJ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    const/4 v0, 0x0

    .line 17
    :cond_3
    :try_start_3
    iget-object v2, p0, Lf/i/a/a/l1/k0/v;->c:Lf/i/a/a/l1/k0/n;

    .line 18
    iget-object v2, v2, Lf/i/a/a/l1/k0/n;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/l1/k0/m;

    .line 19
    invoke-virtual {p1, v1, p2, p3, v0}, Lf/i/a/a/l1/k0/m;->c(Lf/i/a/a/l1/k0/w;JZ)Lf/i/a/a/l1/k0/w;

    move-result-object p1

    .line 20
    iget-object p2, p0, Lf/i/a/a/l1/k0/v;->e:Ljava/util/HashMap;

    iget-object p3, v1, Lf/i/a/a/l1/k0/k;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    .line 21
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    :goto_2
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_4

    .line 22
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/l1/k0/b$b;

    invoke-interface {v0, p0, v1, p1}, Lf/i/a/a/l1/k0/b$b;->b(Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/k0/k;Lf/i/a/a/l1/k0/k;)V

    goto :goto_2

    .line 23
    :cond_4
    iget-object p2, p0, Lf/i/a/a/l1/k0/v;->b:Lf/i/a/a/l1/k0/g;

    invoke-interface {p2, p0, v1, p1}, Lf/i/a/a/l1/k0/b$b;->b(Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/k0/k;Lf/i/a/a/l1/k0/k;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    monitor-exit p0

    return-object p1

    .line 25
    :cond_5
    :try_start_4
    iget-object p2, p0, Lf/i/a/a/l1/k0/v;->c:Lf/i/a/a/l1/k0/n;

    invoke-virtual {p2, p1}, Lf/i/a/a/l1/k0/n;->d(Ljava/lang/String;)Lf/i/a/a/l1/k0/m;

    move-result-object p1

    .line 26
    iget-boolean p2, p1, Lf/i/a/a/l1/k0/m;->e:Z

    if-nez p2, :cond_6

    .line 27
    iput-boolean v0, p1, Lf/i/a/a/l1/k0/m;->e:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 28
    monitor-exit p0

    return-object v1

    :cond_6
    const/4 p1, 0x0

    .line 29
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
