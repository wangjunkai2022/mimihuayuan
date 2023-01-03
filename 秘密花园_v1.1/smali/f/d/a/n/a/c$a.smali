.class public Lf/d/a/n/a/c$a;
.super Ljava/lang/Object;
.source "OkHttpUrlLoader.java"

# interfaces
.implements Lf/d/a/o/o/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/n/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d/a/o/o/o<",
        "Lf/d/a/o/o/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static volatile b:Li/f$a;


# instance fields
.field public final a:Li/f$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lf/d/a/n/a/c$a;->b:Li/f$a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lf/d/a/n/a/c$a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lf/d/a/n/a/c$a;->b:Li/f$a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Li/b0;

    invoke-direct {v1}, Li/b0;-><init>()V

    sput-object v1, Lf/d/a/n/a/c$a;->b:Li/f$a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lf/d/a/n/a/c$a;->b:Li/f$a;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lf/d/a/n/a/c$a;->a:Li/f$a;

    return-void
.end method

.method public constructor <init>(Li/f$a;)V
    .locals 0
    .param p1    # Li/f$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lf/d/a/n/a/c$a;->a:Li/f$a;

    return-void
.end method


# virtual methods
.method public b(Lf/d/a/o/o/r;)Lf/d/a/o/o/n;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/o/r;",
            ")",
            "Lf/d/a/o/o/n<",
            "Lf/d/a/o/o/g;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lf/d/a/n/a/c;

    iget-object v0, p0, Lf/d/a/n/a/c$a;->a:Li/f$a;

    invoke-direct {p1, v0}, Lf/d/a/n/a/c;-><init>(Li/f$a;)V

    return-object p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
