.class public final Ll/r;
.super Lh/o/c/h;
.source "KotlinExtensions.kt"

# interfaces
.implements Lh/o/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh/o/c/h;",
        "Lh/o/b/b<",
        "Ljava/lang/Throwable;",
        "Lh/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll/d;


# direct methods
.method public constructor <init>(Ll/d;)V
    .locals 0

    iput-object p1, p0, Ll/r;->a:Ll/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lh/o/c/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    .line 1
    iget-object p1, p0, Ll/r;->a:Ll/d;

    invoke-interface {p1}, Ll/d;->cancel()V

    .line 2
    sget-object p1, Lh/i;->a:Lh/i;

    return-object p1
.end method
