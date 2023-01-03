.class public abstract Lk/a/f/i;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/f/i$j;,
        Lk/a/f/i$e;,
        Lk/a/f/i$h;,
        Lk/a/f/i$g;,
        Lk/a/f/i$d;,
        Lk/a/f/i$b;,
        Lk/a/f/i$c;,
        Lk/a/f/i$f;,
        Lk/a/f/i$i;
    }
.end annotation


# instance fields
.field public a:Lk/a/f/i$j;


# direct methods
.method public constructor <init>(Lk/a/f/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static h(Ljava/lang/StringBuilder;)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/f/i;->a:Lk/a/f/i$j;

    sget-object v1, Lk/a/f/i$j;->e:Lk/a/f/i$j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/f/i;->a:Lk/a/f/i$j;

    sget-object v1, Lk/a/f/i$j;->d:Lk/a/f/i$j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/f/i;->a:Lk/a/f/i$j;

    sget-object v1, Lk/a/f/i$j;->a:Lk/a/f/i$j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/f/i;->a:Lk/a/f/i$j;

    sget-object v1, Lk/a/f/i$j;->f:Lk/a/f/i$j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/f/i;->a:Lk/a/f/i$j;

    sget-object v1, Lk/a/f/i$j;->c:Lk/a/f/i$j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/f/i;->a:Lk/a/f/i$j;

    sget-object v1, Lk/a/f/i$j;->b:Lk/a/f/i$j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract g()Lk/a/f/i;
.end method
