.class public final Lm/b;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lm/c$a;


# instance fields
.field public final synthetic a:Lm/e;


# direct methods
.method public constructor <init>(Lm/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/b;->a:Lm/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lm/d;

    .line 2
    new-instance v0, Lm/a;

    invoke-direct {v0, p0, p1}, Lm/a;-><init>(Lm/b;Lm/d;)V

    .line 3
    invoke-interface {p1, v0}, Lm/d;->b(Lm/k;)V

    .line 4
    iget-object p1, p0, Lm/b;->a:Lm/e;

    invoke-virtual {p1, v0}, Lm/e;->f(Lm/j;)Lm/k;

    return-void
.end method
