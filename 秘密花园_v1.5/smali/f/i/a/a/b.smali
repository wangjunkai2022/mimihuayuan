.class public final synthetic Lf/i/a/a/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final synthetic b:Lf/i/a/a/o$b;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;Lf/i/a/a/o$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p2, p0, Lf/i/a/a/b;->b:Lf/i/a/a/o$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lf/i/a/a/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lf/i/a/a/b;->b:Lf/i/a/a/o$b;

    invoke-static {v0, v1}, Lf/i/a/a/y;->J(Ljava/util/concurrent/CopyOnWriteArrayList;Lf/i/a/a/o$b;)V

    return-void
.end method
