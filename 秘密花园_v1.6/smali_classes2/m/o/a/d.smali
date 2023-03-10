.class public final Lm/o/a/d;
.super Ljava/lang/Object;
.source "OnSubscribeMap.java"

# interfaces
.implements Lm/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/o/a/d$a;
    }
.end annotation

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
.field public final a:Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lm/n/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/n/c<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm/e;Lm/n/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/e<",
            "TT;>;",
            "Lm/n/c<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm/o/a/d;->a:Lm/e;

    .line 3
    iput-object p2, p0, Lm/o/a/d;->b:Lm/n/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lm/j;

    .line 2
    new-instance v0, Lm/o/a/d$a;

    iget-object v1, p0, Lm/o/a/d;->b:Lm/n/c;

    invoke-direct {v0, p1, v1}, Lm/o/a/d$a;-><init>(Lm/j;Lm/n/c;)V

    .line 3
    invoke-virtual {p1, v0}, Lm/j;->b(Lm/k;)V

    .line 4
    iget-object p1, p0, Lm/o/a/d;->a:Lm/e;

    invoke-virtual {p1, v0}, Lm/e;->f(Lm/j;)Lm/k;

    return-void
.end method
