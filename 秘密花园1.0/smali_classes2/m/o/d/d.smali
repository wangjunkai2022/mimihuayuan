.class public final Lm/o/d/d;
.super Lm/e;
.source "ScalarSynchronousObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/o/d/d$e;,
        Lm/o/d/d$d;,
        Lm/o/d/d$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lm/e<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final c:Z


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "rx.just.strong-mode"

    const-string v1, "false"

    .line 1
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lm/o/d/d;->c:Z

    return-void
.end method


# virtual methods
.method public g(Lm/g;)Lm/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/g;",
            ")",
            "Lm/e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lm/o/c/c;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lm/o/c/c;

    .line 3
    new-instance v0, Lm/o/d/d$a;

    invoke-direct {v0, p0, p1}, Lm/o/d/d$a;-><init>(Lm/o/d/d;Lm/o/c/c;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lm/o/d/d$b;

    invoke-direct {v0, p0, p1}, Lm/o/d/d$b;-><init>(Lm/o/d/d;Lm/g;)V

    .line 5
    :goto_0
    new-instance p1, Lm/o/d/d$c;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lm/o/d/d$c;-><init>(Ljava/lang/Object;Lm/n/c;)V

    invoke-static {p1}, Lm/e;->e(Lm/e$a;)Lm/e;

    move-result-object p1

    return-object p1
.end method
