.class public final Lm/o/a/g;
.super Ljava/lang/Object;
.source "OperatorMerge.java"

# interfaces
.implements Lm/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/o/a/g$b;,
        Lm/o/a/g$d;,
        Lm/o/a/g$c;,
        Lm/o/a/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lm/e$b<",
        "TT;",
        "Lm/e<",
        "+TT;>;>;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lm/o/a/g;->a:Z

    .line 3
    iput p2, p0, Lm/o/a/g;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lm/j;

    .line 2
    new-instance v0, Lm/o/a/g$d;

    iget-boolean v1, p0, Lm/o/a/g;->a:Z

    iget v2, p0, Lm/o/a/g;->b:I

    invoke-direct {v0, p1, v1, v2}, Lm/o/a/g$d;-><init>(Lm/j;ZI)V

    .line 3
    new-instance v1, Lm/o/a/g$c;

    invoke-direct {v1, v0}, Lm/o/a/g$c;-><init>(Lm/o/a/g$d;)V

    .line 4
    iput-object v1, v0, Lm/o/a/g$d;->h:Lm/o/a/g$c;

    .line 5
    iget-object v2, p1, Lm/j;->a:Lm/o/d/g;

    invoke-virtual {v2, v0}, Lm/o/d/g;->b(Lm/k;)V

    .line 6
    invoke-virtual {p1, v1}, Lm/j;->i(Lm/f;)V

    return-object v0
.end method
