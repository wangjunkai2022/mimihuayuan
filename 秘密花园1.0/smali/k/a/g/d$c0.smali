.class public Lk/a/g/d$c0;
.super Lk/a/g/d$o;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c0"
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
    .locals 4

    .line 1
    iget-object p1, p2, Lk/a/e/l;->a:Lk/a/e/l;

    check-cast p1, Lk/a/e/h;

    .line 2
    invoke-virtual {p1}, Lk/a/e/h;->D()Lk/a/g/c;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/e/h;

    .line 4
    iget-object v2, v1, Lk/a/e/h;->c:Lk/a/f/h;

    iget-object v3, p2, Lk/a/e/h;->c:Lk/a/f/h;

    .line 5
    invoke-virtual {v2, v3}, Lk/a/f/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    if-ne v1, p2, :cond_0

    :cond_2
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "nth-of-type"

    return-object v0
.end method
