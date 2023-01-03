.class public Lf/d/a/o/n/v$a;
.super Ljava/lang/Object;
.source "LockedResource.java"

# interfaces
.implements Lf/d/a/u/j/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/o/n/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d/a/u/j/a$b<",
        "Lf/d/a/o/n/v<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lf/d/a/o/n/v;

    invoke-direct {v0}, Lf/d/a/o/n/v;-><init>()V

    return-object v0
.end method
