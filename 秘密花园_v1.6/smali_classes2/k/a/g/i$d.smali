.class public Lk/a/g/i$d;
.super Lk/a/g/i;
.source "StructuralEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/g/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
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
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/g/i;->a:Lk/a/g/d;

    invoke-virtual {v0, p1, p2}, Lk/a/g/d;->a(Lk/a/e/h;Lk/a/e/h;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lk/a/g/i;->a:Lk/a/g/d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ":not%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
