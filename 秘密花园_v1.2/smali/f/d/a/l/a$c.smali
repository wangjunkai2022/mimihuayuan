.class public final Lf/d/a/l/a$c;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/l/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Lf/d/a/l/a$d;

.field public final b:[Z

.field public c:Z

.field public final synthetic d:Lf/d/a/l/a;


# direct methods
.method public constructor <init>(Lf/d/a/l/a;Lf/d/a/l/a$d;Lf/d/a/l/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/d/a/l/a$c;->d:Lf/d/a/l/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lf/d/a/l/a$c;->a:Lf/d/a/l/a$d;

    .line 3
    iget-boolean p2, p2, Lf/d/a/l/a$d;->e:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p1, Lf/d/a/l/a;->g:I

    .line 5
    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lf/d/a/l/a$c;->b:[Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/l/a$c;->d:Lf/d/a/l/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lf/d/a/l/a;->d(Lf/d/a/l/a;Lf/d/a/l/a$c;Z)V

    return-void
.end method

.method public b(I)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/l/a$c;->d:Lf/d/a/l/a;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lf/d/a/l/a$c;->a:Lf/d/a/l/a$d;

    .line 3
    iget-object v1, v1, Lf/d/a/l/a$d;->f:Lf/d/a/l/a$c;

    if-ne v1, p0, :cond_2

    .line 4
    iget-object v1, p0, Lf/d/a/l/a$c;->a:Lf/d/a/l/a$d;

    .line 5
    iget-boolean v1, v1, Lf/d/a/l/a$d;->e:Z

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lf/d/a/l/a$c;->b:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 7
    :cond_0
    iget-object v1, p0, Lf/d/a/l/a$c;->a:Lf/d/a/l/a$d;

    .line 8
    iget-object v1, v1, Lf/d/a/l/a$d;->d:[Ljava/io/File;

    aget-object p1, v1, p1

    .line 9
    iget-object v1, p0, Lf/d/a/l/a$c;->d:Lf/d/a/l/a;

    .line 10
    iget-object v1, v1, Lf/d/a/l/a;->a:Ljava/io/File;

    .line 11
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    iget-object v1, p0, Lf/d/a/l/a$c;->d:Lf/d/a/l/a;

    .line 13
    iget-object v1, v1, Lf/d/a/l/a;->a:Ljava/io/File;

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 15
    :cond_1
    monitor-exit v0

    return-object p1

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
