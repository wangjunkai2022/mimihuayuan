.class public final Lm/q/g;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lm/n/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lm/n/d<",
        "Lm/e;",
        "Lm/e$a;",
        "Lm/e$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lm/e;

    check-cast p2, Lm/e$a;

    .line 2
    sget-object p1, Lm/q/o;->f:Lm/q/o;

    .line 3
    invoke-virtual {p1}, Lm/q/o;->c()Lm/q/m;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method
