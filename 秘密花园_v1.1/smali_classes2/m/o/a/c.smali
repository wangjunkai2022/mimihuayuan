.class public final Lm/o/a/c;
.super Ljava/lang/Object;
.source "OnSubscribeLift.java"

# interfaces
.implements Lm/e$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lm/e$a<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:Lm/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/e$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lm/e$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/e$b<",
            "+TR;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm/e$a;Lm/e$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/e$a<",
            "TT;>;",
            "Lm/e$b<",
            "+TR;-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm/o/a/c;->a:Lm/e$a;

    .line 3
    iput-object p2, p0, Lm/o/a/c;->b:Lm/e$b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lm/j;

    .line 2
    :try_start_0
    iget-object v0, p0, Lm/o/a/c;->b:Lm/e$b;

    .line 3
    sget-object v1, Lm/q/l;->i:Lm/n/c;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, v0}, Lm/n/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/e$b;

    .line 5
    :cond_0
    invoke-interface {v0, p1}, Lm/n/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-virtual {v0}, Lm/j;->g()V

    .line 7
    iget-object v1, p0, Lm/o/a/c;->a:Lm/e$a;

    invoke-interface {v1, v0}, Lm/n/b;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_2
    invoke-static {v1}, Lj/b;->B(Ljava/lang/Throwable;)V

    .line 9
    invoke-virtual {v0, v1}, Lm/j;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 10
    invoke-static {v0}, Lj/b;->B(Ljava/lang/Throwable;)V

    .line 11
    invoke-virtual {p1, v0}, Lm/j;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
