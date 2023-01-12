.class public final Lh/s/e;
.super Lh/o/c/h;
.source "Strings.kt"

# interfaces
.implements Lh/o/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh/o/c/h;",
        "Lh/o/b/c<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Integer;",
        "Lh/c<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:[C

.field public final synthetic b:Z


# direct methods
.method public constructor <init>([CZ)V
    .locals 0

    iput-object p1, p0, Lh/s/e;->a:[C

    iput-boolean p2, p0, Lh/s/e;->b:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lh/o/c/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-object v1, p0, Lh/s/e;->a:[C

    iget-boolean v2, p0, Lh/s/e;->b:Z

    invoke-static {p1, v1, p2, v2}, Lh/s/d;->k(Ljava/lang/CharSequence;[CIZ)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 2
    new-instance v0, Lh/c;

    invoke-direct {v0, p1, p2}, Lh/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_1
    const-string p1, "$receiver"

    .line 3
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method
