.class public final Li/m0/c/e$b;
.super Ljava/lang/Object;
.source "DiskLruCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/m0/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:[J

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Li/m0/c/e$a;

.field public f:J

.field public final g:Ljava/lang/String;

.field public final synthetic h:Li/m0/c/e;


# direct methods
.method public constructor <init>(Li/m0/c/e;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Li/m0/c/e$b;->h:Li/m0/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Li/m0/c/e$b;->g:Ljava/lang/String;

    .line 2
    iget p2, p1, Li/m0/c/e;->s:I

    .line 3
    new-array p2, p2, [J

    iput-object p2, p0, Li/m0/c/e$b;->a:[J

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Li/m0/c/e$b;->b:Ljava/util/List;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Li/m0/c/e$b;->c:Ljava/util/List;

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Li/m0/c/e$b;->g:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 8
    iget v2, p1, Li/m0/c/e;->s:I

    :goto_0
    if-ge v1, v2, :cond_0

    .line 9
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    iget-object v3, p0, Li/m0/c/e$b;->b:Ljava/util/List;

    new-instance v4, Ljava/io/File;

    .line 11
    iget-object v5, p1, Li/m0/c/e;->q:Ljava/io/File;

    .line 12
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v3, ".tmp"

    .line 13
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v3, p0, Li/m0/c/e$b;->c:Ljava/util/List;

    new-instance v4, Ljava/io/File;

    .line 15
    iget-object v5, p1, Li/m0/c/e;->q:Ljava/io/File;

    .line 16
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Li/m0/c/e$c;
    .locals 9

    .line 1
    iget-object v0, p0, Li/m0/c/e$b;->h:Li/m0/c/e;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v1, Lh/j;->a:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Assertion failed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Li/m0/c/e$b;->a:[J

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [J

    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Li/m0/c/e$b;->h:Li/m0/c/e;

    .line 5
    iget v2, v2, Li/m0/c/e;->s:I

    :goto_1
    if-ge v1, v2, :cond_2

    .line 6
    iget-object v3, p0, Li/m0/c/e$b;->h:Li/m0/c/e;

    .line 7
    iget-object v3, v3, Li/m0/c/e;->p:Li/m0/h/b;

    .line 8
    iget-object v4, p0, Li/m0/c/e$b;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-interface {v3, v4}, Li/m0/h/b;->b(Ljava/io/File;)Lj/a0;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_2
    new-instance v1, Li/m0/c/e$c;

    iget-object v3, p0, Li/m0/c/e$b;->h:Li/m0/c/e;

    iget-object v4, p0, Li/m0/c/e$b;->g:Ljava/lang/String;

    iget-wide v5, p0, Li/m0/c/e$b;->f:J

    move-object v2, v1

    move-object v7, v0

    invoke-direct/range {v2 .. v8}, Li/m0/c/e$c;-><init>(Li/m0/c/e;Ljava/lang/String;JLjava/util/List;[J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 10
    :catch_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/a0;

    .line 11
    invoke-static {v1}, Li/m0/b;->f(Ljava/io/Closeable;)V

    goto :goto_2

    .line 12
    :cond_3
    :try_start_1
    iget-object v0, p0, Li/m0/c/e$b;->h:Li/m0/c/e;

    invoke-virtual {v0, p0}, Li/m0/c/e;->M(Li/m0/c/e$b;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lj/i;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/m0/c/e$b;->a:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    const/16 v5, 0x20

    .line 2
    invoke-interface {p1, v5}, Lj/i;->q(I)Lj/i;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lj/i;->z(J)Lj/i;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
