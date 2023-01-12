.class public Lm/o/d/d$b;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lm/n/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/o/d/d;->g(Lm/g;)Lm/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lm/n/c<",
        "Lm/n/a;",
        "Lm/k;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lm/g;


# direct methods
.method public constructor <init>(Lm/o/d/d;Lm/g;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lm/o/d/d$b;->a:Lm/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lm/n/a;

    .line 2
    iget-object v0, p0, Lm/o/d/d$b;->a:Lm/g;

    invoke-virtual {v0}, Lm/g;->a()Lm/g$a;

    move-result-object v0

    .line 3
    new-instance v1, Lm/o/d/e;

    invoke-direct {v1, p0, p1, v0}, Lm/o/d/e;-><init>(Lm/o/d/d$b;Lm/n/a;Lm/g$a;)V

    invoke-virtual {v0, v1}, Lm/g$a;->b(Lm/n/a;)Lm/k;

    return-object v0
.end method
