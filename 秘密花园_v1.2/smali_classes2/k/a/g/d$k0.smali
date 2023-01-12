.class public final Lk/a/g/d$k0;
.super Lk/a/g/d;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k0"
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/a/g/d;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/g/d$k0;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lk/a/e/h;Lk/a/e/h;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lk/a/e/h;->c:Lk/a/f/h;

    .line 2
    iget-object p1, p1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 3
    iget-object p2, p0, Lk/a/g/d$k0;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lk/a/g/d$k0;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
