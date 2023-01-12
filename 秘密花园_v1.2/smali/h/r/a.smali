.class public final Lh/r/a;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lh/r/c;
.implements Lh/r/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lh/r/c<",
        "TT;>;",
        "Lh/r/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lh/r/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/r/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:I


# direct methods
.method public constructor <init>(Lh/r/c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/r/c<",
            "+TT;>;I)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/r/a;->a:Lh/r/c;

    iput p2, p0, Lh/r/a;->b:I

    if-ltz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    const-string p1, "count must be non-negative, but was "

    .line 2
    invoke-static {p1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lh/r/a;->b:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const-string p1, "sequence"

    .line 3
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public a(I)Lh/r/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lh/r/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lh/r/a;->b:I

    add-int/2addr v0, p1

    if-gez v0, :cond_0

    new-instance v0, Lh/r/a;

    invoke-direct {v0, p0, p1}, Lh/r/a;-><init>(Lh/r/c;I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lh/r/a;

    iget-object v1, p0, Lh/r/a;->a:Lh/r/c;

    invoke-direct {p1, v1, v0}, Lh/r/a;-><init>(Lh/r/c;I)V

    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lh/r/a$a;

    invoke-direct {v0, p0}, Lh/r/a$a;-><init>(Lh/r/a;)V

    return-object v0
.end method
