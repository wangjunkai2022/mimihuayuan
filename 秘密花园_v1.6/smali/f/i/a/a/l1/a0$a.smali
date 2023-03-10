.class public abstract Lf/i/a/a/l1/a0$a;
.super Ljava/lang/Object;
.source "HttpDataSource.java"

# interfaces
.implements Lf/i/a/a/l1/a0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/l1/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final a:Lf/i/a/a/l1/a0$f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/i/a/a/l1/a0$f;

    invoke-direct {v0}, Lf/i/a/a/l1/a0$f;-><init>()V

    iput-object v0, p0, Lf/i/a/a/l1/a0$a;->a:Lf/i/a/a/l1/a0$f;

    return-void
.end method


# virtual methods
.method public abstract a(Lf/i/a/a/l1/a0$f;)Lf/i/a/a/l1/a0;
.end method

.method public createDataSource()Lf/i/a/a/l1/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/a0$a;->a:Lf/i/a/a/l1/a0$f;

    invoke-virtual {p0, v0}, Lf/i/a/a/l1/a0$a;->a(Lf/i/a/a/l1/a0$f;)Lf/i/a/a/l1/a0;

    move-result-object v0

    return-object v0
.end method
