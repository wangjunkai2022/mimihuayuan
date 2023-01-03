.class public final Lk/a/g/d$v;
.super Lk/a/g/d;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "v"
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
    .locals 0

    .line 1
    iget-object p1, p2, Lk/a/e/l;->a:Lk/a/e/l;

    check-cast p1, Lk/a/e/h;

    if-eqz p1, :cond_0

    .line 2
    instance-of p1, p1, Lk/a/e/f;

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lk/a/e/h;->G()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ":first-child"

    return-object v0
.end method
