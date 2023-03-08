.class public final Lf/i/a/a/b1/u/b$c;
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
    name = "c"
.end annotation


# instance fields
.field public final a:Lf/i/a/a/m1/u;

.field public final b:I

.field public final c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Lf/i/a/a/b1/u/a$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lf/i/a/a/b1/u/a$b;->g1:Lf/i/a/a/m1/u;

    iput-object p1, p0, Lf/i/a/a/b1/u/b$c;->a:Lf/i/a/a/m1/u;

    const/16 v0, 0xc

    .line 3
    invoke-virtual {p1, v0}, Lf/i/a/a/m1/u;->A(I)V

    .line 4
    iget-object p1, p0, Lf/i/a/a/b1/u/b$c;->a:Lf/i/a/a/m1/u;

    invoke-virtual {p1}, Lf/i/a/a/m1/u;->s()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lf/i/a/a/b1/u/b$c;->c:I

    .line 5
    iget-object p1, p0, Lf/i/a/a/b1/u/b$c;->a:Lf/i/a/a/m1/u;

    invoke-virtual {p1}, Lf/i/a/a/m1/u;->s()I

    move-result p1

    iput p1, p0, Lf/i/a/a/b1/u/b$c;->b:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lf/i/a/a/b1/u/b$c;->b:I

    return v0
.end method

.method public c()I
    .locals 2

    .line 1
    iget v0, p0, Lf/i/a/a/b1/u/b$c;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/b1/u/b$c;->a:Lf/i/a/a/m1/u;

    invoke-virtual {v0}, Lf/i/a/a/m1/u;->p()I

    move-result v0

    return v0

    :cond_0
    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lf/i/a/a/b1/u/b$c;->a:Lf/i/a/a/m1/u;

    invoke-virtual {v0}, Lf/i/a/a/m1/u;->u()I

    move-result v0

    return v0

    .line 4
    :cond_1
    iget v0, p0, Lf/i/a/a/b1/u/b$c;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lf/i/a/a/b1/u/b$c;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lf/i/a/a/b1/u/b$c;->a:Lf/i/a/a/m1/u;

    invoke-virtual {v0}, Lf/i/a/a/m1/u;->p()I

    move-result v0

    iput v0, p0, Lf/i/a/a/b1/u/b$c;->e:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    .line 6
    :cond_2
    iget v0, p0, Lf/i/a/a/b1/u/b$c;->e:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method
