.class public Lm/c;
.super Ljava/lang/Object;
.source "Completable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lm/c$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lm/q/l;->d:Lm/n/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lm/n/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm/c$a;

    :cond_0
    return-void
.end method
