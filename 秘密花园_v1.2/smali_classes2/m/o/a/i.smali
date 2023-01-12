.class public final Lm/o/a/i;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Lm/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/o/a/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lm/e$b<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lm/g;

.field public final b:Z

.field public final c:I


# direct methods
.method public constructor <init>(Lm/g;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm/o/a/i;->a:Lm/g;

    .line 3
    iput-boolean p2, p0, Lm/o/a/i;->b:Z

    if-lez p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget p3, Lm/o/d/b;->c:I

    :goto_0
    iput p3, p0, Lm/o/a/i;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lm/j;

    .line 2
    iget-object v0, p0, Lm/o/a/i;->a:Lm/g;

    .line 3
    new-instance v1, Lm/o/a/i$a;

    iget-boolean v2, p0, Lm/o/a/i;->b:Z

    iget v3, p0, Lm/o/a/i;->c:I

    invoke-direct {v1, v0, p1, v2, v3}, Lm/o/a/i$a;-><init>(Lm/g;Lm/j;ZI)V

    .line 4
    iget-object p1, v1, Lm/o/a/i$a;->e:Lm/j;

    .line 5
    new-instance v0, Lm/o/a/h;

    invoke-direct {v0, v1}, Lm/o/a/h;-><init>(Lm/o/a/i$a;)V

    invoke-virtual {p1, v0}, Lm/j;->i(Lm/f;)V

    .line 6
    iget-object v0, v1, Lm/o/a/i$a;->f:Lm/g$a;

    invoke-virtual {p1, v0}, Lm/j;->b(Lm/k;)V

    .line 7
    invoke-virtual {p1, v1}, Lm/j;->b(Lm/k;)V

    return-object v1
.end method
