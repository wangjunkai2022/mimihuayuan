.class public final Lk/a/g/d$f0;
.super Lk/a/g/d;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f0"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/a/g/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/a/e/h;Lk/a/e/h;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lk/a/e/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lk/a/e/h;->C()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/a/e/h;

    :cond_0
    if-ne p2, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ":root"

    return-object v0
.end method
