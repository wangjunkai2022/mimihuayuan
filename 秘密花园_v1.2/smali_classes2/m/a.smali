.class public Lm/a;
.super Lm/j;
.source "Completable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lm/d;


# direct methods
.method public constructor <init>(Lm/b;Lm/d;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lm/a;->e:Lm/d;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/a;->e:Lm/d;

    invoke-interface {v0}, Lm/d;->c()V

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/a;->e:Lm/d;

    invoke-interface {v0, p1}, Lm/d;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
