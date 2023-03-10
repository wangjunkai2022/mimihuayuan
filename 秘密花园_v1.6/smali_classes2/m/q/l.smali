.class public final Lm/q/l;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"


# static fields
.field public static volatile a:Lm/n/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/n/b<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile b:Lm/n/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/n/c<",
            "Lm/e$a;",
            "Lm/e$a;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile c:Lm/n/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/n/c<",
            "Lm/h$a;",
            "Lm/h$a;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile d:Lm/n/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/n/c<",
            "Lm/c$a;",
            "Lm/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile e:Lm/n/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/n/d<",
            "Lm/e;",
            "Lm/e$a;",
            "Lm/e$a;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile f:Lm/n/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/n/c<",
            "Lm/n/a;",
            "Lm/n/a;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile g:Lm/n/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/n/c<",
            "Lm/k;",
            "Lm/k;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile h:Lm/n/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/n/c<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile i:Lm/n/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/n/c<",
            "Lm/e$b;",
            "Lm/e$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lm/q/f;

    invoke-direct {v0}, Lm/q/f;-><init>()V

    sput-object v0, Lm/q/l;->a:Lm/n/b;

    .line 2
    new-instance v0, Lm/q/g;

    invoke-direct {v0}, Lm/q/g;-><init>()V

    sput-object v0, Lm/q/l;->e:Lm/n/d;

    .line 3
    new-instance v0, Lm/q/h;

    invoke-direct {v0}, Lm/q/h;-><init>()V

    sput-object v0, Lm/q/l;->g:Lm/n/c;

    .line 4
    new-instance v0, Lm/q/i;

    invoke-direct {v0}, Lm/q/i;-><init>()V

    sput-object v0, Lm/q/l;->f:Lm/n/c;

    .line 5
    new-instance v0, Lm/q/j;

    invoke-direct {v0}, Lm/q/j;-><init>()V

    sput-object v0, Lm/q/l;->h:Lm/n/c;

    .line 6
    new-instance v0, Lm/q/k;

    invoke-direct {v0}, Lm/q/k;-><init>()V

    sput-object v0, Lm/q/l;->i:Lm/n/c;

    .line 7
    new-instance v0, Lm/q/c;

    invoke-direct {v0}, Lm/q/c;-><init>()V

    sput-object v0, Lm/q/l;->b:Lm/n/c;

    .line 8
    new-instance v0, Lm/q/d;

    invoke-direct {v0}, Lm/q/d;-><init>()V

    sput-object v0, Lm/q/l;->c:Lm/n/c;

    .line 9
    new-instance v0, Lm/q/e;

    invoke-direct {v0}, Lm/q/e;-><init>()V

    sput-object v0, Lm/q/l;->d:Lm/n/c;

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    sget-object v0, Lm/q/l;->a:Lm/n/b;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p0}, Lm/n/b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    .line 7
    invoke-interface {v2, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 10
    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    .line 1
    sget-object v0, Lm/q/l;->h:Lm/n/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lm/n/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    :cond_0
    return-object p0
.end method

.method public static c(Lm/n/a;)Lm/n/a;
    .locals 1

    .line 1
    sget-object v0, Lm/q/l;->f:Lm/n/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lm/n/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/n/a;

    :cond_0
    return-object p0
.end method
