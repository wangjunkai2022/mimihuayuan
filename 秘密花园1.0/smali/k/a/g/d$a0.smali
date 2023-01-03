.class public final Lk/a/g/d$a0;
.super Lk/a/g/d$o;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a0"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lk/a/g/d$o;-><init>(II)V

    return-void
.end method


# virtual methods
.method public b(Lk/a/e/h;Lk/a/e/h;)I
    .locals 0

    .line 1
    iget-object p1, p2, Lk/a/e/l;->a:Lk/a/e/l;

    check-cast p1, Lk/a/e/h;

    .line 2
    invoke-virtual {p1}, Lk/a/e/h;->D()Lk/a/g/c;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2}, Lk/a/e/h;->G()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "nth-last-child"

    return-object v0
.end method
