.class public Lm/o/c/b;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"

# interfaces
.implements Lm/n/a;


# instance fields
.field public final synthetic a:Lm/n/a;

.field public final synthetic b:Lm/o/c/a$b;


# direct methods
.method public constructor <init>(Lm/o/c/a$b;Lm/n/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/o/c/b;->b:Lm/o/c/a$b;

    iput-object p2, p0, Lm/o/c/b;->a:Lm/n/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/o/c/b;->b:Lm/o/c/a$b;

    .line 2
    iget-object v0, v0, Lm/o/c/a$b;->a:Lm/s/a;

    .line 3
    iget-boolean v0, v0, Lm/s/a;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lm/o/c/b;->a:Lm/n/a;

    invoke-interface {v0}, Lm/n/a;->call()V

    return-void
.end method
