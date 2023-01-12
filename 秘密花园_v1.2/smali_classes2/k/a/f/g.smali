.class public Lk/a/f/g;
.super Ljava/lang/Object;
.source "Parser.java"


# instance fields
.field public a:Lk/a/f/e;

.field public b:Lk/a/f/f;


# direct methods
.method public constructor <init>(Lk/a/f/m;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    check-cast p1, Lk/a/f/b;

    .line 3
    sget-object p1, Lk/a/f/f;->c:Lk/a/f/f;

    .line 4
    iput-object p1, p0, Lk/a/f/g;->b:Lk/a/f/f;

    .line 5
    new-instance p1, Lk/a/f/e;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Lk/a/f/e;-><init>(II)V

    .line 6
    iput-object p1, p0, Lk/a/f/g;->a:Lk/a/f/e;

    return-void
.end method
