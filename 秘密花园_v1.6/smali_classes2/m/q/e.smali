.class public final Lm/q/e;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lm/n/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lm/n/c<",
        "Lm/c$a;",
        "Lm/c$a;",
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
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lm/c$a;

    .line 2
    sget-object v0, Lm/q/o;->f:Lm/q/o;

    .line 3
    invoke-virtual {v0}, Lm/q/o;->a()Lm/q/a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method
