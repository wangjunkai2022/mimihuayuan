.class public final Lf/i/b/c0/a0/l;
.super Lf/i/b/z;
.source "TimeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/i/b/z<",
        "Ljava/sql/Time;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lf/i/b/a0;


# instance fields
.field public final a:Ljava/text/DateFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/i/b/c0/a0/l$a;

    invoke-direct {v0}, Lf/i/b/c0/a0/l$a;-><init>()V

    sput-object v0, Lf/i/b/c0/a0/l;->b:Lf/i/b/a0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lf/i/b/z;-><init>()V

    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lf/i/b/c0/a0/l;->a:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public a(Lf/i/b/e0/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lf/i/b/e0/a;->V()Lf/i/b/e0/b;

    move-result-object v0

    sget-object v1, Lf/i/b/e0/b;->i:Lf/i/b/e0/b;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lf/i/b/e0/a;->R()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Lf/i/b/c0/a0/l;->a:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lf/i/b/e0/a;->T()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 6
    new-instance v0, Ljava/sql/Time;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    move-object p1, v0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 7
    :try_start_2
    new-instance v0, Lf/i/b/w;

    invoke-direct {v0, p1}, Lf/i/b/w;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Lf/i/b/e0/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/sql/Time;

    .line 2
    monitor-enter p0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lf/i/b/c0/a0/l;->a:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lf/i/b/e0/c;->Q(Ljava/lang/String;)Lf/i/b/e0/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
