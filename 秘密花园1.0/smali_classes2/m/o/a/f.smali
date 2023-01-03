.class public Lm/o/a/f;
.super Ljava/lang/Object;
.source "OnSubscribeSingle.java"

# interfaces
.implements Lm/h$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lm/h$a<",
        "TT;>;"
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


# direct methods
.method public constructor <init>(Lm/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/e<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm/o/a/f;->a:Lm/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lm/i;

    .line 2
    new-instance v0, Lm/o/a/e;

    invoke-direct {v0, p0, p1}, Lm/o/a/e;-><init>(Lm/o/a/f;Lm/i;)V

    .line 3
    iget-object p1, p1, Lm/i;->a:Lm/o/d/g;

    invoke-virtual {p1, v0}, Lm/o/d/g;->b(Lm/k;)V

    .line 4
    iget-object p1, p0, Lm/o/a/f;->a:Lm/e;

    invoke-virtual {p1, v0}, Lm/e;->f(Lm/j;)Lm/k;

    return-void
.end method
