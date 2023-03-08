.class public Lf/i/a/a/z0/b;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"

# interfaces
.implements Lf/i/a/a/z0/f;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/z0/b$a;,
        Lf/i/a/a/z0/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lf/i/a/a/z0/j;",
        ">",
        "Ljava/lang/Object;",
        "Lf/i/a/a/z0/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lf/i/a/a/z0/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/a/a/z0/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lf/i/a/a/m1/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/a/a/m1/m<",
            "Lf/i/a/a/z0/c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lf/i/a/a/z0/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/a/a/z0/b<",
            "TT;>.b;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:Landroid/os/HandlerThread;

.field public g:Lf/i/a/a/z0/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/a/a/z0/b<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field public h:Lf/i/a/a/z0/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public i:Lf/i/a/a/z0/f$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public j:[B

.field public k:Lf/i/a/a/z0/i$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public l:Lf/i/a/a/z0/i$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# virtual methods
.method public final a()Lf/i/a/a/z0/j;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/z0/b;->h:Lf/i/a/a/z0/j;

    return-object v0
.end method

.method public final b()Lf/i/a/a/z0/f$a;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget v0, p0, Lf/i/a/a/z0/b;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lf/i/a/a/z0/b;->i:Lf/i/a/a/z0/f$a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lf/i/a/a/z0/b;->d:I

    return v0
.end method
