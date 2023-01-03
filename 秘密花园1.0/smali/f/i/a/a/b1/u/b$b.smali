.class public final Lf/i/a/a/b1/u/b$b;
.super Ljava/lang/Object;
.source "AtomParsers.java"

# interfaces
.implements Lf/i/a/a/b1/u/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/b1/u/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lf/i/a/a/m1/u;


# direct methods
.method public constructor <init>(Lf/i/a/a/b1/u/a$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lf/i/a/a/b1/u/a$b;->g1:Lf/i/a/a/m1/u;

    iput-object p1, p0, Lf/i/a/a/b1/u/b$b;->c:Lf/i/a/a/m1/u;

    const/16 v0, 0xc

    .line 3
    invoke-virtual {p1, v0}, Lf/i/a/a/m1/u;->A(I)V

    .line 4
    iget-object p1, p0, Lf/i/a/a/b1/u/b$b;->c:Lf/i/a/a/m1/u;

    invoke-virtual {p1}, Lf/i/a/a/m1/u;->s()I

    move-result p1

    iput p1, p0, Lf/i/a/a/b1/u/b$b;->a:I

    .line 5
    iget-object p1, p0, Lf/i/a/a/b1/u/b$b;->c:Lf/i/a/a/m1/u;

    invoke-virtual {p1}, Lf/i/a/a/m1/u;->s()I

    move-result p1

    iput p1, p0, Lf/i/a/a/b1/u/b$b;->b:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget v0, p0, Lf/i/a/a/b1/u/b$b;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lf/i/a/a/b1/u/b$b;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lf/i/a/a/b1/u/b$b;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/i/a/a/b1/u/b$b;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v0}, Lf/i/a/a/m1/u;->s()I

    move-result v0

    :cond_0
    return v0
.end method
