.class public Lk/a/g/i$a;
.super Lk/a/g/i;
.source "StructuralEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/g/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lk/a/g/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/a/g/i;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/g/i;->a:Lk/a/g/d;

    return-void
.end method


# virtual methods
.method public a(Lk/a/e/h;Lk/a/e/h;)Z
    .locals 2

    if-eqz p2, :cond_2

    .line 1
    new-instance p1, Lk/a/g/d$a;

    invoke-direct {p1}, Lk/a/g/d$a;-><init>()V

    invoke-static {p1, p2}, Lj/b;->j(Lk/a/g/d;Lk/a/e/h;)Lk/a/g/c;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/e/h;

    if-eq v0, p2, :cond_0

    .line 3
    iget-object v1, p0, Lk/a/g/i;->a:Lk/a/g/d;

    invoke-virtual {v1, p2, v0}, Lk/a/g/d;->a(Lk/a/e/h;Lk/a/e/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lk/a/g/i;->a:Lk/a/g/d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ":has(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
