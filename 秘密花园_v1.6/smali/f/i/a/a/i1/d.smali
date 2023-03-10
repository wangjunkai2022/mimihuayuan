.class public final Lf/i/a/a/i1/d;
.super Lf/i/a/a/i1/j;
.source "SimpleSubtitleOutputBuffer.java"


# instance fields
.field public final e:Lf/i/a/a/i1/c;


# direct methods
.method public constructor <init>(Lf/i/a/a/i1/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/i/a/a/i1/j;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/i1/d;->e:Lf/i/a/a/i1/c;

    return-void
.end method


# virtual methods
.method public final i()V
    .locals 5

    .line 1
    iget-object v0, p0, Lf/i/a/a/i1/d;->e:Lf/i/a/a/i1/c;

    .line 2
    iget-object v1, v0, Lf/i/a/a/y0/g;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 3
    :try_start_0
    iput v2, p0, Lf/i/a/a/y0/a;->a:I

    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Lf/i/a/a/i1/j;->c:Lf/i/a/a/i1/e;

    .line 5
    iget-object v2, v0, Lf/i/a/a/y0/g;->f:[Lf/i/a/a/y0/f;

    iget v3, v0, Lf/i/a/a/y0/g;->h:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lf/i/a/a/y0/g;->h:I

    aput-object p0, v2, v3

    .line 6
    invoke-virtual {v0}, Lf/i/a/a/y0/g;->h()V

    .line 7
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
